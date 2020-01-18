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


## Notes
I am currently using vim-plug to manage plugins

These are the plugins I have installed:
supertab

### Plugins for vim
| Plugin | Description | vim-plug | | 
| :-- | :-- | :-- |
| [supertab][1]] | Tab completion | `Plug 'ervandew/supertab'`  |
| [vim-fugitive][2] | Git wrapper for Vim  | `Plug 'tpope/vim-fugitive'` |
| [vim-airline-themes][3] |   | `Plug 'vim-airline/vim-airline-themes'` |
| [vim-surround] |   |
| [syntastic] |   |
| [impsort.vim] |   |
| [nerdtree] |   |
| [jupyter-vim] |   |
| [vim-sensible] |   |
| [dracula] |   |
| [tabular] |   |
| [nerdcommenter] |   |
| [vim-airline] |   |
| [vimtex] |   |
| [vim-markdown] |   |
| [ultisnips] | | | 


## Plugin manager
| Plugin Manager | Description |
| :---  | :--- |
| [Pathogen][1] | |
| [NeoBundle][2] | |
| [Vundle][3] | |
| [Plug][4] | |
| [VAM][5] | |
| [Dein][6] | |
| [minpac][7] | |

[1]: https://github.com/ervandew/supertab
[2]: https://github.com/tpope/vim-fugitive
[3]: https://github.com/vim-airline/vim-airline-themes 

[1]: https://github.com/tpope/vim-pathogen
[2]: https://github.com/Shougo/neobundle.vim
[3]: https://github.com/VundleVim/Vundle.vim
[4]: https://github.com/junegunn/vim-plug
[5]: https://github.com/MarcWeber/vim-addon-manager
[6]: https://github.com/Shougo/dein.vim
[7]: https://github.com/k-takata/minpac/
