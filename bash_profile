function mkjson () {
  cat $1 | python -m json.tool
}

export PS1="\[\033[38;5;11m\]\u\[$(tput sgr0)\]\[\033[38;5;15m\]@\[$(tput sgr0)\]\[\033[38;5;6m\][\w]:\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]"

export PATH="$HOME/Library/Haskell/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"
export PATH="/Users/lwheng/.local/bin:$PATH"

alias g='grep --color -Irn'
alias ll='ls -lah'
alias slowstartup='cd /private/var/log/asl; sudo rm -rf *; cd -'
alias youtube-dl-audio='youtube-dl -f mp4 --extract-audio'

source ~/.git-completion.bash

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/lwheng/dev/google-cloud-sdk/path.bash.inc' ]; then source '/Users/lwheng/dev/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/lwheng/dev/google-cloud-sdk/completion.bash.inc' ]; then source '/Users/lwheng/dev/google-cloud-sdk/completion.bash.inc'; fi
