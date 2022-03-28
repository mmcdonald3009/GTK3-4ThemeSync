# GTK3-4ThemeSync
Auto Trigger gsettings set From Appearance To Sync GTK3 With GTK4 Styles

Requires inotifywait to be installed.

Place a .desktop file in /etc/xdg/autostart/ that calls the bash script which runs in an inotifywait loop monitoring changes in the dconf database.

Whenever changes are detected acheck is made for which GTK4 style is applied and triggers a matching gsettings set call to Adwaita.
Not perfect but works well enough.

This script here (you can remove it) also disables Show Hidden Files in Nautilus.

At any time to stop this loop, open a terminal and # killall inotifywait

You might be using a shell extension theme instead of that rather bland Activities button, you can gsettings set that too - it is show here as well.
