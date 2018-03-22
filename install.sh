#!/bin/bash

#Name        = "my_aliases"
#Description = "Bash alias compilation"
#Version     = "1.0.0"
#ReleaseDate = "2018-03-22"

clear
mkdir ~/.my_aliases_data
cp .my_aliases ~/
cp .networking ~/.my_aliases_data
cp .fw_rules ~/.my_aliases_data
cp .media ~/.my_aliases_data
cp .scantools_alias ~/.my_aliases_data
cp .banner ~/.my_aliases_data

cat << EOF >> ~/.bashrc
#-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-#
# Added by my_aliases bash script #
#-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-#

# The banner needs the package "lolcat" for working
# If you don't want to use it comment the line
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
fi
EOF

#updating aliases
source /home/$USER/.bashrc

echo ""
echo "====< Script Installed >===="
echo ""
echo "Main aliases file copied to: $HOME with name '.my_aliases'."
echo ""
echo "Additional aliasese are stored in $HOME with directory name '.my_aliases_data'."

