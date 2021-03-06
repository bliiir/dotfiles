# Source environment settings
source ~/.config/.profile 

#------------------------------------------------------------------------------- 
 
# Stolen from Jan Christians Refsgaards dotfiles

OS=`uname -s`
export TERM=xterm-256color

################################################################################
# antibody // oh-my-zsh // antigen // zgen
################################################################################
# use antibidy for some stuff because it is faster
# antibody bundle < ~/.zsh/antibody.plugins >> ~/.zsh/antibody.sources

# import zle before oh-my-zsh
zmodload zsh/zle

# and antibody for the rest
source ~/.local/bin/antigen.zsh
#antigen init ~/.zsh/.antogenrc

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle vi-mode
antigen bundle thefuck
antigen bundle pip
antigen bundle command-not-found
antigen bundle autojump
antigen bundle compleat
antigen bundle npm
antigen bundle z
antigen bundle git
antigen bundle pyenv
antigen bundle pip
antigen bundle yarn
antigen bundle cargo

if [[ $OS == "Darwin" ]]; then
	antigen bundle osx
	antigen bundle iterm2
fi
#antigen bundle fasd

# other repos
antigen bundle tarruda/zsh-autosuggestions
antigen bundle zsh-users/zsh-syntax-highlighting 
antigen theme https://github.com/caiogondim/bullet-train-oh-my-zsh-theme bullet-train

antigen apply

# Enables terminal application mode and updates editor information.
zle -N zle-line-init

# this is set such that z works on windows linux subsystem
setopt nobgnice


# add python scripts to path
if [[ $OS == "Darwin" ]]; then
	export PATH="$PATH:$HOME/Library/Python/3.7/bin"
fi
################################################################################
eval $(thefuck --alias fix)
# mangle PATHS
export PATH="$HOME/bin:$HOME/.local/bin:$PATH"
# look for python stuff in the local directory
if [ -n "${PYTHONPATH+1}" ]; then
	export PYTHONPATH="$PYTHONPATH:.:$HOME/Projects/python_modules"  
else
	export PYTHONPATH=".:$HOME/Projects/python_modules"
fi


################################################################################
# pyenv
################################################################################
# export PYENV_ROOT="$HOME/.local/pyenv"
export PATH="$PYENV_ROOT//bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
export PYENV_VIRTUALENV_DISABLE_PROMPT=1
pyenv activate inbio

# source sub configs
[ -f $HOME/.local/qfc/bin/qfc.sh ] && source $HOME/.local/qfc/bin/qfc.sh
source $HOME/.config/zsh/aliases.zsh
# source $HOME/.config/zsh/vim.zsh
# if [OS == 'Darwin' && -f $HOME/.config/zsh/darwin.zsh]; then
	# source $HOME/.config/zsh/darwin.zsh
# fi;

# History settings
export HISTFILE=~/.history
export HIST_STAMPS="dd/mm/yyyy"
setopt EXTENDED_HISTORY     # store date in .history
export SAVEHIST=9999999     # number of lines to save
export HISTSIZE=$SAVEHIST   # number of lines from .history to read in at start of new shell
setopt HIST_IGNORE_ALL_DUPS # history is de-duped
#setopt INC_APPEND_HISTORY  # append as we execute, not when we leave the shell
#setopt SHARE_HISTORY       # share one history between all open shells

# enable **/file expansion, negation [^ab]*, and more
setopt EXTENDED_GLOB

################################################################################
# UTF-8
################################################################################
export LANG="en_US.UTF-8"  
export LC_COLLATE="en_US.UTF-8"  
export LC_CTYPE="en_US.UTF-8"  
export LC_MESSAGES="en_US.UTF-8"  
export LC_MONETARY="en_US.UTF-8"  
export LC_NUMERIC="en_US.UTF-8"  
export LC_TIME="en_US.UTF-8"  
export LC_ALL="en_US.UTF-8"  

################################################################################
# no training wheels!
################################################################################
setopt rm_star_silent

################################################################################
export DISABLE_AUTO_TITLE="true" 

# if you do not have admin rights, then change defaults to local install
if groups | egrep "admin|sudo" > /dev/null; then; else
	source $HOME/.config/zsh/no_admin.zsh
fi

# source local server settings last so it can overwrite defaults
[ -f $HOME/.config/zsh/extra.zsh ] && source $HOME/.config/zsh/extra.zsh

# force spark to use python3!
export PYSPARK_PYTHON=python3

# Vim bindkey
# bindkey -v
export KEYTIMEOUT=1 # Kill the timelag

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# Thefuck
eval 
	fuck () {
		TF_PYTHONIOENCODING=$PYTHONIOENCODING;
		export TF_SHELL=zsh;
		export TF_ALIAS=fuck;
		TF_SHELL_ALIASES=$(alias);
		export TF_SHELL_ALIASES;
		TF_HISTORY="$(fc -ln -10)";
		export TF_HISTORY;
		export PYTHONIOENCODING=utf-8;
		TF_CMD=$(
			thefuck THEFUCK_ARGUMENT_PLACEHOLDER $@
		) && eval $TF_CMD;
		unset TF_HISTORY;
		export PYTHONIOENCODING=$TF_PYTHONIOENCODING;
		test -n "$TF_CMD" && print -s $TF_CMD
	}

