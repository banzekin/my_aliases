## my_aliases - Bash Alias Script
*"a set of useful bash alias and functions compilation"*

Why BASH Shell?
<i>Bourne Again shell</i>: Probably most advisable for beginning users while being at the same time a
powerful tool for the advanced and professional user. This shell is a so-called superset of the Bourne shell,
a set of add-ons and plug-ins. This means that the Bourne Again shell is compatible with the Bourne shell:
commands that work in <i>sh</i>, also work in <i>bash</i>.

## What is an alias?
<i>Aliases</i> allow a string to be substituted for a word when it is used as the first word of a simple command.
The shell maintains a list of aliases that may be set and unset with the alias and unalias commands.

## What do I need to use the script?
A Linux distro and you should use <i>BASH</i> as default shell.

## Compatibility
The script is compatible with any Linux distribution that supports BASH but I've made this script under
Ubuntu so if you're working with another distro you probably need to make some changes.

## How to install the script
## a) Automatic Installation
Open a new terminal and download the script using <i>git command</i>: 

<code>git clone https://github.com/banzekin/my_aliases.git</code> 

Then: 

<i>cd my_aliases</i>

Finally run the installation script file <i>"install.sh"</i>:

<code>chmod +x install.sh && ./install.sh</code>

<b>Note</b>: If you don't want to use the banner login, edit your <i>".bashrc"</i> file and remove or comment '<i>cat ~/.my_aliases_data/.banner | lolcat && ddate && echo "</i>' line, also you must delete the <i>.banner</i> file.

## b) Manual Installation

If you want to install the script by yourself you should perform the following steps:

1. Unpack all files (in case you have not used "git" command and you have downloaded the file in .zip format)

2. Copy <i>.my_aliases</i> file to your home root directory "~/.".
<code>cp .my_aliases ~/</code>

3. Make a directory called "<i>.my_aliases_data</i>":

<code><i>mkdir ~/.my_aliases_data</i></code>

4. Put the rest of files into "<i>.my_aliases_data</i>":

<code>cp .networking ~/.my_aliases_data && cp .fw_rules ~/.my_aliases_data && cp .media ~/.my_aliases_data
cp .scantools_alias ~/.my_aliases_data && cp .banner ~/my_aliases_data</code>

4. Edit your <i>.bashrc</i> file and add the following text:

<b>Note</b>: If you don't want to use the banner login, remove the line '<i>cat ~/.my_aliases_data/.banner | lolcat && ddate && echo "</i>' line and delete the <i>.banner</i> file.

<code>
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

</code>
5. Reload the shell.
<i>source ~/.bashrc</i>

## Disclaimer

The usage of some commands and/or applications such as Fluxion, TShark, NMAP, linset or Aircrack-ng for attacking third party infrastructures without prior mutual consent could be considered an illegal activity, and is highly discouraged by the author of the script. It is the end user's responsibility to obey all applicable local, state and federal laws. The Author of the script and assume no liability and are not responsible for any misuse or damage caused by this program. For additional information read CODE_OF_CONDUCT file http://contributor-covenant.org/version/1/4.
