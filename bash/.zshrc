# Load environment from bash
source ~/.bashrc

# .zshrc
autoload -U promptinit; promptinit
prompt pure

# Pure prompt styles
zstyle ':prompt:pure:prompt:success' color g
zstyle ':prompt:pure:prompt:error' color red
zstyle ':prompt:pure:git:action' show yes
zstyle ':prompt:pure:git:dirty' show yes
zstyle ':prompt:pure:git:stash' show yes

# Emacs key bindings
bindkey -e

# Edit command line
autoload -z edit-command-line
zle -N edit-command-line
bindkey "^X^E" edit-command-line
