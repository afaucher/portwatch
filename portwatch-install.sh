#!/bin/sh

sudo apt-get install miniupnpc
sudo xdg-icon-resource install --theme ubuntu-mono-dark --novendor --size 22 dark/indicator-portwatch.png indicator-portwatch
sudo xdg-icon-resource install --theme ubuntu-mono-dark --novendor --size 22 dark/indicator-portwatch-attention.png indicator-portwatch-attention
sudo xdg-icon-resource install --theme ubuntu-mono-light --novendor --size 22 light/indicator-portwatch.png indicator-portwatch
sudo xdg-icon-resource install --theme ubuntu-mono-light --novendor --size 22 light/indicator-portwatch-attention.png indicator-portwatch-attention
sudo xdg-icon-resource install --theme hicolor --novendor --size 22 hicolor/indicator-portwatch.png indicator-portwatch
sudo xdg-icon-resource install --theme hicolor --novendor --size 22 hicolor/indicator-portwatch-attention.png indicator-portwatch-attention
sudo xdg-icon-resource install --theme hicolor --novendor --size 128 --context apps portwatch-logo.png portwatch
sudo xdg-icon-resource install --theme hicolor --novendor --size 48 --context apps portwatch-48x48.png portwatch

sudo xdg-desktop-menu install --novendor portwatch.desktop

if [ ! -d /usr/share/portwatch/ ]
then
sudo mkdir /usr/share/portwatch
fi

sudo cp portwatch-icon.png /usr/share/portwatch/portwatch-icon.png
sudo cp portwatch-logo.png /usr/share/portwatch/portwatch-logo.png

sudo cp portwatch /usr/bin/portwatch
sudo chmod +x /usr/bin/portwatch

MESSAGE="PortWatch install completed..."
echo $MESSAGE

