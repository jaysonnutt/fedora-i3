#!/bin/bash

cp ~/.config/i3/config .
cp ~/.bashrc .
cp ~/.config/nvim/init.lua .
cp ~/.Xclients .

git add .
git commit -m "update"
git push

