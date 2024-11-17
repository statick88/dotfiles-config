# Add deno completions to search path
if [[ ":$FPATH:" != *":/home/statick/.zsh/completions:"* ]]; then export FPATH="/home/statick/.zsh/completions:$FPATH"; fi
# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="xiong-chiamiov-plus"

plugins=( 
    git
    dnf
    zsh-autosuggestions
    zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# check the dnf plugins commands here
# https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/dnf


# Display Pokemon-colorscripts
# Project page: https://gitlab.com/phoneybadger/pokemon-colorscripts#on-other-distros-and-macos
# pokemon-colorscripts --no-title -s -r

# fastfetch. Will be disabled if above colorscript was chosen to install
#fastfetch -c $HOME/.config/fastfetch/config-compact.jsonc

# Set-up FZF key bindings (CTRL R for fuzzy history finder)
source <(fzf --zsh)

HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory

# Set-up icons for files/folders in terminal using eza
alias ls='eza -a --icons'
alias ll='eza -al --icons'
alias lt='eza -a --tree --level=1 --icons'

# fnm
FNM_PATH="/home/statick/.local/share/fnm"
if [ -d "$FNM_PATH" ]; then
  export PATH="/home/statick/.local/share/fnm:$PATH"
  eval "`fnm env`"
fi
export PATH="$HOME/.npm-global/bin:$PATH"

alias n='nvim'
alias update="sudo dnf upgrade -y && sudo dnf autoremove -y && sudo dnf clean all"


# bun completions
[ -s "/home/statick/.bun/_bun" ] && source "/home/statick/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
. "/home/statick/.deno/env"
# Initialize zsh completions (added by deno install script)
autoload -Uz compinit
compinit