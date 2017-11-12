#!/bin/bash
echo "安装将花费一定时间，请耐心等待直到安装完成^_^"
sudo apt-get install -y ctags cscope  


mv -f ~/vim ~/vim_old
mv -f ~/.vim ~/.vim_old
mv -f ./.vim ~/.vim
mv -f ~/.vimrc ~/.vimrc_old
mv -f ~/.vimrc ~/
echo "安装完成"
