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
export ANDROID_HOME=/Users/lwheng/Development/adt-bundle-mac/sdk
export PATH=${PATH}:/Users/lwheng/Development/adt-bundle-mac/sdk/platform-tools:/Users/lwheng/Development/adt-bundle-mac/sdk/tools

# For Yesod/Haskell
export PATH="$HOME/Library/Haskell/bin:$PATH"

alias slowstartup='cd /private/var/log/asl; sudo rm -rf *; cd -'
alias wing='ssh lwheng@wing.comp.nus.edu.sg'
alias starwars='telnet towel.blinkenlights.nl'
alias vlc='open -a VLC'
alias gph='RAILS_ENV=production bundle exec rake assets:precompile && git push heroku'
alias playbook='java -Xmx512M -jar "/Users/lwheng/Downloads/Playbook_Tools/lib/BarDeploy.jar" -installApp -device 169.254.0.1 -password '
alias portclean='sudo port -f clean --all all'
alias portuninstall='sudo port -f uninstall inactive'
alias subl='open -a "Sublime Text"'
alias exit='history -c; exit'
alias mou='open -a Mou'

# MacPorts Installer addition on 2013-10-30_at_23:32:12: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

source ~/.profile
