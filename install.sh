#!/bin/sh
echo "Lets make bash a little quicker and add some shortcuts!"

while true; do
    read -p "Do you want to install the whole set? (y/n) " yn
    case $yn in
        [YyjJ]* ) cp ./.bash_aliases ~/ && break;;
        [Nn]* ) while true; do
            read -p "Do you want to install the cryptography shortcuts? (y/n) " yn
            case $yn in
              [YyjJ]* ) cat ./.bash_aliases/snippets/cryptography >> ~/.bash_aliases && break;;
              [Nn]* ) echo "skipped" && break;;
              * ) echo "Please answer yes or no.";;
          esac
      done 
      while true; do
             read -p "Do you want to install directory navigation shortcuts? (y/n) " yn
             case $yn in
              [YyjJ]* ) cat ./.bash_aliases/snippets/navigation_directories >> ~/.bash_aliases && break;;
              [Nn]* ) echo "skipped" && break;;
              * ) echo "Please answer yes or no.";;
          esac
      done 
      while true; do
        read -p "Do you want to install the networking shortcuts? (y/n) " yn
        case $yn in
            [YyjJ]* ) cat ./.bash_aliases/snippets/networking >> ~/.bash_aliases && break;;
            [Nn]* ) echo "skipped" && break;;
            * ) echo "Please answer yes or no.";;
          esac
      done
      while true; do
          read -p "Do you want to install security shortcuts? (y/n) " yn
          case $yn in
            [YyjJ]* ) cat ./.bash_aliases/snippets/security >> ~/.bash_aliases && break;;
            [Nn]* ) echo "skipped" && break;;
            * ) echo "Please answer yes or no.";;
          esac
      done 
      while true; do
          read -p "Do you want to install various other shortcuts? (y/n) " yn
          case $yn in
              [YyjJ]* ) cat ./.bash_aliases/snippets/terminal_misc >> ~/.bash_aliases && break;;
              [Nn]* ) echo "skipped" && break;;
              * ) echo "Please answer yes or no.";;
          esac
      done
      while true; do
          read -p "Do you want to install package management shortcuts? (y/n) " yn
          case $yn in
             [YyjJ]* ) while true; do
                read -p "Do you use APT (Debian, Ubuntu, Linux Mint, Pop!_OS,...)? (y/n) " yn
                case $yn in
                    [YyjJ]* ) cat ./.bash_aliases/snippets/package_management/apt >> ~/.bash_aliases && break;;
                    [Nn]* ) echo "skipped" && break;;
                    * ) echo "Please answer yes or no.";;
                  esac
                done 
                while true; do
                    read -p "Do you use RPMs (DNF, Fedora, OpenSUSE, RedHatEL, microOS,...)? (y/n) " yn
                    case $yn in
                      [YyjJ]* ) cat ./.bash_aliases/snippets/package_management/dnf_rpm_yum >> ~/.bash_aliases && break;;
                      [Nn]* ) echo "skipped" && break;;
                      * ) echo "Please answer yes or no.";;
                   esac
              done 
              while true; do
                read -p "Do you use Flatpaks or Snaps? (y/n) " yn
                case $yn in
                    [YyjJ]* ) cat ./.bash_aliases/snippets/package_management/flatpak_snap >> ~/.bash_aliases && break;;
                    [Nn]* ) echo "skipped" && break;;
                    * ) echo "Please answer yes or no.";;
                esac
            done && break;;
             [Nn]* ) echo "skipped" && break;;
             * ) echo "Please answer yes or no.";;
           esac
          done && break;;
        * ) echo "Please answer yes or no.";;
    esac
done

printf """
# bash aliases
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi
""" >> ~/.bashrc

chmod +x ~/.bash_aliases

fi
