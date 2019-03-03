#!/bin/bash

chmod +x gnome-flashback-dwm
chmod +x dwm.sh

sudo ln -s -f -t /usr/share/xsessions/ ${PWD}/gnome-flashback-dwm.desktop
sudo ln -s -f -t /usr/lib/gnome-flashback/ ${PWD}/gnome-flashback-dwm
sudo ln -s -f -t /usr/share/gnome-session/sessions/ ${PWD}/gnome-flashback-dwm.session
sudo ln -s -f -t /usr/share/applications/ ${PWD}/dwm.desktop
sudo ln -s -f -t /usr/local/bin/ ${PWD}/dwm.sh

