#!/bin/bash

clear

cat << EOF >> ~/.bashrc
if [ -f ~/.my_aliases ]; then
    . ~/.my_aliases
fi

if [ -f ~/.my_aliases_nettools ]; then
    . ~/.my_aliases_nettools
fi

if [ -f ~/.my_aliases_media ]; then
    . ~/.my_aliases_media
fi
EOF

#updating aliases
source ~/.bashrc

echo "-^-^-^-^-"
echo "  Done!  "
echo "-^-^-^-^-"
