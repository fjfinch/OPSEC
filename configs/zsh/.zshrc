start=$(date +%s%N)

setopt interactivecomments	# allow comments in interactive mode
setopt magicequalsubst		# enable filename expansion for arguments of the form ‘anything=expression’
setopt nonomatch		# hide error message if there is no match for the pattern
setopt notify			# report the status of background jobs immediately
setopt numericglobsort		# sort filenames numerically when it makes sense
setopt promptsubst		# enable command substitution in prompt
setopt glob_dots

autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
zstyle ':vcs_info:git:*' formats '%b'

# Hide EOL sign (%) in shell
PROMPT_EOL_MARK=""

# Don't consider certain characters part of the word
WORDCHARS=${WORDCHARS//\/}

# Aliases
alias history="history 0"
alias lla='ls -lA'
alias thm='sudo openvpn ~/Finch.ovpn'

# Pipx environments in PATH
export PATH="$PATH:/home/${USER}/.local/bin"

# configure `time` format
TIMEFMT=$'\nreal\t%E\nuser\t%U\nsys\t%S\ncpu\t%P'

# Keybindings
bindkey -e				# emacs key bindings
bindkey '^U' backward-kill-line		# ctrl + U
bindkey '^[[3;5~' kill-word		# ctrl + Del
bindkey '^[[1;5C' forward-word		# ctrl + ->
bindkey '^[[1;5D' backward-word		# ctrl + <-

# Tab completion + interactive drop down menu for completion features
autoload -Uz compinit
compinit -d ~/.cache/zcompdump
zstyle ':completion:*:*:*:*:*' menu select
#zstyle ':completion:*' auto-description 'specify: %d'
#zstyle ':completion:*' completer _expand _complete
#zstyle ':completion:*' format 'Completing %d'
#zstyle ':completion:*' group-name ''
#zstyle ':completion:*' list-colors ''
#zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
#zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'
#zstyle ':completion:*' rehash true
#zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
#zstyle ':completion:*' use-compctl false
#zstyle ':completion:*' verbose true

# History configurations
HISTFILE=~/.zsh_history
HISTSIZE=4000
SAVEHIST=4000
setopt hist_expire_dups_first	# delete duplicates first when HISTFILE size exceeds HISTSIZE
setopt hist_ignore_dups		# ignore duplicated commands history list
setopt hist_ignore_space	# ignore commands that start with space
setopt hist_verify		# show command with history expansion to user before executing

# Color support for files, folders, executables, etc.
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    export LS_COLORS="$LS_COLORS:ow=30;44:"			# fix ls color for folders with 777 permissions
    zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"     # include color in autosuggestions

    alias ls='ls --color=auto'
    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
    alias diff='diff --color=auto'
    alias ip='ip --color=auto'
    export LESS_TERMCAP_mb=$'\E[1;31m'				# begin blink
    export LESS_TERMCAP_md=$'\E[1;36m'				# begin bold
    export LESS_TERMCAP_me=$'\E[0m'				# reset bold/blink
    export LESS_TERMCAP_so=$'\E[01;33m'				# begin reverse video
    export LESS_TERMCAP_se=$'\E[0m'				# reset reverse video
    export LESS_TERMCAP_us=$'\E[1;32m'				# begin underline
    export LESS_TERMCAP_ue=$'\E[0m'				# reset underline
fi

VIRTUAL_ENV_DISABLE_PROMPT=1

# Prompt with prompt-Expansion
#PROMPT='%b%F{red}[%*] %B%F{blue}%n %B%F{green}%~%b%f > '

# Enable command-not-found. Shows if (similar) package exists, when not installed
if [ -f /etc/zsh_command_not_found ]; then
    . /etc/zsh_command_not_found
fi

# Enable zsh-syntax-highlighting.
if [ -f ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ]; then
    . ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
    ZSH_HIGHLIGHT_STYLES[unknown-token]=fg=white,underline
    ZSH_HIGHLIGHT_STYLES[arg0]=fg=cyan
    ZSH_HIGHLIGHT_STYLES[single-hyphen-option]=fg=green
    ZSH_HIGHLIGHT_STYLES[double-hyphen-option]=fg=green
fi

# Enable zsh-autosuggestionss. Grey auto-suggestions based on the history
if [ -f ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh ]; then
    . ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
    ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=#999'
fi

end=$(date +%s%N)
runtime=$(((end-start)/1000000))
PROMPT='%b%F{red}[%*] %b%f${runtime}ms ${vcs_info_msg_0_} %B%F{blue}%n %B%F{green}%~%b%f > '
