#!/bin/bash

#Name        = "my_aliases"
#Description = "Install script"
#Version     = "1.0.1"
#ReleaseDate = "2018-03-26"

mkdir ~/.my_aliases_data
cp .my_aliases ~/
cp .networking ~/.my_aliases_data
cp .fw_rules ~/.my_aliases_data
cp .media ~/.my_aliases_data
cp .scantools_alias ~/.my_aliases_data
cp .banner ~/.my_aliases_data

clear
read -p "Do you wish to add the banner login? [y/n] " install
echo ""
    if [[ "$install" =~ ^([yY][eE][sS]|[yY])+$ ]]; then
clear
echo '
 #-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-#
 # Added by my_aliases bash script #
 #-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-#

cat ~/.my_aliases_data/.banner | lolcat && ddate && echo ""

if [ -f ~/.my_aliases ]; then
    . ~/.my_aliases
fi

if [ -f ~/.my_aliases_data/.networking ]; then
    . ~/.my_aliases_data/.networking
fi

if [ -f ~/.my_aliases_data/.fw_rules ]; then
    . ~/.my_aliases_data/.fw_rules
fi

if [ -f ~/.my_aliases_data/.scantools_alias ]; then
    . ~/.my_aliases_data/.scantools_alias
fi

if [ -f ~/.my_aliases_data/.media ]; then
    . ~/.my_aliases_data/.media
fi' >> ~/.bashrc
    else
clear
echo '
 #-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-#
 # Added by my_aliases bash script #
 #-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-#

if [ -f ~/.my_aliases ]; then
    . ~/.my_aliases
fi

if [ -f ~/.my_aliases_data/.networking ]; then
    . ~/.my_aliases_data/.networking
fi

if [ -f ~/.my_aliases_data/.fw_rules ]; then
    . ~/.my_aliases_data/.fw_rules
fi

if [ -f ~/.my_aliases_data/.scantools_alias ]; then
    . ~/.my_aliases_data/.scantools_alias
fi

if [ -f ~/.my_aliases_data/.media ]; then
    . ~/.my_aliases_data/.media
fi' >> ~/.bashrc
rm -rf ~/.my_aliases_data/.banner
fi

#updating aliases
source /home/$USER/.bashrc

echo ""
echo "====< Script Installed >===="
echo ""
echo "Main aliases file copied to: $HOME with name '.my_aliases'."
echo ""
echo "Additional aliasese are stored in $HOME with directory name '.my_aliases_data'."

