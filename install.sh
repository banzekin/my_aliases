#!/bin/bash

#Name        = "my_aliases"
#Description = "Bash aliases compilation"
#Version     = "1.0.2"
#ReleaseDate = "2018-03-20"

clear
mkdir ~/.my_aliases_data
cp .my_aliases ~/
cp .networking ~/.my_aliases_data
cp .fw_rules ~/.my_aliases_data
cp .media ~/.my_aliases_data
cp .scanning_cmd ~/.my_aliases_data

cat << EOF >> ~/.bashrc
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

if [ -f ~/.my_aliases_data/.scanning_cmd ]; then
    . ~/.my_aliases_data/.scanning_cmd
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
echo "Main aliases file is in: $HOME with name '.my_aliases'."
echo ""
echo "Additional alias data is stored in $HOME with directory name '.my_aliases_data'."
