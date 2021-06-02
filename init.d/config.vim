colorscheme gruvbox 
let g:gruvbox_contrast_dark = '(medium)'
" lexima.vim rule
let g:lexima_enable_basic_rules = 1
"
"let g:lightline ={'colorscheme' : "darcula"}
let g:airline#extensions#tabline#enabled = 1
"let g:airline_powerline_fonts = 1
let g:airline_theme = 'gruvbox'

"" python venv
let g:python3_host_prog = '/home/ad/venv/python/bin/python'
"close tag
let g:closetag_filenames = '*.html,*.xhtml,*.phtml'
let g:closetag_shortcut = '>'
"NERDTREE
"let g:NERDTreeGitStatusUseNerdFonts = 1
"let g:NERDTreeGitStatusConcealBrackets = 0

" python completion enable at startup
"let g:deoplete#enable_at_startup = 1
" open the go-to function in split, not another buffer
"let g:jedi#use_splits_not_buffers = "right"
" 
" snippets
let g:UltiSnipsSnippetDirectories=['/home/ad/.config/nvim/UltiSnips']
let g:UltiSnipsUsePythonVersion = 3
let g:UltiSnipsExpandTrigger="<c-q>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
"~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ custem settings ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
" vim-visual-multi || Multiple cursor editing
let g:VM_maps = {}
let g:VM_maps['Find Under']         = '<C-d>'           " replace C-n
let g:VM_maps['Find Subword Under'] = '<C-d>'           " replace visual C-n

let g:SimpylFold_fold_import = 0
" italic comment
highlight Comment cterm=italic
"set tabstop=2
"set shiftwidth=2
set expandtab
set smartindent

set foldlevel=0
set foldmethod=manual

"set ttymouse=xterm2
set mouse=a
"change fillchars to ' '
set fillchars+=eob:\ 
" encoding
set encoding=utf-8
" disable mouse

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


set listchars=tab:\|\ 
"set listchars+=trail:·
set listchars+=extends:»
set listchars+=precedes:«
set listchars+=nbsp:·
set listchars+=space:·
set list
"~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ Mapping ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

" use ctrl+hjkl to move between split/vsplit panels
tnoremap <C-h> <C-\><C-n><C-w>h
tnoremap <C-j> <C-\><C-n><C-w>j
tnoremap <C-k> <C-\><C-n><C-w>k
tnoremap <C-l> <C-\><C-n><C-w>l
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

nnoremap <C-s> <C-d>
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
map <leader>d :bd<CR>
nnoremap <C-t> :tabnew<CR>

tnoremap <Esc> <C-\><C-n>

"fzf config
nnoremap <C-p> :FZF<CR>
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-s': 'split',
  \ 'ctrl-v': 'vsplit'
  \}

"~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ snippet ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

"~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ config nvim ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

" turn terminal to normal mode with escape
" start terminal in insert mode
au BufEnter * if &buftype == 'terminal' | :startinsert | endif
" open terminal on ctrl+n
function! OpenTerminal()
  split term://zsh
  resize 10
endfunction
nnoremap <c-c> :call OpenTerminal()<CR>

"function! NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
 "exec 'autocmd filetype nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:guibg .' guifg='. a:guifg
 "exec 'autocmd filetype nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
"endfunction

"call NERDTreeHighlightFile('jade', 'green', 'none', 'green', '#151515')
"call NERDTreeHighlightFile('ini', 'yellow', 'none', 'yellow', '#151515')
"call NERDTreeHighlightFile('md', 'blue', 'none', '#3366FF', '#151515')
"call NERDTreeHighlightFile('yml', 'yellow', 'none', 'yellow', '#151515')
"call NERDTreeHighlightFile('config', 'yellow', 'none', 'yellow', '#151515')
"call NERDTreeHighlightFile('conf', 'yellow', 'none', 'yellow', '#151515')
"call NERDTreeHighlightFile('json', 'yellow', 'none', 'yellow', '#151515')
"call NERDTreeHighlightFile('html', 'yellow', 'none', 'yellow', '#151515')
"call NERDTreeHighlightFile('styl', 'cyan', 'none', 'cyan', '#151515')
"call NERDTreeHighlightFile('css', 'cyan', 'none', 'cyan', '#151515')
"call NERDTreeHighlightFile('coffee', 'Red', 'none', 'red', '#151515')
"call NERDTreeHighlightFile('js', 'Red', 'none', '#ffa500', '#151515')
"call NERDTreeHighlightFile('php', 'Magenta', 'none', '#ff00ff', '#151515')

"let g:NERDTreeGitStatusIndicatorMapCustom = {
                "\ 'Modified'  :'M',
                "\ 'Staged'    :'✚',
                "\ 'Untracked' :'*',
                "\ 'Renamed'   :'➜',
                "\ 'Unmerged'  :'═',
                "\ 'Deleted'   :'✖',
                "\ 'Dirty'     :'✗',
                "\ 'Ignored'   :'☒',
                "\ 'Clean'     :'✔︎',
                "\ 'Unknown'   :'?',
                "\ }




inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

