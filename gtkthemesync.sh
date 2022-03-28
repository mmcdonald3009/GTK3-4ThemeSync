if ! pidof inotifywait;then
inotifywait --quiet --monitor --event close_write ~/.config/dconf/ | while read; do

dconf write /org/gtk/settings/file-chooser/show-hidden false

colorscheme=$(gsettings get org.gnome.desktop.interface color-scheme);
gtktheme=$(gsettings get org.gnome.desktop.interface gtk-theme);



if [ $colorscheme = "'prefer-dark'" ]; then
if [ ! $gtktheme = "'Adwaita-dark'" ]; then
gsettings set org.gnome.desktop.interface gtk-theme 'Adwaita-dark'
gsettings set org.gnome.shell.extensions.user-theme name 'CustomDark'
fi
fi


if [ $colorscheme = "'default'" ]; then
if [ ! $gtktheme = "'Adwaita'" ]; then
gsettings set org.gnome.desktop.interface gtk-theme 'Adwaita'
gsettings set org.gnome.shell.extensions.user-theme name 'CustomLight'
fi
fi

done
fi
