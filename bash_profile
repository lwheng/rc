function parse_git_branch () {
         git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

RED="\[\033[0;31m\]"
YELLOW="\[\033[0;33m\]"
GREEN="\[\033[0;32m\]"
NO_COLOUR="\[\033[0m\]"

PS1="\u$NO_COLOUR:\w$YELLOW\$(parse_git_branch)$NO_COLOUR \$ "

export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx
# this is for the Android SDK 
export ANDROID_HOME=/Users/lwheng/dev/adt-bundle-mac/sdk
export PATH=${PATH}:/Users/lwheng/dev/adt-bundle-mac/sdk/platform-tools:/Users/lwheng/dev/adt-bundle-mac/sdk/tools

# For Yesod/Haskell
export PATH="$HOME/Library/Haskell/bin:$PATH"

alias slowstartup='cd /private/var/log/asl; sudo rm -rf *; cd -'
alias wing='ssh lwheng@wing.comp.nus.edu.sg'
alias starwars='telnet towel.blinkenlights.nl'
alias vlc='open -a VLC'
alias subl='open -a "Sublime Text"'
alias exit='history -c; exit'
alias mou='open -a Mou'

source ~/.profile
source /Users/lwheng/.rvm/scripts/rvm

##
# Your previous /Users/lwheng/.bash_profile file was backed up as /Users/lwheng/.bash_profile.macports-saved_2014-10-18_at_10:49:19
##

# MacPorts Installer addition on 2014-10-18_at_10:49:19: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.

