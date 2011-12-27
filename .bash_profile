#macports path
export PATH=/opt/local/bin:/opt/local/sbin:$PATH

alias ls='ls -G'
# Easier navigation: .., ..., ~ and -
alias ..="cd .."
alias ...="cd ../.."
alias ~="cd ~" # `cd` is probably faster to type though
alias -- -="cd -"

# List all files colorized in long format, including dot files
alias la="ls -Gla"

# List only directories
alias lsd='ls -l | grep "^d"'

# Undo a `git push`
alias undopush="git push -f origin HEAD^:master"

# IP addresses
alias localip="ipconfig getifaddr en1"
alias ips="ifconfig -a | perl -nle'/(\d+\.\d+\.\d+\.\d+)/ && print $1'"

# Flush Directory Service cache
alias flush="dscacheutil -flushcache"

# View HTTP traffic
alias sniff="sudo ngrep -d 'en1' -t '^(GET|POST) ' 'tcp and port 80'"
alias httpdump="sudo tcpdump -i en1 -n -s 0 -w - | grep -a -o -E \"Host\: .*|GET \/.*\""

# Start an HTTP server from a directory
alias server="open http://localhost:8080/"

# Trim new lines and copy to clipboard
alias c="tr -d '\n' | pbcopy"

# Shortcuts
alias d="cd ~/Documents/Dropbox"
alias w="cd ~/wa"
alias g="git"
alias v="mvim"

# File size
alias fs="stat -f \"%z bytes\""

# ROT13-encode text. Works for decoding, too! ;)
alias rot13='tr a-zA-Z n-za-mN-ZA-M'

# Disable Spotlight
alias spotoff="sudo mdutil -a -i off"
# Enable Spotlight
alias spoton="sudo mdutil -a -i on"

# One of @janmoesen’s ProTip™s
for method in GET HEAD POST PUT DELETE TRACE OPTIONS; do alias "$method"="lwp-request -m '$method'"; done

# Stuff I never really use but cannot delete either because of http://xkcd.com/530/
alias stfu="osascript -e 'set volume output muted true'"
alias pumpitup="osascript -e 'set volume 10'"
alias hax="growlnotify -a 'Activity Monitor' 'System error' -m 'WTF R U DOIN'"

#Git hooks
#source ~/.git-completion.bash

export PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME%%.*}\007"'

export CLICOLOR=1
#export LSCOLORS=Gxfxcxdxbxegedabagacad
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx
export EDITOR='mvim -f --nomru -c "au VimLeave * !open -a Terminal"'
export SCALA_HOME=/Users/johanprinsloo/Progs/scala/
export SBT_HOME=/Users/johanprinsloo/Progs/sbt/
export EC2_HOME=/Users/johanprinsloo/Progs/ec2-api-tools-1.4.4.1/
export JAVA_HOME=$(/usr/libexec/java_home)
export M2_HOME=/usr/share/java/maven-3.0.3/

# Setup Amazon EC2 Command-Line Tools
export EC2_HOME=~/.ec2
export PATH=$PATH:$EC2_HOME/bin
export EC2_PRIVATE_KEY=`ls $EC2_HOME/*pk.pem`
export EC2_CERT=`ls $EC2_HOME/*Cert.pem`

export PATH=$EC2_HOME/bin:$SCALA_HOME/bin:$SCALA_HOME/lib:$SCALA_HOME:$M2_HOME/bin:$SBT_HOME:~/bin:$PATH

 if [ -f /opt/local/etc/bash_completion ]; then
     . /opt/local/etc/bash_completion
 fi

