function parse_git_branch () {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

function mkjson () {
  cat $1 | python -m json.tool
}

RED="\[\033[0;31m\]"
YELLOW="\[\033[0;33m\]"
GREEN="\[\033[0;32m\]"
NO_COLOUR="\[\033[0m\]"

PS1="\u$NO_COLOUR:\w$YELLOW\$(parse_git_branch)$NO_COLOUR \$ "

# if [ -e /Users/lwheng/.nix-profile/etc/profile.d/nix.sh ]; then . /Users/lwheng/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer

export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx
export PATH="$HOME/Library/Haskell/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"
export PATH="/Users/lwheng/.local/bin:$PATH"

alias slowstartup='cd /private/var/log/asl; sudo rm -rf *; cd -'
alias ll='ls -lah'
alias g='grep --color -Irn'
alias youtube-dl-audio='youtube-dl -f mp4 --extract-audio'

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/lwheng/dev/google-cloud-sdk/path.bash.inc' ]; then source '/Users/lwheng/dev/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/lwheng/dev/google-cloud-sdk/completion.bash.inc' ]; then source '/Users/lwheng/dev/google-cloud-sdk/completion.bash.inc'; fi
