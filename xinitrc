if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

xrdb -merge ~/X11/Xresources
setxkbmap -option compose:caps
xset -b
eval $(gpg-agent --daemon)
eval $(ssh-agent)
#exec /usr/bin/i3 -V -d all >> ~/.i3/logfile
exec /usr/bin/i3
