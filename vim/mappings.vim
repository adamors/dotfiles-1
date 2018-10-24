" vim:fdm=marker

" let mapleader=" "


" Git Mappings {{{

map <silent> <leader>gs :Gstatus<CR>
map <silent> <leader>gd :Gdiff<CR>
map <silent> <leader>gc :Gcommit<CR>
map <silent> <leader>gp :Gpush<CR>
map <silent> <leader>gu :terminal git pull<CR>
map <silent> <leader>gl :terminal git lg<CR>
map <silent> <leader>gb :Gblame<cr>
map <leader>gco :terminal git checkout<Space>

" }}}

nmap <silent> <leader>d <Plug>DashSearch
nmap <silent> <leader>bn :bn<CR>

" Plug Mappings

map <silent> <leader>pu :PlugUpdate<CR>
map <silent> <leader>pi :PlugInstall<CR>
map <silent> <leader>pc :PlugClean<CR>

" Fzf Mappings & Config

nnoremap <silent> <space> :Files<CR>
nnoremap <leader>b :Buffers<CR>


map <silent> <leader>n :NERDTreeToggle<CR>

map <silent> <leader>ru :RuboCop<CR>
map <silent> <leader>rf :RuboCop --auto-correct<CR>
map <silent> <leader>rr :!ruby %<CR>

map <silent> <leader>q :call ToggleQuickfixList()<CR>
map <silent> <leader>af :ALEFix<CR>

map <Leader>tf :TestFile<CR>
map <Leader>tn :TestNearest<CR>
map <Leader>tl :TestLast<CR>
map <Leader>ts :TestSuite<CR>
map <silent> <leader>qo :copen<CR>

" Convert HTML to Haml, ensure the html2haml gem is installed

nmap <leader>h :%!html2haml --erb 2> /dev/null<CR>:set ft=haml<CR>
vmap <leader>h :!html2haml --erb 2> /dev/null<CR>

" Misc

map <leader>f{ :normal va{V=<cr>
map <leader>fa :normal vf"f"<cr>

" .vimrc editing

nmap <leader>v :sp $MYVIMRC<CR>
nmap <Leader>s :source $MYVIMRC<CR>

" Disable K looking up stuff
" map K <Nop>
" Use K for show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if &filetype == 'vim'
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Turn hlsearch off when pressing return
nnoremap <silent> <cr> :nohlsearch<cr>

" Ale completion
nmap <silent> <C-p> <Plug>(ale_previous_wrap)
nmap <silent> <C-n> <Plug>(ale_next_wrap)

nmap <silent> <leader>ne <Plug>(ale_previous_wrap)
nmap <silent> <leader>pe <Plug>(ale_next_wrap)

" Misc Stuff
nmap <silent> <leader>o :tabedit %<cr>

" Command Mode Mappings

cnoremap <C-a> <Home>
cnoremap <C-e> <End>

" Search selected text
vnoremap // y/<C-R>"<CR>
inoremap <C-Space> <C-x><C-o>
inoremap <C-@> <C-Space>

noremap g= mmgg=G`m

" Terminal Mappings

nnoremap <C-T><C-V> :vsp<cr>:terminal<cr>i
nnoremap <C-T>v :vsp<cr>:terminal<cr>i
nnoremap <C-T><C-S> :sp<cr>:terminal<cr>i
nnoremap <C-T>s :sp<cr>:terminal<cr>i
nnoremap <C-T><C-T> :tabe<cr>:terminal<cr>i
nnoremap <C-T>t :tabe<cr>:terminal<cr>i
nnoremap <C-T><C-E> :terminal<cr>i
nnoremap <C-T>e :terminal<cr>i

map <leader>fw :exec 'Rg' expand("<cword>")<CR>
map <leader>ff :exec 'Files' expand("<cword>")

command! W :w
command! Q :q
command! Qa :qa
