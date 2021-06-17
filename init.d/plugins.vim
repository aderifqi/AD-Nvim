" auto-install vim-plug
"if empty(glob('~/.config/nvim/autoload/plug.vim'))
  "silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    "\ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  ""autocmd VimEnter * PlugInstall
  ""autocmd VimEnter * PlugInstall | source $MYVIMRC
"endif
call plug#begin('$HOME/.local/share/nvim/plugged')
" Colorscheme
Plug 'mhartington/oceanic-next'
"
" === Editing Plugins === "
" Trailing whitespace highlighting & automatic fixing
" Plug 'ntpeters/vim-better-whitespace'

"" Improved motion in Vim
"Plug 'easymotion/vim-easymotion'

"" Syntax highlighting for CJSON in Vim
Plug 'neoclide/jsonc.vim'

" =====
" Track the engine.
Plug 'SirVer/ultisnips'

" Snippets are separated from the engine.
Plug 'honza/vim-snippets'

" Better syntax-highlighting Support
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
"Plug 'cohama/lexima.vim'

" A light and configurable statusline/tabline plugin for Vim
"Plug 'itchyny/lightline.vim'
" Code Completion engine
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" === Git Plugins === "
" Enable git changes to be shown in sign column
Plug 'mhinz/vim-signify'
Plug 'tpope/vim-fugitive'

" ## colorscheme ##
" Dracula color
" Plug 'dracula/vim', {'as': 'dracula'}
" gruvbox
Plug 'morhetz/gruvbox'
"one dark
"Plug 'joshdick/onedark.vim'

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

" Docker 
Plug 'josa42/coc-docker'
" Multiple cursor editing
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
" Code folding 
Plug 'tmhedberg/SimpylFold'

" ~~~~~~~~~~ for flutter or dart ~~~~~~~~~
Plug 'dart-lang/dart-vim-plugin'
Plug 'natebosch/vim-lsc'
Plug 'natebosch/vim-lsc-dart'


" === Javascript Plugins === "
" Typescript syntax highlighting
Plug 'HerringtonDarkholme/yats.vim'

" ReactJS JSX syntax highlighting
Plug 'mxw/vim-jsx'

" Generate JSDoc commands based on function signature
Plug 'heavenshell/vim-jsdoc'

" ~~~~~~~~~~ for react native ~~~~~~~~~~~
"Plug 'pangloss/vim-javascript'
"Plug 'leafgarland/typescript-vim'
"Plug 'peitalin/vim-jsx-typescript'
"Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
"Plug 'jparise/vim-graphql'

" ~~~~~~~~~~~ vuejs ~~~~~~~~~
"Plug 'storyn26383/vim-vue'

call plug#end()
