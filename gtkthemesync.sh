#### THIS TESTED ON openSUSE TUMBLEWEED, SEE NEXT BELOW FOR AN UBUNTU SOLUTION - USE one or the other...


### USE THIS ONE FOR openSUSE ###

if ! pidof inotifywait;then
inotifywait --quiet --monitor --event close_write ~/.config/dconf/ | while read; do

dconf write /org/gtk/settings/file-chooser/show-hidden false

appearance=$(gsettings get org.gnome.desktop.interface color-scheme);
gtktheme=$(gsettings get org.gnome.desktop.interface gtk-theme);



if [ $appearance = "'prefer-dark'" ]; then
if [ ! $gtktheme = "'Adwaita-dark'" ]; then
gsettings set org.gnome.desktop.interface gtk-theme 'Adwaita-dark'
gsettings set org.gnome.shell.extensions.user-theme name 'CustomDark'
fi
fi


if [ $appearance = "'default'" ]; then
if [ ! $gtktheme = "'Adwaita'" ]; then
gsettings set org.gnome.desktop.interface gtk-theme 'Adwaita'
gsettings set org.gnome.shell.extensions.user-theme name 'CustomLight'
fi
fi

done
fi

### END openSUSE ###


### USE THIS FOR UBUNTU 22.04 ###

if ! pidof inotifywait; then
while inotifywait -e modify ~/.config/dconf; do

dconf write /org/gtk/settings/file-chooser/show-hidden false

done
fi

### END UBUNTU 22.04 ###

