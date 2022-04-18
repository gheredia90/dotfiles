# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
export EDITOR='vim'

# Path to your oh-my-zsh installation.
export ZSH="/Users/$(whoami)/.oh-my-zsh"

# it'll load a random theme each time that oh-my-zsh is loaded.
ZSH_THEME="bira"

plugins=(git rbenv ruby golang scala gem history history-substring-search brew nanoc)

source $ZSH/oh-my-zsh.sh

alias c='clear'
alias tree="find . -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'"

export PATH="/usr/local/opt/imagemagick@6/bin:$PATH"

autoload -Uz compinit
compinit

# To call VS Code from zsh
function code {
    if [[ $# = 0 ]]
    then
        open -a "Visual Studio Code"
    else
        local argPath="$1"
        [[ $1 = /* ]] && argPath="$1" || argPath="$PWD/${1#./}"
        open -a "Visual Studio Code" "$argPath"
    fi
}
eval "$(rbenv init -)"
export PATH="$HOME/.rbenv/bin:$PATH"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Syntax highlighting
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
