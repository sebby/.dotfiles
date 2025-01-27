# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
# if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  # source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" fi
# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" )


ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=#00ffff,bold,underline'
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=#bababa,bold'

# On peut essayer le gris clair #bababa

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
	git
	brew
	zsh-autosuggestions
	zsh-syntax-highlighting
	docker
	docker-compose
	z
	asdf
	alias-tips
	you-should-use
	# ripgrep
	fzf
	drush
	macos
	screen
	starship
	web-search
	# taskwarrior
)


source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=fr_FR.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi
export NVIM_APPNAME='neovim-scn'

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases

# alias ohmyzsh="mate ~/.oh-my-zsh"


#ZSH_THEME="powerlevel9k/powerlevel9k"
# source ~/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
#[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

export PATH="$HOME/.composer/vendor/bin:$PATH"
export PATH="$HOME/.config/composer/vendor/bin:$PATH"

# export PATH="/usr/local/opt/sqlite/bin:$PATH"
# export PATH="/usr/local/opt/gnu-getopt/bin:$PATH"

# export PATH="/usr/local/sbin:$PATH"



######## START SETTINGS FOR FZF

export FZF_DEFAULT_COMMAND='fd --type f'
alias inv='nvim $(fzf -m --preview="bat --color=always {}")'


########END SETTINGS FZF
# alias ohmyzsh="vim ~/.oh-my-zsh"

# alias ll='eza --all --long --header --icons --git'
# alias tree='eza --tree --icons -L=2'
# alias lll='eza --tree --level=2 --long --git --icons'
alias  v='fd --ignore-case --type f --hidden --exclude .git |fzf-tmux -p|xargs nvim'
alias taskfile='/snap/task/current/task'


# alias ls='lsd'
alias l='lsd -l'
alias la='lsd -a'
alias ll='lsd -la'
alias lt='lsd --tree'


# export PAGER=most
# export MANPAGER=most
export PATH="$PATH:$HOME/.composer/vendor/bin"


alias sandbox-drupal="cd ~/Projects/labs/php/sandbox-drupal"

# alias vim="nvim"
alias zshconfig="nvim ~/.zshrc"
# alias nvim-kickstart='NVIM_APPNAME="nvim-kickstart" nvim'
alias vim='NVIM_APPNAME="neovim-scn" nvim'



## Pour lazydocker et lazygit
alias lzd='lazydocker'
alias lzg='lazygit'



# set PATH so it includes user's private ~/.local/bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi



if [ -f ~/.aliases_work ]; then
	source ~/.aliases_work
else    
	print "404: ~/.alias_work not found."
fi

source "$HOME/.cargo/env"


export OSMACHINE="ubuntu"
if [[ "$OSTYPE" == "linux-gnu"* ]]; then
        # ...
	print "Je suis dans linux-gnu" 
	nerdfetch
elif [[ "$OSTYPE" == "darwin"* ]]; then
        # Mac OSX
	export OSMACHINE="apple"
	print "Je suis dans un Mac OS"

elif [[ "$OSTYPE" == "cygwin" ]]; then
        # POSIX compatibility layer and Linux environment emulation for Windows
elif [[ "$OSTYPE" == "msys" ]]; then
        # Lightweight shell and GNU utilities compiled for Windows (part of MinGW)
elif [[ "$OSTYPE" == "win32" ]]; then
        # I'm not sure this can happen.
elif [[ "$OSTYPE" == "freebsd"* ]]; then
        # ...
else
        # Unknown.
	print "Je suis dans ?????"
fi


 # ASDF TOOLS
. "$HOME/.asdf/asdf.sh"

## DIRENV necessaire pour l'outil ASDF
eval "$(direnv hook zsh)"
# source "${XDG_CONFIG_HOME:-$HOME/.config}/asdf-direnv/zshrc"

# eval "$(starship init zsh)"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
eval "$(zoxide init --cmd cd zsh)"


# New tool to see the history, with crtl+r
eval "$(atuin init zsh)"

eval "$(task --completion zsh)"

# !! Contents within this block are managed by juliaup !!

path=('/Users/sebastiencunin/.juliaup/bin' $path)

export PATH="/opt/homebrew/opt/task@2/bin:$PATH"
# Fx is a powerful tool, terminal JSON viewer
source <(fx --comp zsh)


function y() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")"
	yazi "$@" --cwd-file="$tmp"
	if cwd="$(cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
		builtin cd -- "$cwd"
	fi
	rm -f -- "$tmp"
}

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

eval "$(~/.local/bin/mise activate zsh)"

. "$HOME/.atuin/bin/env"


