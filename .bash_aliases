alias cfgs='/usr/bin/git --git-dir=$HOME/.cfgs/ --work-tree=$HOME'

alias E="$EDITOR"

alias java8='export JAVA_HOME=$JAVA_8_HOME'
# alias java9='export JAVA_HOME=$JAVA_9_HOME'
# alias java10='export JAVA_HOME=$JAVA_10_HOME'
alias java11='export JAVA_HOME=$JAVA_11_HOME'
# alias java12='export JAVA_HOME=$JAVA_12_HOME'
# alias java13='export JAVA_HOME=$JAVA_13_HOME'

# alias _ec2="ssh -i ~/.ssh/mferretti-poc.pem ec2-user@ec2-52-25-229-78.us-west-2.compute.amazonaws.com"
# alias carlos_ec2="ssh -i ~/.ssh/carlos.pem ubuntu@ec2-54-203-133-159.us-west-2.compute.amazonaws.com"
# alias _esd="ssh -L 58764:localhost:8764 -L 58080:localhost:8080 -i ~/.ssh/gartner-app.pem ubuntu@esd.lucidworks.com"
# export MYFUSION="$HOME/Applications/fusion/4.2.1"
# alias _roll_Fusion="$MYFUSION/bin/fusion stop;find $MYFUSION/var/log/ -type f -exec trash -v {} \;;$MYFUSION/bin/fusion start"

alias gca-east="gcloud config configurations activate east"
alias gca-west="gcloud config configurations activate west"
alias gca-default="gcloud config configurations activate default"

alias east-client-start="gcloud compute instances start ceferr-demo --zone=us-east1-b --project=central-beach-194106"
alias east-client-stop="gcloud compute instances stop ceferr-demo --zone=us-east1-b --project=central-beach-194106"
alias east-cluster-start="gcloud compute instances start ferretti-node-1 ferretti-node-2 ferretti-node-3 --zone=us-east1-b --project=central-beach-194106"
alias east-cluster-stop="gcloud compute instances stop ferretti-node-1 ferretti-node-2 ferretti-node-3 --zone=us-east1-b --project=central-beach-194106"

alias west-client-start="gcloud compute instances start cwferr-demo --zone=us-west1-b --project=central-beach-194106"
alias west-client-stop="gcloud compute instances stop cwferr-demo --zone=us-west1-b --project=central-beach-194106"
alias west-cluster-start="gcloud config configurations activate west && gcloud compute instances start ferretti-nodw-1 ferretti-nodw-2 ferretti-nodw-3 --zone=us-west1-b --project=central-beach-194106"
alias west-cluster-stop="gcloud compute instances stop ferretti-nodw-1 ferretti-nodw-2 ferretti-nodw-3 --zone=us-west1-b --project=central-beach-194106"

#  Easier navigation: .., ..., ...., ....., ~ and -
alias 1up="cd .."
alias 2up="cd ../.."
alias 3up="cd ../../.."
alias 4up="cd ../../../.."
#alias "cd ~" # `cd` is probably faster to type though
alias myh="cd ~"

# Shortcuts
# ============
alias dbx="cd $HOME/Dropbox"
alias dld="cd $HOME/Downloads"
alias dsk="cd $HOME/Desktop"
alias proj="cd $HOME/Projects"
#alias ="cd /"
#alias g="git"
alias h="history"
alias j="jobs"

#  Detect which `ls` flavor is in use
if ls --color > /dev/null 2>&1; then # GNU `ls`
    colorflag="--color"
else # OS X `ls`
    colorflag="-G"
fi

export LS_COLORS='no=00:fi=00:di=01;34:ln=01;36:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:ex=01;32:*.tar=01;31:*.tgz=01;31:*.arj=01;31:*.taz=01;31:*.lzh=01;31:*.zip=01;31:*.z=01;31:*.Z=01;31:*.gz=01;31:*.bz2=01;31:*.deb=01;31:*.rpm=01;31:*.jar=01;31:*.jpg=01;35:*.jpeg=01;35:*.gif=01;35:*.bmp=01;35:*.pbm=01;35:*.pgm=01;35:*.ppm=01;35:*.tga=01;35:*.xbm=01;35:*.xpm=01;35:*.tif=01;35:*.tiff=01;35:*.png=01;35:*.mov=01;35:*.mpg=01;35:*.mpeg=01;35:*.avi=01;35:*.fli=01;35:*.gl=01;35:*.dl=01;35:*.xcf=01;35:*.xwd=01;35:*.ogg=01;35:*.mp3=01;35:*.wav=01;35:'

# Always use color output for `ls`
alias ls="command ls ${colorflag}"

# List all files colorized in long format
alias lls="ls -lF ${colorflag}"

# List all files colorized in long format, including dot files
alias lla="ls -laF ${colorflag}"

# List only directories
alias lld="ls -lF ${colorflag} | grep --color=never '^d'"

#  Enable aliases to be sudo’ed
alias sudo='sudo '

#  Get week number
alias weeknum='date +%V'

#  Stopwatch
alias tmr='echo "Timer started. Stop with Ctrl-D." && date && time cat && date'

# Install available updates
alias upmac='sudo softwareupdate --install --verbose --reccommended'
#alias upmac='sudo softwareupdate --install --verbose --all'

# update npms
alias npmup='npm install npm -g; npm update -g'

