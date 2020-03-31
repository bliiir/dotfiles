# MacOSX dev setup
Forked from [Jan's dotfiles](https://github.com/jancr/dotfiles)

Also check out [Sourabh Bajaj](https://sourabhbajaj.com/) excellent [developer MacOSX setup guide](http://sourabhbajaj.com/mac-setup/).

## Installs

### xcode
`sudo xcode-select --install`

### Homebrew
`/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`

### Yadm
`brew install yadm`

### dotfiles
Clone dotfiles 
`yadm clone https://github.com/bliiir/dotfiles.git`

Run bash script
`bash ~/.local/bin/dotfiles.sh`


## Plugins

### Plugin manager

[vim-plug](https://github.com/junegunn/vim-plug)

### Plugins
Run `:PlugInstall` and `:PlugClean` in vim to update as needed

- ultisnips
- [supertab](https://github.com/ervandew/supertab)
- [vim-fugitive](https://github.com/tpope/vim-fugitive)
- YouCompleteMe
- vim-snippets
- [vim-airline-themes](https://github.com/vim-airline/vim-airline-themes)
- nerdtree
- jupyter-vim
- vim-surround
- syntastic
- impsort.vim
- vim-material-monokai
- tabular
- nerdcommenter
- vim-airline
- vimtex
- vim-markdown
