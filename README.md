# bliiir's dotfiles
Forked from [Jan's dotfiles](https://github.com/jancr/dotfiles)


## Dependencies:

### 1. Install yadm - Yet Another Dotfiles Manager 

#### OSX
`brew install yadm`

#### Ubuntu / Debian
```
sudo apt-get install -y software-properties-common
sudo add-apt-repository -y ppa:flexiondotorg/yadm
sudo apt-get update
sudo apt-get -y install yadm
```

### 2. Install the rest
```
yadm clone --hard https://github.com/jancr/dotfiles
bash ~/bin/dotfiles.sh
```


