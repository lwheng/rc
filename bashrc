function mkjson () {
  cat $1 | python -m json.tool
}

function convert_to_mp3 () {
  ffmpeg -i $1 -acodec libmp3lame -ab 128k $2
}

export PS1="\[\033[38;5;11m\]\u\[$(tput sgr0)\]\[\033[38;5;15m\]@\[$(tput sgr0)\]\[\033[38;5;6m\][\w]:\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]"

export PATH="$HOME/Library/Haskell/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"
export PATH="/Users/lwheng/.local/bin:$PATH"
export PATH="/Users/lwheng/dev/platform-tools:$PATH"

alias g='grep --color -Irn'
alias ll='ls -lah'
alias lln='stat -f '"'"'%A %N'"'"' $(ls -a)'
alias slowstartup='cd /private/var/log/asl; sudo rm -rf *; cd -'
alias youtube-dl-audio='youtube-dl -x --audio-format mp3'

source ~/.git-completion.bash

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/lwheng/dev/google-cloud-sdk/path.bash.inc' ]; then source '/Users/lwheng/dev/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/lwheng/dev/google-cloud-sdk/completion.bash.inc' ]; then source '/Users/lwheng/dev/google-cloud-sdk/completion.bash.inc'; fi
