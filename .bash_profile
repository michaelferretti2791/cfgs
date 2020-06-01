# Path
export PATH=/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin
# Set architecture flags
export ARCHFLAGS="-arch x86_64"
export JAVA_8_HOME=$(/usr/libexec/java_home -v1.8)
# export JAVA_9_HOME=$(/usr/libexec/java_home -v9)
# export JAVA_10_HOME=$(/usr/libexec/java_home -v10)
export JAVA_11_HOME=$(/usr/libexec/java_home -v11)
# export JAVA_12_HOME=$(/usr/libexec/java_home -v12)
# export JAVA_13_HOME=$(/usr/libexec/java_home -v13)
# Set Java
export JAVA_HOME=$(/usr/libexec/java_home -v1.8)
# Set Scala
# export SCALA_HOME=/usr/local/opt/scala\@2.11
# Set Python

# export GRADLE_HOME="$(brew --prefix golang)/libexec"
# export GRADLE_OPTS=-Xmx1024m
# export PATH=${GRADLE_HOME}/bin:$PATH

export GOPATH="${HOME}/.go"
export GOROOT="$(brew --prefix golang)/libexec"
export PATH="$PATH:${GOPATH}/bin:${GOROOT}/bin"

export EDITOR="/usr/local/bin/code -w"

# Prefer US English and use UTF-8.
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# Increase Bash history size. Allow 32Â³ entries; the default is 500.
export HISTSIZE='32768'
export HISTFILESIZE="${HISTSIZE}"
export HISTCONTROL='ignoredupes'
export HISTTIMEFORMAT='%F %T '

# Case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob;

# Append to the Bash history file, rather than overwriting it
shopt -s histappend;

# Autocorrect typos in path names when using `cd`
shopt -s cdspell;

# Enable some Bash 4 features when possible:
# * `autocd`, e.g. `**/qux` will enter `./foo/bar/baz/qux`
# * Recursive globbing, e.g. `echo **/*.txt`
# for option in autocd globstar; do
# 	shopt -s "$option" 2> /dev/null;
# done;

# Make Tab autocomplete regardless of filename case
set completion-ignore-case on

# List all matches in case multiple possible completions are possible
set show-all-if-ambiguous on

# Immediately add a trailing slash when autocompleting symlinks to directories
set mark-symlinked-directories on

# Use the text that has already been typed as the prefix for searching through
# commands (i.e. more intelligent Up/Down behavior)
# "\e[B": history-search-forward
# "\e[A": history-search-backward

# Do not autocomplete hidden files unless the pattern explicitly begins with a dot
set match-hidden-files off

# Show all autocomplete results at once
set page-completions off

# If there are more than 200 possible completions for a word, ask to show them all
set completion-query-items 200

# Show extra file information when completing, like `ls -F` does
set visible-stats on

# Be more intelligent when autocompleting by also looking at the text after
# the cursor. For example, when the current line is "cd ~/src/mozil", and
# the cursor is on the "z", pressing Tab will not autocomplete it to "cd
# ~/src/mozillail", but to "cd ~/src/mozilla". (This is supported by the
# Readline used by Bash 4.)
set skip-completed-text on

# Allow UTF-8 input and output, instead of showing stuff like $'\0123\0456'
set input-meta on
set output-meta on
set convert-meta off

# Use Alt/Meta + Delete to delete the preceding word
# "\e[3;3~": kill-word

# Always enable colored `grep` output.
export GREP_OPTIONS='--color=auto'

# Enable persistent REPL history for `node`.
export NODE_REPL_HISTORY_FILE=~/.node_history;

# Allow 32³ entries; the default is 1000.
export NODE_REPL_HISTORY_SIZE='32768';

# Highlight section titles in manual pages.
export LESS_TERMCAP_md="${yellow}";

# Don't clear the screen after quitting a manual page.
export MANPAGER='less -X'

# man path
# export MANPATH=/usr/local/opt/coreutils/libexec/gnuman:/usr/local/opt/findutils/libexec/gnuman:$MANPATH

# Set up virtual env
#export VIRTUALENVWRAPPER_PYTHON="/usr/local/bin/python3"
#export VIRTUALENVWRAPPER_VIRTUALENV="/usr/local/bin/virtualenv"
#export VIRTUALENVWRAPPER_VIRTUALENV_ARGS="--verbose"
#export WORKON_HOME="$HOME/.virtualenvs"
# export PROJECT_HOME="$HOME/Projects"
#source /usr/local/bin/virtualenvwrapper.sh


#if [ -f "/usr/local/etc/bash-completion.d/bash_completion" ]; then
#    . "/usr/local/etc/bash-completion.d/bash_completion"
#fi

[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"

[ -f "/usr/local/etc/profile.d/autojump.sh" ] && . "/usr/local/etc/profile.d/autojump.sh"

eval $(thefuck --alias)

if [ -f ~/.bash_aliases ]; then
    source ~/.bash_aliases
fi

if [ -f ~/.bashrc ]; then
    source ~/.bashrc
fi


