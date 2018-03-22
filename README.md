## my_aliases - Bash Alias Script
*"a set of useful bash alias and functions compilation"*

## What do I need to use the script?
First you need is to get installed Linux and you should use <i>BASH</i> as default shell.

Why BASH Shell?
<i>Bourne Again shell</i>: Probably most advisable for beginning users while being at the same time a
powerful tool for the advanced and professional user. This shell is a so-called superset of the Bourne shell,
a set of add-ons and plug-ins. This means that the Bourne Again shell is compatible with the Bourne shell:
commands that work in <i>sh</i>, also work in <i>bash</i>.

## What is an alias?
<i>Aliases</i> allow a string to be substituted for a word when it is used as the first word of a simple command.
The shell maintains a list of aliases that may be set and unset with the alias and unalias commands.

## Compatibility
The script is compatible with any Linux distribution that uses BASH as default shell but I've made this script under
Ubuntu Linux so if you're using another Linux distribution probably you want to make some changes in some aliases for
example the update system aliases was made to be compatible with Debian and/or Ubuntu.

## How to install the script
## a) Automatic Installation
Open a new terminal then run the installation script file <i>"install.sh"</i>:

<code>chmod +x install.sh && ./install.sh</code>

## b) Manual Installation
Note: If you don't want to use the banner "welcome" login, skipt the <i>".banner"</i> file
If you want to install the script by yourself you should perform the following steps:

1. Unpack all files (ex.)
<code>unzip -o bash_aliases_master.zip</code>

2. Open a new terminal and go to your home root directory, then:
<code>cd or cd /</code>

3. Copy <i>.my_aliases</i> file to your home root directory "~/.".
<code>cp .my_aliases ~/</code>

4. Make a directory called "<i>.my_aliases_data</i>" and place the rest of files in it
<code><i>mkdir ~/.my_aliases_data</i></code>

<code>cp .networking ~/.my_aliases_data && cp .fw_rules ~/.my_aliases_data && cp .media ~/.my_aliases_data
cp .scantools_alias ~/.my_aliases_data && cp .banner ~/my_aliases_data</code>

5. Edit your <i>.bashrc</i> file and add the following text
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

if [ -f ~/.my_aliases_data/.scantools_alias ]; then
    . ~/.my_aliases_data/.scantools_alias
fi

if [ -f ~/.my_aliases_data/.media ]; then
    . ~/.my_aliases_data/.media
fi

</code>
6. Reload the shell
<i>source ~/.bashrc</i>
