# my_aliases - Bash aliases compilation
A project to collect useful bash aliases and functions.

You can pull requests if you have any useful aliases or functions to make things easy.

# How to install the script and use it
Run the installation script "install.sh",

chmod +x install.sh && ./install.sh

# Manual installation
1. Copy .my_aliases and .my_aliases_nettools files to your home directory ~/.

2. Then add into your .bashrc file profile
if [ -f ~/.my_aliases ]; then
    . ~/.my_aliases
fi

if [ -f ~/.my_aliases_nettools ]; then
    . ~/.my_aliases_nettools

Finally reload the shell

# MIT License

Copyright (c) 2018 Mariano Pancaldi

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:
The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