# update brew
alias brwup='brew update && brew upgrade && brew cask upgrade && brew cleanup'

# brew stuff
alias brwfix='sudo chown -R $(whoami) /usr/local'

# IP addresses
alias ipex="dig +short myip.opendns.com @resolver1.opendns.com"
alias ipen="ipconfig getifaddr en0"
alias ipwf="ipconfig getifaddr en1"
alias ipsx="ifconfig -a | grep -o 'inet6\? \(addr:\)\?\s\?\(\(\([0-9]\+\.\)\{3\}[0-9]\+\)\|[a-fA-F0-9:]\+\)' | awk '{ sub(/inet6? (addr:)? ?/, \"\"); print }'"

# Clean up LaunchServices to remove duplicates in the “Open With” menu
alias claunch="/System/Library/Frameworks/CoreServices.framework/Frameworks/LaunchServices.framework/Support/lsregister -kill -r -domain local -domain system -domain user && killall Finder"

#  View HTTP traffic
alias httpView="sudo ngrep -d 'en1' -t '^(GET|POST) ' 'tcp and port 80'"
alias httpDump="sudo tcpdump -i en1 -n -s 0 -w - | grep -a -o -E \"Host\: .*|GET \/.*\""

#  Canonical hex dump; some systems have this symlinked
command -v hd > /dev/null || alias dmphex="hexdump -C"

#  OS X has no `md5sum`, so use `md5` as a fallback
command -v md5sum > /dev/null || alias md5sum="md5"

#  OS X has no `sha1sum`, so use `shasum` as a fallback
command -v sha1sum > /dev/null || alias sha1sum="shasum"

# Trim new lines and copy to clipboard
alias copytrim="tr -d '\n' | pbcopy"

# Show/hide hidden files in Finder
alias ShowFiles="defaults write com.apple.finder AppleShowAllFiles -bool true && killall Finder"
alias HideFiles="defaults write com.apple.finder AppleShowAllFiles -bool false && killall Finder"

#  Hide/show all desktop icons (useful when presenting)
alias ShowIcon="defaults write com.apple.finder CreateDesktop -bool true && killall Finder"
alias HideIcon="defaults write com.apple.finder CreateDesktop -bool false && killall Finder"

#  Disable Spotlight
alias ShowSpot="sudo mdutil -a -i on"
alias HideSpot="sudo mdutil -a -i off"

# URL-encode strings
#alias EncodeURL='python -c "import sys, urllib as ul; print ul.quote_plus(sys.argv[1]);'

#  Merge PDF files
#  Usage: `mergepdf -o output.pdf input{1,2,3}.pdf`
alias pdfMerge='/System/Library/Automator/Combine\ PDF\ Pages.action/Contents/Resources/join.py'

#  PlistBuddy alias, because sometimes `defaults` just doesn’t cut it
alias pbud="/usr/libexec/PlistBuddy"

#  Ring the terminal bell, and put a badge on Terminal.app’s Dock icon
#  (useful when executing time-consuming commands)
# alias badge="tput bel"

#  Intuitive map function
#  For example, to list all directories that contain a certain file:
# find . -name .gitattributes | map dirname
# alias dirmap="xargs -n1"

#  One of @janmoesen’s ProTip™s
for method in GET HEAD POST PUT DELETE TRACE OPTIONS; do
	alias "$method"="lwp-request -m '$method'"
done

# Volume stuff on Mac
alias volOff="osascript -e 'set volume output muted true'"
alias volOn="osascript -e 'set volume 8'"

#  Lock the screen (when going AFK)
alias scrnLock="/System/Library/CoreServices/Menu\ Extras/User.menu/Contents/Resources/CGSession -suspend"

# Reload the shell (i.e. invoke as a login shell)
alias shReload="exec $SHELL -l"

# Find Heap Size In Java
alias jHeap="java -XX:+PrintFlagsFinal -Xms512m - Xmx1024 -XX:PermSize=128m -version | grep -iE ''HeapSize|PermSize|ThreadStackSize'"

# empty a log file
alias emptyLog="truncate logfile --size 0"

#  remove git from project
alias trashGit='find . -type f -name ".gitignore" -exec rm -f {} \; && find . -type f -name ".git*" -exec rm -f {} \;'

#  Kill all the tabs in Chrome to free up memory
#  explained: http://www.commandlinefu.com/commands/view/402/exclude-grep-from-your-grepped-output-of-ps-alias-included-in-description
alias trashChrome="ps ux | grep '[C]hrome Helper --type=renderer' | grep -v extension-process | tr -s ' ' | cut -d ' ' -f2 | xargs kill"

# Recursively delete `.DS_Store` files
alias trashDS="find . -type f -name '*.DS_Store' -ls -delete"

#  Empty the Trash on all mounted volumes and the main HDD.
#  Also, clear Apple’s System Logs to improve shell startup speed.
alias trashAll="sudo rm -rfv /Volumes/*/.Trashes; sudo rm -rfv ~/.Trash; sudo rm -rfv /private/var/log/asl/*.asl; sqlite3 ~/Library/Preferences/com.apple.LaunchServices.QuarantineEventsV* 'delete from LSQuarantineEvent'"

alias dnsFlush='sudo killall -HUP mDNSResponder;sudo killall mDNSResponderHelper;sudo dscacheutil -flushcache'
