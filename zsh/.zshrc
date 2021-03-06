# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# old theme: ZSH_THEME="agnoster"

# powerlevel10k config

POWERLEVEL9K_MODE='awesome-patched'
POWERLEVEL9K_PROMPT_ON_NEWLINE=true

  #vcs
POWERLEVEL9K_VCS_GIT_ICON=''
POWERLEVEL9K_VCS_STAGED_ICON='\u00b1'
POWERLEVEL9K_VCS_UNTRACKED_ICON='\u25CF'
POWERLEVEL9K_VCS_UNSTAGED_ICON='\u00b1'
POWERLEVEL9K_VCS_INCOMING_CHANGES_ICON='\u2193'
POWERLEVEL9K_VCS_OUTGOING_CHANGES_ICON='\u2191'

  #directory
POWERLEVEL9K_SHORTEN_STRATEGY="truncate_middle"i
POWERLEVEL9K_SHORTEN_DIR_LENGTH=4
#POWERLEVEL9K_DIR_PATH_SEPERATOR="LEFT_SUBSEGMENT_SEPERATOR"

  #script_status
POWERLEVEL9K_SCRIPT_STATUS_BACKGROUND='black'

  #command excecution time
POWERLEVEL9K_COMMAND_EXECUTION_TIME_THRESHOLD=0
POWERLEVEL9K_COMMAND_EXECUTION_TIME_BACKGROUND='blue'
POWERLEVEL9K_COMMAND_EXECUTION_TIME_FOREGROUND='black'

  #time
POWERLEVEL9K_TIME_FORMAT='%D{%y.%m.%d %H:%M:%S \uE868}'
POWERLEVEL9K_TIME_BACKGROUND='black'
POWERLEVEL9K_TIME_FOREGROUND='blue'

  #multiline
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX='%{%F{249}%}\u250f'
POWERLEVEL9K_MULTILINE_SECOND_PROMPT_PREFIX='%{%F{249}%}\u2517%{%F{default}%} '

  #prompts
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(root_indicator status os_icon context dir dir_writable vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(virtualenv background_jobs ssh script_status command_execution_time time)

# Defining theme

ZSH_THEME="powerlevel10k/powerlevel10k"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
#COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.

# 
plugins=(colorize completion copybuffer copyzshell dircycle dirhistory docker git git-extras nmap solarized-man sublime zsh-autosuggestions zsh-completions zsh-dircolors-solarized zsh-syntax-highlighting zsnapshot)

if (( ! ${fpath[(I)/usr/local/share/zsh/site-functions]} )); then
  FPATH=/usr/local/share/zsh/site-functions:$FPATH
fi

source $ZSH/oh-my-zsh.sh

fpath=(~/.zsh/completions $fpath) 
autoload -U compinit && compinit

# autojump
[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh

export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin
export PATH="$PATH:/Users/ianguile/Documents/Programming/flutter/bin"

unalias grv

alias docker='sudo docker'
alias mtr='sudo mtr'
alias vim='nvim'
alias l='exa -ahlH --git'
alias dig='grc dig'

alias swift-demangle='/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/swift-demangle'

startscript() {
	script "$1/`date +"%y-%m-%d_%H:%M"`.$2.script"
}

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

default_user=ianguile

# source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
# source $HOME/tipz/tipz.zsh
export PATH="/usr/local/opt/openssl/bin:$PATH"

# The following lines were added by compinstall
#zstyle :compinstall filename '$HOME/.zshrc'

#autoload -Uz compinit
#compinit
# End of lines added by compinstall

# mega completion
# source /Applications/MEGAcmd.app/Contents/MacOS/megacmd_completion.sh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
