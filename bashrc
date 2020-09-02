# base-files version 3.7-1 
# To pick up the latest recommended .bashrc content,
# look in /etc/defaults/etc/skel/.bashrc

# Modifying /etc/skel/.bashrc directly will prevent
# setup from updating it.

# The copy in your home directory (~/.bashrc) is yours, please
# feel free to customise it to create a shell
# environment to your liking.  If you feel a change
# would be benificial to all, please feel free to send
# a patch to the cygwin mailing list.

# User dependent .bashrc file


# Shell Options
# #############

# See man bash for more options...

# Don't wait for job termination notification
# set -o notify

# Don't use ^D to exit
# set -o ignoreeof

# Use case-insensitive filename globbing
# shopt -s nocaseglob

# Make bash append rather than overwrite the history on disk
shopt -s histappend

# When changing directory small typos can be ignored by bash
# for example, cd /vr/lgo/apaache would find /var/log/apache
# shopt -s cdspell

# Add ~/bin and ./ to the PATH
export PATH=~/bin:./:$PATH

# export ANDROID_SDK=/usr/share/android-tools/android-sdk-linux
# export NDKROOT=/usr/share/android-tools/android-ndk-r10
# export OPENCV_PACKAGE_DIR=/home/SDKs/OpenCV-2.4.9-android-sdk
export PATH=$PATH:$ANDROID_SDK:$ANDROID_NDK
# export OpenCV_DIR=/usr/share/OpenCV


# Completion options
# ##################

# These completion tuning parameters change the default behavior of bash_completion:

# Define to access remotely checked-out files over passwordless ssh for CVS
# COMP_CVS_REMOTE=1

# Define to avoid stripping description in --option=description of './configure --help'
COMP_CONFIGURE_HINTS=1

# Define to avoid flattening internal contents of tar files
COMP_TAR_INTERNAL_PATHS=1

# If this shell is interactive, turn on programmable completion enhancements.
# Any completions you add in ~/.bash_completion are sourced last.
# case $- in
#   *i*) [[ -f /etc/bash_completion ]] && . /etc/bash_completion ;;
# esac


# History Options
# ###############

# Don't put duplicate lines in the history.
export HISTCONTROL="ignoreboth"

# Ignore some controlling instructions
export HISTIGNORE="[   ]*:&:bg:fg:exit"

# Whenever displaying the prompt, write the previous line to disk
export PROMPT_COMMAND="history -a"

# Save lots of history information
export HISTFILESIZE=20000
export HISTSIZE=5000

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# Load environment settings from gnome-keyring-daemon
#export `gnome-keyring-daemon`

# Aliases
# #######

# Some example alias instructions
# If these are enabled they will be used instead of any instructions
# they may mask.  For example, alias rm='rm -i' will mask the rm
# application.  To override the alias instruction use a \ before, ie
# \rm will call the real rm not the alias.

# enable color support of some aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'

    alias ls='ls -hF --color=tty'
    alias dir='ls --color=auto --format=vertical'
    alias vdir='ls --color=auto --format=long'
fi

# Interactive operation...
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

# Default to human readable figures
alias df='df -h'
alias du='du -h'

# truncated list of history items
alias h='history 20'

# Misc :)
alias less='less -r'                          # raw control characters
alias whence='type -a'                        # where, of a sort

# Some shortcuts for different directory listings
alias la='ls -A'                              # all (except . and .. )
alias ll='ls -l'                              # long list
alias lla='ls -lA'                            # long list of all (except . and .. )
alias l='ls -CF'                              #

alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias dirs='builtin dirs -v'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

if [ -f "/usr/local/opt/bash-git-prompt/share/gitprompt.sh" ]; then
    __GIT_PROMPT_DIR="/usr/local/opt/bash-git-prompt/share"
    source "/usr/local/opt/bash-git-prompt/share/gitprompt.sh"
fi

[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"

if [ $(uname) == "Darwin" ]; then
    export ANDROID_NDK_HOME="/usr/local/share/android-ndk"
    export ANDROID_SDK_ROOT="/usr/local/share/android-sdk"
fi

# Functions
# #########

# Redefine pushd and popd so they output listing of the directory stack
function pushd()
{
    builtin pushd "$@" > /dev/null
    builtin dirs -v
}
function popd()
{
    builtin popd "$@" > /dev/null
    builtin dirs -v
}

