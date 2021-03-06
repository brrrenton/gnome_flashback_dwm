#!/bin/sh

if [ -n "$DESKTOP_AUTOSTART_ID" ]; then
	dbus-send --print-reply --session --dest=org.gnome.SessionManager "/org/gnome/SessionManager" org.gnome.SessionManager.RegisterClient "string:gnome-flashback-dwm" "string:$DESKTOP_AUTOSTART_ID"
fi

hsetroot -solid "#444444" &
xrdb ~/.Xresources &
numlockx &
status.py &
STATUS_PID=$!
dwm

kill $STATUS_PID

if [ -n "$DESKTOP_AUTOSTART_ID" ]; then
    dbus-send --print-reply --session --dest=org.gnome.SessionManager "/org/gnome/SessionManager" org.gnome.SessionManager.Logout "uint32:1"
fi

