function mkjson () {
  cat $1 | python -m json.tool
}

function convert_to_mp3 () {
  ffmpeg -i $1 -acodec libmp3lame -ab 128k $2
}

export PS1="\[\e[32m\]\u\[\e[m\]@\[\e[33m\]\h\[\e[m\] \[\e[34m\]\w\[\e[m\]\n$ "

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

# # The next line updates PATH for the Google Cloud SDK.
# if [ -f '/Users/lwheng/dev/google-cloud-sdk/path.bash.inc' ]; then source '/Users/lwheng/dev/google-cloud-sdk/path.bash.inc'; fi
# 
# # The next line enables shell command completion for gcloud.
# if [ -f '/Users/lwheng/dev/google-cloud-sdk/completion.bash.inc' ]; then source '/Users/lwheng/dev/google-cloud-sdk/completion.bash.inc'; fi

# Golang
export GOPATH=~/dev/go
