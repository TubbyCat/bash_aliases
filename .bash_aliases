##Copyright (C) 2022-2023 TUbbyCat 
##See the files CREDIT and GPLv3 for conditions pertaining to copyright 
## Author reserves right to modify this work without forewarning. In pedestrian terms: Rolling. 


### ALERTS ###
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo ERR)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'


### CRYPTOGRAPHY ###
  # Checksums
alias s1s='sha1sum'
alias s2s='sha256sum'
alias s5s='sha512sum'
alias m5s='md5sum'

alias s5h='sha512hmac'
alias s2h='sha256hmac'
alias s1h='sha1hmac'
 
 # GPG PGP
alias gpg-fingerprint='gpg --import --import-options show-only'
 # Alternate: gpg-fp='gpg --import --import-options show-only'
alias g-ver='gpg --verify'
  # e.g. gpg --verify fileA.sign fileA


### NAVIGATION ###
  # Home Directory Nav
alias desktop='cd ~/Desktop'
#alias desk='cd ~/Desktop'
alias downs='cd ~/Downloads'
alias docs='cd ~/Documents'
alias picts='cd ~/Pictures'
alias vids='cd ~/Videos'
# Alternate Example: alias ~v='cd ~/Videos'

 # Backward Navigation in Directories
alias ..='cd ..'
alias .1='cd ..'
alias .2='cd ../..'
alias .3='cd ../../..'

 # Mkdir Create Parent Directories
alias mkdir='mkdir -v'

 # List (ls)
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CFl'

### NETWORKING ###
alias myip='curl ifconfig.co'
alias netlisten='netstat -plntu'
alias pingtest='ping -c 2 google.com'

  # Downloads
alias wgets='wget --https-only --secure-protocol=PFS' # PFS = Perfect Forward Secrecy. 
  # Alternative naming = wget-secure

  #youtube downloads
  #options include yt-dlp or youtube-dl. former is superior as of 2022. opts for both provided.
alias yt-mp3='youtube-dl -i --extract-audio --audio-format=mp3'
alias yt-dlp-mp3='yt-dlp -x --audio-format mp3'
#alias yt-dl='youtube-dl'
alias y-d='yt-dlp'

### PACKAGE MANAGEMENT [MULTIPLE DISTROS - COMMENT OUT AS NEEDED] ###
  # Apt Package Manager
alias aptup='sudo apt-get update && sudo apt-get upgrade'
alias aptin='sudo apt-get install'
alias aptrm='sudo apt-get purge'
alias apt-search='apt-cache search'
alias apt-info='apt show'
alias apt-dep='apt depends'
  # Debsums 
# Install debsums with sudo apt-get install -y debsums
alias debsums='debsums -a -s --ignore-obsolete' ## All & report non-ok results. Can pipe to grep.

  # Dnf
alias dnfup='sudo dnf upgrade'
alias dnfin='sudo dnf install'
alias dnfrm='sudo dnf erase'
alias dnf-search='dnf search'
alias dnf-installed='dnf list --installed'
  # alt: alias dnf-inst='dnf list --installed'
alias dnf-installed-q='dnf list --installed | grep'
 # alt: alias dnf-inst-q='dnf list --installed | grep'

  # Rpm
alias rpmsums="rpm -Va --noconfig | grep '^..5'"
  #rpmsums - cryptographic verification of integrity via rpm. see: debsums package. No equivalent rpm-based package, rather the above function.

 # Flatpak
alias flatup='flatpak update'
alias flatrm='flatpak remove'
alias flatRM='flatpak remove --delete-data' # THIS OPT WILL DELETE ASSOCIATED PACKAGE DATA

  # Snap
alias snapin='snap install'
# alt: snap-in='snap install'
alias snapup='snap refresh'  # given as snap refresh (global update) ; snap refresh $packagename ; snap refresh $packagename --channel=$channelname (update to different channel)
alias snaprm='snap remove'
alias snapq='snap find'
alias snapls='snap list'
alias snapdelta='snap changes'

### SECURITY ###
  # Malware Detection 
  # Clam-AV
alias clamsc='clamscan -r -z -i --cross-fs=yes --detect-pua=yes --heuristic-alerts=yes --alert-encrypted=yes --max-filesize=3999M'
alias clamup='sudo freshclam && sudo clamav-unofficial-sigs' 
#Note: clamav-unofficial-sigs may be named differently in a given distro
  #Lynis  - popular tool for checking security posture of your system.
alias lynis-dryrun='sudo lynis audit system --verbose --no-log'

### TERMINAL MISC ###

alias cls='clear'
alias gtext='gnome-text-editor'  # Newer text editor by Gnome. 
alias history-off='set +o history' #Disables history in current shell. Useful for reducing clutter in .bash_history .
alias untar='tar -xvf'

