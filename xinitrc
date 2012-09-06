xrdb -merge ~/X11/Xresources
setxkbmap -option compose:rwin
xset -b
eval $(gpg-agent --daemon)
eval $(ssh-agent)
#exec /usr/bin/i3 -V -d all >> ~/.i3/logfile
exec /usr/bin/i3
