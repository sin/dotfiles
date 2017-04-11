# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="ys"

# Case-sensitive completion.
CASE_SENSITIVE="false"

# Hyphen-insensitive completion. Case sensitive completion must be off.
# _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

# Disable wekly auto-update checks.
DISABLE_AUTO_UPDATE="false"

# How often to auto-update (in days).
export UPDATE_ZSH_DAYS=14

# Disable colors in ls.
DISABLE_LS_COLORS="false"

# Disable auto-setting terminal title.
DISABLE_AUTO_TITLE="false"

# Command auto-correction.
ENABLE_CORRECTION="true"

# Red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Disable marking untracked files under VCS as dirty.
# This makes repository status check for large repositories much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="false"

# Change the command execution time stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="dd.mm.yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Add wisely, as too many plugins slow down shell startup.
#plugins=(git gitfast git-extras git-flow atom autojump bower brew encode64 httpie history node npm sublime virtualenvwrapper)
#plugins=(git gitfast git-extras git-flow brew encode64 httpie history sublime)
plugins=(git git fast git-extras git-flow history sublime source zsh-syntax-highlighting)

# User configuration

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Library/Frameworks/Python.framework/Versions/2.7/bin"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.

alias reload=". ~/.zshrc && echo 'ZSH config reloaded from ~/.zshrc'"
alias zshrc="sublime ~/.zshrc && reload"
alias zshconfig="sublime ~/.zshrc"
alias ohmyzsh="sublime ~/.oh-my-zsh/oh-my-zsh.sh"

alias http='nocorrect http'

alias l='ls -A'
alias rmd='rm -r'

alias cask='brew cask'
alias pyman='python manage.py'
alias activate='source ../bin/activate'
alias pipupdate="pip install -U `pip list --outdated | awk '{print $1}'`"

alias hub=git

alias a='fasd -a'        # any
alias s='fasd -si'       # show / search / select
alias d='fasd -d'        # directory
alias f='fasd -f'        # file
alias sd='fasd -sid'     # interactive directory selection
alias sf='fasd -sif'     # interactive file selection
alias z='fasd_cd -d'     # cd, same functionality as j in autojump
alias zz='fasd_cd -d -i' # cd with interactive selection

#export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

# Add syntax highlighting
#source .oh-my-zsh/custom/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern cursor)

