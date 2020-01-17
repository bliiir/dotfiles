########################################
# Upgrade pip
########################################
#pip install --upgrade pip
#pip3 install --upgrade pip

########################################
# scientific packages
########################################
pip3 install numpy matplotlib scipy pandas seaborn sklearn

########################################
# other
########################################
pip3 install pytest thefuck

########################################
# powerline (tmux and zsh dependency)
########################################
if [[ $OS == "Linux" ]]; then
	sudo apt-get -y install powerline
fi
pip install --user powerline-status
pip3 install --user powerline-status

########################################
# pyenv
########################################
git clone https://github.com/pyenv/pyenv.git ~/.pyenv
echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bash_profile
echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bash_profile
echo -e 'if command -v pyenv 1>/dev/null 2>&1; then\n  eval "$(pyenv init -)"\nfi' >> ~/.bash_profile
