# If you come from bash you might have to change your $PATH.
# SETUP : home directory
export PATH=$HOME/bin:/usr/local/bin:/Users/tinsane/code/go/bin:$PATH

# SETUP Path to your oh-my-zsh installation.
  export ZSH="/Users/tinsane/.oh-my-zsh"

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="spaceship"

# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

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
plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

TIMEFMT='%J   %U  user  %E real  %S system %P cpu %*E total'$'\n'\
'avg shared (code):         %X KB'$'\n'\
'avg unshared (data/stack): %D KB'$'\n'\
'total (sum):               %K KB'$'\n'\
'max memory:                %M MB'$'\n'\
'page faults from disk:     %F'$'\n'\
'other page faults:         %R'

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8


# vi mode
bindkey -v
# export KEYTIMEOUT=1

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
export EDITOR='nvim'
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

# Auto-suggestions enable
# source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
fo() {
  local files
  IFS=$'\n' files=($(fzf-tmux --query="$1" --multi --select-1 --exit-0))
  [[ -n "$files" ]] && ${EDITOR:-vim} "${files[@]}"
}

# SETUP : path to z.sh script
. /Users/tinsane/.zutil/z/z.sh


declare -A web_sites
web_sites['walg']='github.com/wal-g/wal-g'
web_sites['mywalg']='github.com/Tinsane/wal-g'
web_sites['vk']='vk.com'
web_sites['habr']='habr.com'
web_sites['task']='trello.com/b/bM2DsFTY/task-board'
web_sites['timus']='timus.online'
web_sites['study']='trello.com/b/tJBQHCd7/study'
web_sites['gdocs']='docs.google.com/document/u/0'
web_sites['mailru']='e.mail.ru/messages/inbox'
web_sites['mus']='music.yandex.ru/home'
web_sites['timnas']='timus.online/status.aspx?author=248409&status=accepted'

function cb {
    x="$1"
    if [ "${web_sites['$x']}" != "" ]; then
        x=${web_sites['$x']};
    fi
    chromium-browser $x
}

# ==========  GIT ALIASES  ==========
alias gst='git status'
alias gsh='git show'
alias gdf='git diff --color=always'
alias glog='git log'

alias gpush='git stash'
alias gpop='git stash pop'

alias grb='git rebase'
alias gcp='git cherry-pick'
alias grsh='git reset --hard'
alias grss='git reset --soft'

alias gadd='git add'
alias gcm='git commit'
alias grv='git review'
alias gcma='git commit -a -m'
alias gpl='git pull'

alias gbr='git branch'
alias gco='git checkout'
# ==========  GIT ALIASES  ==========

# SETUP : paths for Golang
export GOPATH=/Users/tinsane/code/go/
export GOROOT=/usr/local/Cellar/go/1.13.4/libexec
export LD_LIBRARY_PATH=/usr/local/lib


function jlab {
    nohup jupyter-lab 
}

function run {
    nohup $1 >/dev/null&
}

function ksub {
    gcma $3
    kaggle competitions submit -c $1 -f $2 -m $3
}

if [ -f '/home/vladimirlesk/CLionProjects/shad/shad-tpcc-course-2019/client/activate' ]; then . '/home/vladimirlesk/CLionProjects/shad/shad-tpcc-course-2019/client/activate'; fi



# # Allow zsh to work with g4d_completion_rc
# setopt +o nomatch
# 
# # Enable auto-completion for `g4d` on zsh
# autoload bashcompinit
# bashcompinit
