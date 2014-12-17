set background=dark
colorscheme base16-railscasts

set t_Co=256
set term=xterm-256color
set foldmethod=syntax

set guifont=Source\ Code\ Pro\ for\ Powerline:h13

" Powerline + Syntatistic Config

let g:syntastic_javascript_checkers = ['jshint']
let g:syntastic_html_tidy_ignore_errors=[" proprietary attribute \"ng-"]
let g:syntastic_mode_map = { 'passive_filetypes': ['sass', 'scss'] }

let g:airline_powerline_fonts=1

let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

filetype plugin on
set encoding=utf-8
set fillchars+=stl:\ ,stlnc:\
set termencoding=utf-8
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
set laststatus=2
" set t_ut=
set cursorline
set smartindent

" Remove right and left hand scrollbars
set guioptions-=r
set guioptions-=L

" Dash integration
nmap <silent> <leader>d <Plug>DashSearch

" CtrlP Clear Cache
map <silent> <leader>cc :CtrlPClearAllCaches<CR>
nnoremap <silent> <C-T> :CtrlPBufTag<CR>
let g:ctrlp_custom_ignore = { 'dir':  '\v[\/](doc|tmp|node_modules|vendor)' }

" Persist views across opening and closing files
" autocmd BufWinLeave *.* mkview
" autocmd BufWinEnter *.* silent loadview

let g:tern_show_signature_in_pum=1
let g:tern_show_argument_hints='on_hold'

let g:javascript_enable_domhtmlcss=1

let g:ycm_add_preview_to_completeopt = 1
let g:ycm_register_as_syntastic_checker = 0
let g:ycm_confirm_extra_conf = 0
let g:ycm_collect_identifiers_from_tags_files = 1

let g:used_javascript_libs = 'jquery,underscore,angularjs,react,requirejs,jasmine,chai'

imap <Tab> <C-P>

set completeopt-=menu,preview

function! g:UltiSnips_Complete()
    call UltiSnips#ExpandSnippet()
    if g:ulti_expand_res == 0
        if pumvisible()
            return "\<C-n>"
        else
            call UltiSnips#JumpForwards()
            if g:ulti_jump_forwards_res == 0
               return "\<TAB>"
            endif
        endif
    endif
    return ""
endfunction

au BufEnter * exec "inoremap <silent> " . g:UltiSnipsExpandTrigger . " <C-R>=g:UltiSnips_Complete()<cr>"


inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

filetype plugin on
set ofu=syntaxcomplete#Complete
au FileType php setl ofu=phpcomplete#CompletePHP
au FileType ruby,eruby setl ofu=rubycomplete#Complete
au FileType html,xhtml setl ofu=htmlcomplete#CompleteTags
au FileType css setl ofu=csscomplete#CompleteCSS

" imap <C-J> <Plug>snipMateNextOrTrigger
" smap <C-J> <Plug>snipMateNextOrTrigger
