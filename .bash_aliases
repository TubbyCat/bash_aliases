##Copyright (C) 2022-2023 TUbbyCat 
##See the files CREDIT and GPLv3 for contitions pertaining to copyright and/or modification of the contents of this work.

## WIP ##


## ALERTS
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo ERR)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

## NAVIGATION
  #Home Directory Nav
alias desktop='cd ~/Desktop'
#alias desk='cd ~/Desktop'
alias downs='cd ~/Downloads'
alias docs='cd ~/Documents'
alias picts='cd ~/Pictures'
alias vids='cd ~/Videos'
# Alternate Example: alias ~v='cd ~/Videos'

 #Backward Navigation in Directories
alias ..='cd ..'
alias .1='cd ..'
alias .2='cd ../..'
alias .3='cd ../../..'

 #mkdir create parent dirs
alias mkdir='mkdir -v'

## Terminal Misc
alias cls='clear'
alias history-off='set +o history' #disables history in current shell. useful for reducing clutter in .bash_history
alias untar='tar -xvf'

 # List (ls)
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CFl'



