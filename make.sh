# for cat the kitty Conf
# to exectute this script you need tbe at the root of the project /linux-configs 
# ex:
# /home/username/linux-configs$ ./make.sh

# for tmux configs
cp -r ~/.config/kitty/* $(pwd)/kitty/

#  for nvim 
cp -r ~/.config/nvim/* $(pwd)/nvim


# scripts folder
cp -r ~/scripts/* $(pwd)/scripts/

# 
cat ~/.tmux.conf > $(pwd)/tmux/.tmux.conf


cat ~/.zshrc > $(pwd)/zshrc/.zshrc
cat ~/.bashrc > $(pwd)/zshrc/.bashrc

