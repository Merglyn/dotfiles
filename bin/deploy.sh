#!/bin/bash

cp=/bin/cp
pwd=/usr/bin/pwd
mkdir=/usr/bin/mkdir

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && $pwd )

$mkdir -p ~/.config/bspwm
$cp $DIR/bspwm/* ~/.config/bspwm/.
$mkdir -p ~/.config/sxhkd
$cp ~/.config/bspwm/sxhkdrc ~/.config/sxhkd/.
$mkdir -p ~/.config/fish/functions
$cp $DIR/fish/fish_prompt.fish ~/.config/fish/functions/.
$mkdir -p ~/.config/lighthouse
$cp $DIR/lighthouse/* ~/.config/lighthouse/.
