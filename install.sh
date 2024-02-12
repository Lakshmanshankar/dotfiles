cp -r ./kitty ~/.config/
cp -r ./nvim ~/.config/
cp -r ~/scripts

cat $(pwd)/tmux/.tmux.conf > ~/.tmux.conf 

cat $(pwd)/zshrc/.zshrc > ~/.zshrc
cat $(pwd)/zshrc/.bashrc > ~/.bashrc
