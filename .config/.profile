# Source
source $HOME/.config/.alias 
source $HOME/.config/.secret

# export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python3
# export VIRTUALENVWRAPPER_VIRTUALENV=/usr/local/bin/virtualenv
# export VIRTUALENVWRAPPER_VIRTUALENV_ARGS='--no-site-packages'
# 
# export WORKON_HOME=$HOME/.virtualenvs
# export PROJECT_HOME=$HOME/Documents/
# 
# source /usr/local/bin/virtualenvwrapper.sh
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
        
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

export PYENV_VIRTUALENV_DISABLE_PROMPT=1

# Ignore duplicate in the history
export HISTCONTROL=ignoreboth
