export PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/munki:$HOME/Dev/nvim-macos/bin


### ZSH HOME
export ZSH=$HOME/.zsh

### HISTORY CONFIG
export HISTFILE=$ZSH/.zsh_history

# How many commands zsh will load to memory.
export HISTSIZE=10000

# How many commands history will save on file.
export SAVEHIST=10000

# History won't save duplicates.
setopt HIST_IGNORE_ALL_DUPS

# History won't show duplicates on search.
setopt HIST_FIND_NO_DUPS

### PLUGINS
source $ZSH/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.plugin.zsh
source $ZSH/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source $ZSH/plugins/zsh-z/zsh-z.plugin.zsh

# Navigation aliases
alias dev="cd ~/Dev"
alias repos="cd ~/Dev/_repos"

# git aliases
alias gs="git status"

ga() {
	git add $1
}

gm() {
	git commit -m "$1"
}

alias gp="git push"

eval "$(starship init zsh)"
