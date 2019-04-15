function mkjson () {
  cat $1 | python -m json.tool
}

function convert_to_mp3 () {
  ffmpeg -i $1 -acodec libmp3lame -ab 128k $2
}

export PS1="\[\033[38;5;10m\]\u\[$(tput sgr0)\]\[\033[38;5;15m\]@\[$(tput sgr0)\]\[\033[38;5;11m\]\h\[$(tput sgr0)\]\[\033[38;5;15m\] \w\n\\$ \[$(tput sgr0)\]"

export PATH=/usr/local/bin:/usr/local/sbin:$PATH
export PATH=/Users/lwheng/.local/bin:$PATH
export PATH=/Users/lwheng/Library/Python/3.7/bin:$PATH

export LANG='en_US.UTF-8'

alias g='grep --color -Irn'
alias ll='ls -lahFG'
alias lln='stat -f '"'"'%A %N'"'"' $(ls -a)'
alias slowstartup='cd /private/var/log/asl; sudo rm -rf *; cd -'
alias youtube-dl-audio='youtube-dl -x --audio-format mp3'

[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"

# Golang
export GOPATH=~/dev/go

# Flutter
export PATH="$PATH:/Users/lwheng/dev/flutter/bin"
