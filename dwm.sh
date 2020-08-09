#!/bin/sh

if [ -n "$DESKTOP_AUTOSTART_ID" ]; then
	dbus-send --print-reply --session --dest=org.gnome.SessionManager "/org/gnome/SessionManager" org.gnome.SessionManager.RegisterClient "string:gnome-flashback-dwm" "string:$DESKTOP_AUTOSTART_ID"
fi

xrdb ~/.Xresources
hsetroot -solid "#444444" &
status.py &
dwm

if [ -n "$DESKTOP_AUTOSTART_ID" ]; then
    dbus-send --print-reply --session --dest=org.gnome.SessionManager "/org/gnome/SessionManager" org.gnome.SessionManager.Logout "uint32:1"
fi

