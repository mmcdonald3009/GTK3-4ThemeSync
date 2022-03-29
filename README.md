# GTK3-4ThemeSync

Auto Trigger "gsettings set" When Changing Between Dark/Light Appearance in Gnome Settings To The Effect Sync GTK3 and GTK4 Styles

Requires inotify-tools to be installed.

Place login.desktop file in /etc/xdg/autostart/ that calls the script which runs in an inotifywait loop monitoring changes in the dconf database.
Put the script anywhere you like and change the Exec= path to match.

Whenever Appearance Light/Dark change (or anything which alters the dconf database actually) is made a gsettings get check is made for which style is applied and triggers a matching gsettings set call to Adwaita or Adwaita-dark.

It's not perfect but it works.It changes Gedit, Evolution, Firefox and Chrome appearance now as well GTK4 apps from Gnome 42 onwards.

This script here for example (you can remove the lines if you want ) also disables Show Hidden Files in Nautilus.

At any time to stop this loop, open a terminal and type # killall inotifywait

You might be using a shell extension theme instead of that rather bland Activities button, you can gsettings set that too - this is show here as well.
