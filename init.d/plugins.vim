" ====================================================================== "
" ===                          Plugins                         === "
" ====================================================================== "
"
" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif
call plug#begin('$HOME/.local/share/nvim/plugged')

" ======= Editing Plugins ======= "

" treesitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
" Use treesitter to autoclose and autorename html tag
Plug 'windwp/nvim-ts-autotag'

"" Track the engine.
"Plug 'SirVer/ultisnips'
"" Snippets are separated from the engine.
"Plug 'honza/vim-snippets'

" comment plugin
Plug 'scrooloose/nerdcommenter' 

" expanding abbreviations similar to emmet.
Plug 'mattn/emmet-vim'

" Auto close parentheses and repeat by dot dot dot...
Plug 'cohama/lexima.vim'
" The plugin provides mappings to easily delete, change and add such surroundings in pairs
Plug 'tpope/vim-surround'


" ======= Highlighting Plugins ======= "
"
" highlights CSS in javascript
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }

" Syntax highlighting for CJSON in Vim
Plug 'neoclide/jsonc.vim'
" Better syntax-highlighting Support
Plug 'sheerun/vim-polyglot'


" statusbar 
Plug 'vim-airline/vim-airline' 
Plug 'vim-airline/vim-airline-themes'

" fzf 
Plug 'junegunn/fzf', {'dir': '~/.fzf', 'do' : './install --all' }
Plug 'Junegunn/fzf.vim'

" change arrow key to ident
Plug 'aaren/arrowkeyrepurpose'

"vim and search LSP symbols, tags in vim/neovim
Plug 'liuchengxu/vista.vim'
" add icon to plugin
Plug 'ryanoasis/vim-devicons'
" close tag html vim
Plug 'alvan/vim-closetag'

" === Programing Plugins === "
" php ~ phpactor
"Plug 'phpactor/phpactor', {'for': 'php', 'tag': '*', 'do': 'composer install --no-dev -o'}

" python ~ auto-completion
Plug 'zchee/deoplete-jedi' 
" pep8 indent
Plug 'Vimjas/vim-python-pep8-indent'
"Plug 'Yggdroot/indentLine'

" javascript ~
" ReactJS JSX syntax highlighting
Plug 'mxw/vim-jsx'
" Generate JSDoc commands based on function signature
Plug 'heavenshell/vim-jsdoc'
" JSX syntax
Plug 'maxmellon/vim-jsx-pretty'

" Flutter and dart ~
Plug 'dart-lang/dart-vim-plugin'
Plug 'natebosch/vim-lsc'
Plug 'natebosch/vim-lsc-dart'


" ======= File Explorer ======="
"Defx is a dark powered plugin for Neovim/Vim to browse files.
Plug 'Shougo/defx.nvim'
""icon defx
Plug 'kristijanhusak/defx-icons'


" Intellisense Engine
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" ======= Git Plugins ======="
" Enable git changes to be shown in sign column
Plug 'mhinz/vim-signify'
Plug 'tpope/vim-fugitive'

" ======= Colorschema Plugins ======="
" gruvbox
Plug 'morhetz/gruvbox'
Plug 'sainnhe/gruvbox-material'



" ======= Docker Plugins ======="
Plug 'josa42/coc-docker'
" Multiple cursor editing
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
" Code folding 
Plug 'tmhedberg/SimpylFold'


call plug#end()
