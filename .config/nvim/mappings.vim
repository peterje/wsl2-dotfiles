let mapleader = " "
nmap <silent> gd <Plug>(coc-definition)
nnoremap <silent> K :call Show_documentation()<CR>
nmap <C-n> :NERDTreeToggle<CR>
vmap <leader>c <Plug>Commentary
nmap <leader>r :so ~/.config/nvim/init.vim<CR>
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ Check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
inoremap <expr> <Tab>   pumvisible() ? "\<Down>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<Up>" : "\<S-Tab>"
nmap <leader>rn <Plug>(coc-rename)
