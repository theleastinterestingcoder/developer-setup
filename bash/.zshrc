# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/quanzhou/.oh-my-zsh"

# Suppresses username@device by setting default user
export DEFAULT_USER='quanzhou'

# Suppress warning about insecure premissions that occurs in mac (admin versus root)
ZSH_DISABLE_COMPFIX=true 

# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="agnoster"

# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh
