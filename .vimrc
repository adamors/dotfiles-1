" colour scheme + colours

colorscheme xoria256
" let g:solarized_visibility = "high"
" let g:solarized_contrast = "high"
" let g:solarized_termcolors=16
" set background=dark

set t_Co=256
set term=xterm-256color

" Powerline + Syntatistic Config
let g:syntastic_javascript_checkers = ['jshint']
let g:syntastic_html_tidy_ignore_errors=[" proprietary attribute \"ng-"]
let g:Powerline_symbols = 'fancy'

filetype plugin on
set encoding=utf-8
set fillchars+=stl:\ ,stlnc:\
set termencoding=utf-8
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
set laststatus=2
set t_ut=
set cursorline

" Dash integration
nmap <silent> <leader>d <Plug>DashSearch

" CtrlP Clear Cache
map <silent> <leader>cc :CtrlPClearAllCaches<CR>

let g:tern_show_signature_in_pum=1
let g:tern_show_argument_hints='on_hold'
let g:ycm_add_preview_to_completeopt = 0
let g:ycm_register_as_syntastic_checker = 1
let g:ycm_confirm_extra_conf = 0
let g:ycm_collect_identifiers_from_tags_files = 1
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
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsListSnippets="<c-e>"
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
