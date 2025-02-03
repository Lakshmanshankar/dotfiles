vim.g.base46_cache = vim.fn.stdpath "data" .. "/nvchad/base46/"
vim.g.mapleader = " "
-- bootstrap lazy and all plugins
local lazypath = vim.fn.stdpath "data" .. "/lazy/lazy.nvim"

if not vim.uv.fs_stat(lazypath) then
    local repo = "https://github.com/folke/lazy.nvim.git"
    vim.fn.system { "git", "clone", "--filter=blob:none", repo, "--branch=stable", lazypath }
end

vim.opt.rtp:prepend(lazypath)

local lazy_config = require "configs.lazy"

-- load plugins
require("lazy").setup({
    {
        "NvChad/NvChad",
        lazy = false,
        branch = "v2.5",
        import = "nvchad.plugins",
    },

    { import = "plugins" },
}, lazy_config)

-- load theme
dofile(vim.g.base46_cache .. "defaults")
dofile(vim.g.base46_cache .. "statusline")

require "options"
require "nvchad.autocmds"

vim.schedule(function()
    require "mappings"
end)

-- Autocompile C++ files on save
vim.api.nvim_create_autocmd("BufWritePost", {
    pattern = "*.cpp",
    callback = function()
        local filename = vim.fn.expand "%:p"
        local output = vim.fn.expand "%:p:r"
        local compile_command = string.format("g++ -std=c++17 %s -o %s", filename, output)

        vim.fn.jobstart(compile_command, {
            on_exit = function(_, exit_code)
                if exit_code == 0 then
                    print "Compilation successful!"
                else
                    print "Compilation failed."
                end
            end,
            stdout_buffered = true,
            stderr_buffered = true,
        })
    end,
})
