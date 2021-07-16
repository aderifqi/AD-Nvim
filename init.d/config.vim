" hardbefore plugin loaded =====

" Polyglot
set nocompatible
let g:polyglot_disabled = ['vue', 'vue.plugin', 'vuejs']

" ==== Load Plugin ====
source /home/ad/.config/nvim/init.d/plugins.vim

" ====================================================================== "
" ===                          Plugin                                === "
" ====================================================================== "



" ==== lexima.vim rule ====
let g:lexima_enable_basic_rules = 1

" ==== Airline ====
"  displays all buffers when there's only one tab open
let g:airline#extensions#tabline#enabled = 1
"let g:airline_theme = 'gruvbox_material'

" ==== close tag ====
let g:closetag_filenames = '*.html,*.xhtml,*.phtml'
let g:closetag_shortcut = '>'

" ==== snippets ====
"let g:UltiSnipsSnippetDirectories=['$HOME/.config/nvim/UltiSnips']
"let g:UltiSnipsUsePythonVersion = 3
"let g:UltiSnipsExpandTrigger="<c-q>"
"let g:UltiSnipsJumpForwardTrigger="<c-b>"
"let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" ==== prettier ====
command! -nargs=0 Prettier :CocCommand prettier.formatFile

" ===== coc =====
" --
" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" -- Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif



" ====================================================================== "
" ===                          Custom Color                          === "
" ====================================================================== "

" ===== Grubox ==== 
"source $HOME/.config/nvim/colorscheme/gruvbox_material_custom.vim
let g:gruvbox_material_background = 'medium'
let g:gruvbox_material_visual = 'grey background'
let g:gruvbox_material_disable_italic_comment = 0
let g:gruvbox_material_enable_italic = 1
let g:gruvbox_material_sign_column_background = 'none'
let g:gruvbox_material_better_performance = 1
colorscheme gruvbox-material
"let g:gruvbox_contrast_dark = '(medium)'


" ===== Git ==== 
hi SignifySignAdd guibg=NONE
hi SignifySignDelete guibg=NONE
hi SignifySignChange guibg=NONE
hi SignColumn ctermfg=NONE guibg=NONE

" ====================================================================== "
" ===                          Key Mapping                           === "
" ====================================================================== "
"
" 
let mapleader = ","
" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)


" Prettier
map <leader>P :Prettier<CR>

" use ctrl+hjkl to move between split/vsplit panels
tnoremap <C-h> <C-\><C-n><C-w>h
tnoremap <C-j> <C-\><C-n><C-w>j
tnoremap <C-k> <C-\><C-n><C-w>k
tnoremap <C-l> <C-\><C-n><C-w>l
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

"File Explorer 
"map <C-n> :NERDTreeToggle<CR>  
map <C-n> :Defx<CR>  

imap qq <Esc>
map ; :
nnoremap <leader><leader> <c-^>

" remove hiligh after search
map  <CR> :nohl<CR>

" Coc
map <leader>c :CocCommand<CR>
" FZF
map  <leader>f :Files<CR>
map <C-P> :GFiles<CR>
map <C-B> :Buffers<CR>
" buffer and tab
map <leader>m :tabn<CR>
map <leader>n :tabp<CR>
map <leader>k :bp<CR>
map <leader>l :bn<CR>
map <leader>bd :bd<CR>
nnoremap <C-t> :tabnew<CR>

tnoremap <Esc> <C-\><C-n>

"fzf config
nnoremap <C-p> :FZF<CR>
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-s': 'split',
  \ 'ctrl-v': 'vsplit'
  \}

" ====================================================================== "
" ===                          Config                                === "
" ====================================================================== "
" encoding
set encoding=utf-8

" ===== coc-nvim =====
"
" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" TextEdit might fail if hidden is not set.
set hidden

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup


" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" -----
" python venv
let g:python3_host_prog = '/home/ad/venv/python/bin/python'


" ----------------------------------------------
" clear color for signcolumn 
highlight clear SignColumn

" ==== vim-visual-multi || Multiple cursor editing ====
let g:VM_maps = {}
let g:VM_maps['Find Under']         = '<leader>d'           " replace C-n
"let g:VM_maps['Find Subword Under'] = '<C-d>'           " replace visual C-n

let g:SimpylFold_fold_import = 0
" italic comment
highlight Comment cterm=italic

set tabstop=2
set shiftwidth=2

set expandtab
set smartindent

set foldlevel=0
set foldmethod=manual

"set ttymouse=xterm2
set mouse=a
"change fillchars to ' '
set fillchars+=eob:\ 
" clipboard
set clipboard+=unnamedplus

set number
set title
set autowrite

"" emmet 
let g:user_emmet_leader_key=","

" open new split panes to right and below
set splitright
set splitbelow

" tab/space chars
set listchars=tab:\|\ 
"set listchars+=trail:·
set listchars+=extends:»
set listchars+=precedes:«
set listchars+=nbsp:·
set listchars+=space:·
set list

" ==== open terminal ====
" start insert when terminal is opened
au BufEnter * if &buftype == 'terminal' | :startinsert | endif
" open terminal with ctrl+c
function! OpenTerminal()
  split term://zsh
  resize 10
endfunction
nnoremap <c-c> :call OpenTerminal()<CR>

" Highlight the symbol and its references when holding the cursor.
"autocmd CursorHold * silent call CocActionAsync('highlight')
