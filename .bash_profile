#  $HOME/.bash_profile

#  Correct PATH variable (Debian)
PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin


#  LXDE plank setting
export XDG_SESSION_CLASS='user'

PATH=$PATH:~/scripts

#  Database settings
#  export DB_HOME=/opt/hsqldb
#  PATH=$PATH:$DB_HOME/bin

export LANG=C
export GREP_COLOR='1;33'

#  Get the aliases and set PS1
if [ -f ~/.bashrc ]
then
  . ~/.bashrc
fi

#  /etc/lsb-release (Ubuntu)
if [ ! -f /etc/redhat-release ]
then
  eval "$(dircolors ~/.dir_colors)"
fi

#  Setup the database login credentials
if [ -f ~/.dblogin ]
then
  . ~/.dblogin
fi

# XScreenSaver off
if [ -n "$DISPLAY" ]
then
  xset s off
  xset s noblank
  xset -dpms
fi

export PATH

