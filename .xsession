PATH=/usr/X11R6/bin:/usr/local/bin:$PATH
export LANG=en_US.UTF-8
export LC_CTYPE="en_US.UTF-8"
export ENV=$HOME/.kshrc
xrdb -merge $HOME/.Xresources


if [ -d /usr/local/share/fonts ]; then
   for i in /usr/local/share/fonts/*; do
       xset fp+ $i
         done
           xset fp rehash
           fi

xidle &
xset b off
sct 3500 &
xbanish &
exec ~/lightmode &
#exec xterm -name batbar -class batbar -e "sh ~/batbar" &
sleep 1
#xterm -geometry 98x32 -e "fastfetch; ksh -i" &
#exec cwm
exec xterm -maximized -e "/usr/bin/tmux"
