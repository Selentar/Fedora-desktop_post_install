#!/bin/bash

echo -e "\n\n\n!!_ Обновление и загрузка языкового пакета\n\n"
dnf install langpacks-ru -y

echo -e "\n\n\n!!_ Подключение сторонних репозиториев\n\n"
#RPMFUSION
dnf install http://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm -y
dnf install http://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm -y
#RussianFedora
dnf install --nogpgcheck http://mirror.yandex.ru/fedora/russianfedora/russianfedora/free/fedora/russianfedora-free-release-stable.noarch.rpm http://mirror.yandex.ru/fedora/russianfedora/russianfedora/nonfree/fedora/russianfedora-nonfree-release-stable.noarch.rpm -y

echo -e "\n\n\n!!_ Весь список репозиториев\n\n"
yum repolist

sleep 10

echo -e "\n\n\n!!_ Обновление системы\n\n"
dnf update -y

reboot
