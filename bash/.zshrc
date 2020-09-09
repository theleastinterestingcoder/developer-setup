# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/quanzhou/.oh-my-zsh"

# Suppresses username@device by setting default user
export DEFAULT_USER='quanzhou'

# Suppress warning about insecure premissions that occurs in mac (admin versus root)
ZSH_DISABLE_COMPFIX=true 

# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME="agnoster"

# For stations with large and slow git repositories, use this:
# https://github.com/sindresorhus/pure
# --------------------------------------------------
autoload -U promptinit; promptinit
prompt pure

zstyle ':prompt:pure:prompt:success' color green
zstyle ':prompt:pure:prompt:error' color red
zstyle ':prompt:pure:git:action' show yes
zstyle ':prompt:pure:git:dirty' show yes
zstyle ':prompt:pure:git:stash' show yes

# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh
