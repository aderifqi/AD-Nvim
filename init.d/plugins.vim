" auto-install vim-plug
"if empty(glob('~/.config/nvim/autoload/plug.vim'))
  "silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    "\ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  ""autocmd VimEnter * PlugInstall
  ""autocmd VimEnter * PlugInstall | source $MYVIMRC
"endif
call plug#begin('$HOME/.local/share/nvim/plugged')
" Track the engine.
Plug 'SirVer/ultisnips'
" Snippets are separated from the engine. Add this if you want them:
Plug 'honza/vim-snippets'

" Better Syntax Support
Plug 'sheerun/vim-polyglot'
" File Explorer
"Plug 'preservim/nerdtree' | 
            "\ Plug 'Xuyuanp/nerdtree-git-plugin' |
"Plug 'PhilRunninger/nerdtree-visual-selection'

"Enables NERDTree to open, delete, move, or copy multiple Visually-selected files at once.
"Defx is a dark powered plugin for Neovim/Vim to browse files.
Plug 'Shougo/defx.nvim'
""icon defx
Plug 'kristijanhusak/defx-icons'
"Plug 'kristijanhusak/defx-git'
"phpactor
Plug 'phpactor/phpactor', { 'tag': '*'}
" Auto pairs for '(' '[' '{'
"Plug 'jiangmiao/auto-pairs'
Plug 'cohama/lexima.vim'
" A light and configurable statusline/tabline plugin for Vim
"Plug 'itchyny/lightline.vim'
" Code Completion engine
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" ## colorscheme ##
" Dracula color
Plug 'dracula/vim', {'as': 'dracula'}
" gruvbox
Plug 'morhetz/gruvbox'
"one dark
Plug 'joshdick/onedark.vim'
" python auto-completion
" Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'zchee/deoplete-jedi' 
" statusbar 
Plug 'vim-airline/vim-airline' 
Plug 'vim-airline/vim-airline-themes'
" comment plugin
Plug 'scrooloose/nerdcommenter' 
" The plugin provides mappings to easily delete, change and add such surroundings in pairs
Plug 'tpope/vim-surround'
"  vim plug-in which provides support for expanding abbreviations similar to emmet.
Plug 'mattn/emmet-vim'
" fzf 
Plug 'junegunn/fzf', {'dir': '~/.fzf', 'do' : './install --all' }
Plug 'Junegunn/fzf.vim'
" change arrow key to ident
Plug 'aaren/arrowkeyrepurpose'

" vim python pep8 indent
Plug 'Vimjas/vim-python-pep8-indent'
Plug 'Yggdroot/indentLine'
"vim and search LSP symbols, tags in vim/neovim
Plug 'liuchengxu/vista.vim'
" add icon to plugin
Plug 'ryanoasis/vim-devicons'
" close tag html vim
Plug 'alvan/vim-closetag'

" ~~~~~~~~~~ for flutter or dart ~~~~~~~~~

Plug 'dart-lang/dart-vim-plugin'
Plug 'natebosch/vim-lsc'
Plug 'natebosch/vim-lsc-dart'
call plug#end()
