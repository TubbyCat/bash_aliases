Copyright © 2022-2023 TubbyCat  

# <span style="color:purple">TubbyCat's Bash Aliases</span>
For use on your own system it may be best to modify the alias names to whatever you would find optimal. Such a determination of preference requires some linux experience. 

## HOW TO USE ##
**For combined bash aliases, simply copy over the _.bash_aliases_ file in this git repository.**

**The "Snippets" directory contains aliases organized by category**
  - Simply copy and paste into your own _~/.bash_aliases_ file
  - if only using a few aliases, you can insert them directly into _~/.bashrc_
  - **Hint**: "~" refers to the home directory. Typically /home/$USER.  $USER is a placeholder for username, but can be executed in the terminal on your linux machine as well. 


## For ~/.bash_aliases to work, add the following to your system's ~/.bashrc file, if it does not already exist. ##

```bash
if [ -f ~/.bash_aliases ]; then
    .~/.bash_aliases
fi
```
Then, to implement the addition of .bash_aliases in-situ run:
```bash
source .bashrc
```
## Elaborated Instructions, pseudo-TL;DR ##
```bash
git clone https://github.com/TUbbyCat/bash_aliases.git
cd ./bash_aliases
#for full aliases
cp ./.bash_aliases ~/
#for snippets 
#cat ./snipets/whicheverdirectory/whicheverfilename >> ~/.bash_aliases
#to appropriately use snippets you will likely need to use a text editor
```
