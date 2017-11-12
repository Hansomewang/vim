#!/bin/bash
echo "安装将花费一定时间，请耐心等待直到安装完成^_^"
sudo apt-get install -y ctags cscope  

cp -R ./.vim ~/.vim
cp ./.vimrc ~/
echo "安装完成"
