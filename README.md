Copyright © 2022-2023 TubbyCat

See CREDIT and GPLV3 files for elaborated copyright information.

# TubbyCat's Bash Aliases #
For use on your own system it may be best to modify the alias names to whatever you find optimal. Such a determination of preference requires some linux experience. No matter your expertise, these aliases are made with due regard for ease of use.

[Skip to quick custom install](https://github.com/TubbyCat/bash_aliases#quick-install)

## You Stupid E-KittyCat, What the Fluff are Bash Aliases?! ##
- A compilation of 'shortcuts' for commonly used linux commands residing inside _.bashrc_ or _.bash_aliases_ files
- The syntax:
```sh
alias aliasname='command'
e.g. alias turnoffmycomputer='sudo reboot now'
```
 _Note: files beginning with "." are initially hidden in linux file managers unless their visibility is enabled. **Hint**: Search "make dotfiles visible linux" or just use Ctrl+H_

## HOW TO USE (manual)##
**For combined bash aliases, simply copy over the _.bash_aliases_ file in this git repository.**

**The "Snippets" directory contains aliases organized by category**
  - Simply copy and paste into your own _~/.bash_aliases_ file
  - if only using a few aliases, you can insert them directly into _~/.bashrc_
  - **Hint**: "~" refers to the home directory. Typically /home/$USER.  $USER is a placeholder for username, and can also be executed in the terminal on your linux machine. 


## For ~/.bash_aliases to work, add the following to your system's ~/.bashrc file, if it does not already exist. ##

```bash
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi
```
Then, to implement the addition of .bash_aliases in-situ run:
```bash
source .bashrc
```

## Quick install

```bash
git clone https://github.com/TubbyCat/bash_aliases.git
cd ~/bash_aliases

chmod +x install.sh
. /install.sh

printf """

# bash aliases
if [ -f ~/.bash_aliases ]; then
    ~/.bash_aliases
fi""" >> ~/.bashrc

chmod +x ~/.bash_aliases
```

The quick install lets you either choose the whole alias set, or a part of it.
