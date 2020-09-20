function mkjson () {
  cat $1 | python -m json.tool
}

function convert_to_mp3 () {
  ffmpeg -i $1 -acodec libmp3lame -ab 128k $2
}

export PATH=/usr/local/bin:/usr/local/sbin:$PATH
export PATH=/Users/lwheng/.local/bin:$PATH
export PATH=/Users/lwheng/Library/Python/3.7/bin:$PATH

export LANG='en_US.UTF-8'

alias g='grep --color -Irn'
alias ll='ls -lahFG'
alias lln='stat -f '"'"'%A %N'"'"' $(ls -a)'
alias slowstartup='cd /private/var/log/asl; sudo rm -rf *; cd -'
alias youtube-dl-audio='youtube-dl -x --audio-format mp3'

# Golang
export GOPATH=~/dev/go
export PATH="$PATH:$GOPATH/bin"

# Flutter
export PATH="$PATH:/Users/lwheng/dev/flutter/bin"

# Ruby
# eval "$(rbenv init -)"
export PATH=/usr/local/opt/ruby/bin:$PATH
export PATH=$HOME/.gem/ruby/2.7.0/bin:$PATH

# C++
alias gpp='g++ -g -O0 -std=c++17 -Wall'

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/lwheng/opt/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/lwheng/opt/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/lwheng/opt/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/lwheng/opt/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<
