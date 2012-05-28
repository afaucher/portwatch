#!/bin/sh

sudo xdg-icon-resource uninstall --theme ubuntu-mono-dark --size 22 indicator-upnproutermonitor
sudo xdg-icon-resource uninstall --theme ubuntu-mono-dark --size 22 indicator-upnproutermonitor-attention
sudo xdg-icon-resource uninstall --theme ubuntu-mono-light --size 22 indicator-upnproutermonitor
sudo xdg-icon-resource uninstall --theme ubuntu-mono-light --size 22 indicator-upnproutermonitor-attention
sudo xdg-icon-resource uninstall --theme hicolor --size 22 indicator-upnproutermonitor
sudo xdg-icon-resource uninstall --theme hicolor --size 22 indicator-upnproutermonitor-attention
sudo xdg-icon-resource uninstall --theme hicolor --size 128 --context apps upnproutermonitor
sudo xdg-icon-resource uninstall --theme hicolor --size 48 --context apps upnproutermonitor

sudo xdg-desktop-menu uninstall upnproutermonitor.desktop

sudo unlink /usr/bin/upnproutermonitor

sudo unlink /usr/share/upnproutermonitor/upnproutermonitor-icon.png
sudo unlink /usr/share/upnproutermonitor/upnproutermonitor-logo.png

sudo rmdir /usr/share/upnproutermonitor

[ ! "$XDG_CACHE_HOME" ] && XDG_CACHE_HOME=~/.cache
cachedir="$XDG_CACHE_HOME"/upnproutermonitor
[ ! "$XDG_CONFIG_HOME" ] && XDG_CONFIG_HOME=~/.config
configdir="$XDG_CONFIG_HOME"/upnproutermonitor
autostartfile="$XDG_CONFIG_HOME"/autostart/upnproutermonitor.desktop

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

MESSAGE="Feedindicator uninstall completed..."
echo $MESSAGE

