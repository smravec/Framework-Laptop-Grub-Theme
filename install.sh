#!/bin/sh

#Tested only on Arch Linux, on other distros not guranteed to work

function copy_theme_content(){
	sudo cp -r ./framework-theme /usr/share/grub/themes/
}

function edit_grub_config(){
	
	sudo echo "GRUB_THEME=/usr/share/grub/themes/framework-theme/theme.txt" >> /etc/default/grub

	sudo grub-mkconfig -o /boot/grub/grub.cfg
}

echo "installing theme..."

copy_theme_content
edit_grub_config

echo "theme installed"
