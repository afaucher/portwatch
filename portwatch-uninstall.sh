#!/bin/sh

sudo xdg-icon-resource uninstall --theme ubuntu-mono-dark --size 22 indicator-portwatch
sudo xdg-icon-resource uninstall --theme ubuntu-mono-dark --size 22 indicator-portwatch-attention
sudo xdg-icon-resource uninstall --theme ubuntu-mono-light --size 22 indicator-portwatch
sudo xdg-icon-resource uninstall --theme ubuntu-mono-light --size 22 indicator-portwatch-attention
sudo xdg-icon-resource uninstall --theme hicolor --size 22 indicator-portwatch
sudo xdg-icon-resource uninstall --theme hicolor --size 22 indicator-portwatch-attention
sudo xdg-icon-resource uninstall --theme hicolor --size 128 --context apps portwatch
sudo xdg-icon-resource uninstall --theme hicolor --size 48 --context apps portwatch

sudo xdg-desktop-menu uninstall portwatch.desktop

sudo unlink /usr/bin/portwatch

sudo unlink /usr/share/portwatch/portwatch-icon.png
sudo unlink /usr/share/portwatch/portwatch-logo.png

sudo rmdir /usr/share/portwatch

[ ! "$XDG_CACHE_HOME" ] && XDG_CACHE_HOME=~/.cache
cachedir="$XDG_CACHE_HOME"/portwatch
[ ! "$XDG_CONFIG_HOME" ] && XDG_CONFIG_HOME=~/.config
configdir="$XDG_CONFIG_HOME"/portwatch
autostartfile="$XDG_CONFIG_HOME"/autostart/portwatch.desktop

if [ -f "$autostartfile" ]
then
unlink "$autostartfile"
fi

if [ -d "$configdir" ]
then
rm -r "$configdir"
fi

if [ -d "$cachedir" ]
then
rm -r "$cachedir"
fi

MESSAGE="PortWatch uninstall completed..."
echo $MESSAGE

