#!/bin/sh

test -n "$DESKTOP_AUTOSTART_ID" && {
	dbus-send --print-reply --session --dest=org.gnome.SessionManager "/org/gnome/SessionManager" org.gnome.SessionManager.RegisterClient "string:gnome-flashback-dwm" "string:$DESKTOP_AUTOSTART_ID"
}

xsetroot -solid "#444444" &
slstatus &
dwm

test -n "$DESKTOP_AUTOSTART_ID" && {
    dbus-send --print-reply --session --dest=org.gnome.SessionManager "/org/gnome/SessionManager" org.gnome.SessionManager.Logout "uint32:1"
}

