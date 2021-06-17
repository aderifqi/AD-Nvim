if exists('g:plugs["defx-git"]')
  call defx#custom#column('git', 'column_length', 1)

  call defx#custom#column('git', 'raw_mode', 0)

  call defx#custom#column('git', 'indicators', {
  \ 'modified'  : 'm',
  \ 'staged'    : '+',
  \ 'untracked' : '*',
  \ 'renamed'   : 'r',
  \ 'unmerged'  : '=',
  \ 'ignored'   : 'i',
  \ 'deleted'   : 'x',
  \ 'unknown'   : '?'
  \ })

  hi defx_git_untracked ctermfg=214 ctermbg=none
  hi defx_git_ignored   ctermfg=214 ctermbg=none
  hi defx_git_unknown   ctermfg=214 ctermbg=none
  hi defx_git_renamed   ctermfg=214 ctermbg=none
  hi defx_git_modified  ctermfg=214 ctermbg=none
  hi defx_git_unmerged  ctermfg=214 ctermbg=none
  hi defx_git_deleted   ctermfg=214 ctermbg=none
  hi defx_git_staged    ctermfg=214 ctermbg=none
endif
