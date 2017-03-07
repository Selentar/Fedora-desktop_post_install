#!/bin/bash

echo -e "\n!!_ Плагины для Gnome \n"
firefox https://extensions.gnome.org/extension/750/openweather/ https://extensions.gnome.org/extension/442/drop-down-terminal/ https://extensions.gnome.org/extension/120/system-monitor/ https://extensions.gnome.org/extension/1161/show-ip/

echo -e "\n!!_ Flash для Firefox\n"
dnf -y install flash-plugin freshplayerplugin

echo -e "\n!!_ Плагины \n"
# поддержка djvu формата
# rar архивов
# открытие директории в консоле для nautilus
dnf -y install evince-djvu unar gnome-terminal-nautilus

echo -e "\n!!_ Программы \n"
dnf -y install gnome-tweak-tool workrave workrave-xfce telegram-desktop qbittorrent


