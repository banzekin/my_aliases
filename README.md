## my_aliases - Bash Aliases Script
*"a set of useful bash aliases and function compilations"*

<b>You can pull requests if you have any useful aliases or functions to make things more easy.</b>

## How to install and use it the script 
Open a new shell and run the installation script <i>"install.sh"</i>,

<TT>chmod +x install.sh && ./install.sh</TT>

## Manual installation
1. Copy .my_aliases to your home root folder "~/.".

2. Make a directory called ".my_aliases_data" and place the rest of the files into it

3. Then edit your <i>.bashrc</i> file and add the following text
<code>

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

</code>
4. Finally reload the shell
