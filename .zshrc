    # If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
# export ZSH=/home/johnathan/antigen
export TERM="xterm-256color"

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
 #ZSH_THEME="powerlevel9k/powerlevel9k"
#ZSH_THEME="spaceship" # Because spaceships

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

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
# plugins=(git cargo)

source $HOME/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle cargo
antigen bundle pip
antigen bundle command-not-found

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

# Load the theme.
# antigen theme https://github.com/denysdovhan/spaceship-zsh-theme spaceship

# Tell Antigen that you're done.
antigen apply

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

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
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# load rbenv
# export PATH="$HOME/.rbenv/bin:$PATH"
# eval "$(rbenv init - zsh)"
# export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"
# node config, copied from bashrc.
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
export PATH="$HOME/bin:$PATH"

#export WORKON_HOME=~/pyenvs
# VIRTUALENVWRAPPER_PYTHON='/usr/bin/python3' # This needs to be placed before the virtualenvwrapper command
#source /usr/bin/virtualenvwrapper.sh


QT_QPA_PLATFORMTHEME=gtk2

# %n means username, %m means machine nane.
# username@host
# For some reason the time variable is simply %*
local the_time='%{$fg[cyan]%}(%*)'

local user_machine_name='\
%{$fg[yellow]%}%n@%m'
# current dir
local current_dir='%{$fg[blue]%}${PWD/$HOME/~}'

local git_info='$(git_prompt_info)'
ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[cyan]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg[red]%}✗"
ZSH_THEME_GIT_PROMPT_CLEAN=" %{$fg[green]%}✓"

local prompt='%{$reset_color%}$ '

PROMPT="%{$terminfo[bold]%}
${user_machine_name} ${the_time} ${current_dir} ${git_info}
${prompt}"

# powerlevel9k prompt settingss

# POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context dir vcs virtualenv status)
# POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(node_version)
# POWERLEVEL9K_CONTEXT_DEFAULT_BACKGROUND="237"
# POWERLEVEL9K_CONTEXT_DEFAULT_FOREGROUND="15" # fg
#
# POWERLEVEL9K_DIR_DEFAULT_BACKGROUND="12"
# POWERLEVEL9K_DIR_DEFAULT_FOREGROUND="0"
# POWERLEVEL9K_DIR_HOME_BACKGROUND="12"
# POWERLEVEL9K_DIR_HOME_FOREGROUND="0"
# POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND="12"
# POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND="0"
#
# POWERLEVEL9K_PROMPT_ON_NEWLINE=true
# POWERLEVEL9K_PROMPT_ADD_NEWLINE=true
# POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX=""
# POWERLEVEL9K_MULTILINE_SECOND_PROMPT_PREFIX="$ "
#
# POWERLEVEL9K_NODE_ICON="\u2B22 " # Konsole workaround for cut off icons
# POWERLEVEL9K_NODE_VERSION_FOREGROUND="15"
# POWERLEVEL9K_NODE_VERSION_BACKGROUND="2"
#
# POWERLEVEL9K_STATUS_OK_BACKGROUND="2"
# POWERLEVEL9K_STATUS_OK_FOREGROUND="0"
# POWERLEVEL9K_STATUS_ERROR_BACKGROUND="1"
# POWERLEVEL9K_STATUS_ERROR_FOREGROUND="0"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
