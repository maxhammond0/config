#!/bin/bash

alacritty=~/.config/alacritty/alacritty.yml
fish=~/.config/fish/
i3=~/.config/i3/
i3blocks=~/.config/i3blocks/
nvim=~/.config/nvim/
tmux=~/.tmux.conf

git add $alacritty $fish $i3 $nvim $tmux $i3blocks
git commit -m $1
git push
