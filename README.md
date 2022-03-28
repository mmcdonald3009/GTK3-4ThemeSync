# GTK3-4ThemeSync
Auto Trigger gsettings set From Appearance To Sync GTK3 With GTK4 Styles

Place a .desktop file in /etc/xdg/autostart/ that calls the bash script which runs in an inotifywait loop monitoring changes in the dconf database.

Whenever changes are detected acheck is made for which GTK4 style is applied and triggers a matching gsettings set call to Adwaita.
Not perfect but works well enough.
