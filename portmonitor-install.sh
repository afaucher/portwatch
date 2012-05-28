#!/bin/sh

sudo apt-get install python-feedparser
sudo xdg-icon-resource install --theme ubuntu-mono-dark --novendor --size 22 dark/indicator-upnproutermonitor.png indicator-upnproutermonitor
sudo xdg-icon-resource install --theme ubuntu-mono-dark --novendor --size 22 dark/indicator-upnproutermonitor-attention.png indicator-upnproutermonitor-attention
sudo xdg-icon-resource install --theme ubuntu-mono-light --novendor --size 22 light/indicator-upnproutermonitor.png indicator-upnproutermonitor
sudo xdg-icon-resource install --theme ubuntu-mono-light --novendor --size 22 light/indicator-upnproutermonitor-attention.png indicator-upnproutermonitor-attention
sudo xdg-icon-resource install --theme hicolor --novendor --size 22 hicolor/indicator-upnproutermonitor.png indicator-upnproutermonitor
sudo xdg-icon-resource install --theme hicolor --novendor --size 22 hicolor/indicator-upnproutermonitor-attention.png indicator-upnproutermonitor-attention
sudo xdg-icon-resource install --theme hicolor --novendor --size 128 --context apps upnproutermonitor-logo.png upnproutermonitor
sudo xdg-icon-resource install --theme hicolor --novendor --size 48 --context apps upnproutermonitor-48x48.png upnproutermonitor

sudo xdg-desktop-menu install --novendor upnproutermonitor.desktop

if [ ! -d /usr/share/upnproutermonitor/ ]
then
sudo mkdir /usr/share/upnproutermonitor
fi

sudo cp upnproutermonitor-icon.png /usr/share/upnproutermonitor/upnproutermonitor-icon.png
sudo cp upnproutermonitor-logo.png /usr/share/upnproutermonitor/upnproutermonitor-logo.png

sudo cp upnproutermonitor /usr/bin/upnproutermonitor
sudo chmod +x /usr/bin/upnproutermonitor

MESSAGE="Feedindicator install completed..."
echo $MESSAGE

