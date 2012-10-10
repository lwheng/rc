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
export PATH=${PATH}:/Users/lwheng/Downloads/android-sdk-mac_x86/tools:/Users/lwheng/Downloads/android-sdk-mac_x86/platform-tools

# MacPorts Installer addition on 2011-10-04_at_15:38:11: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

# For Yesod/Haskell
export PATH="$HOME/Library/Haskell/bin:$PATH"

# MacPorts Bash shell command completion
if [ -f /opt/local/etc/profile.d/bash_completion.sh ]; then
  . /opt/local/etc/profile.d/bash_completion.sh
fi

alias slowstartup='cd /private/var/log/asl; sudo rm -rf *; cd -'
alias sunfire='ssh lwheng@sunfire.comp.nus.edu.sg'
alias sadm='ssh sadm@lwheng-z.comp.nus.edu.sg'
alias wing='ssh lwheng@wing.comp.nus.edu.sg'
alias cte='ssh lwheng@cte.comp.nus.edu.sg'
alias tembusu='ssh lwheng@tembusu.comp.nus.edu.sg'
alias starwars='telnet towel.blinkenlights.nl'
alias vlc='open -a VLC'
alias gph='RAILS_ENV=production bundle exec rake assets:precompile && git push heroku'
PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"  # This loads RVM into a shell session.
