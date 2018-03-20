# my_aliases - Bash aliases compilation
<i>"useful bash aliases and functions"</i>

<b>You can pull requests if you have any useful aliases or functions to make things more easy.</b>

# How to install the script and use it
Run the installation script <i>"install.sh"</i>,

<TT>chmod +x install.sh && ./install.sh</TT>

# Manual installation
1. Copy .my_aliases to your home root folder.

2. Make a directory called ".my_aliases_data" and put the rest of the files into it

3. Then add into your .bashrc file profile

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

4. Finally reload the shell


<font size="small"># MIT License</font>

<font size="small"><i>Copyright (c) 2018 Mariano Pancaldi</i></font>

<font size="small">Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:
The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.</font>
