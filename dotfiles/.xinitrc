#!/bin/sh
#
# ~/.xinitrc

# currently not in use
xrandr --output HDMI1 --mode 1920x1080 --left-of LVDS1 &
#xrandr --output LVDS1 --mode 1366x768 &

# sets DE env var
export DE="xfce"

# set wallpaper
hsetroot -tile /home/poltak/Pictures/wallpaper/iss02.jpg &

# set keybindings
xbindkeys &

# urxvt stuff
xrdb -merge ~/.Xresources &
urxvtd &

# start dropbox
dropbox start &

# set cursor to hide when not in use
unclutter -idle 1 &

# start flux
xflux -l 37.8 -g 144.9 &

# change wm name for java apps
wmname LG3D &

# stop that damn pc speaker beep
amixer set 'Beep' 0% mute &

# run user instance of systemd for user services
systemd --user &

exec i3
