colorscheme molokai

" let g:solarized_bold = 1
" let g:solarized_underline = 1
" let g:solarized_contrast = 'high'

set t_Co=256
set term=xterm-256color
set foldmethod=syntax

set guifont=Inconsolata-dz\ for\ Powerline:h13

" Powerline + Syntatistic Config

let g:syntastic_javascript_checkers = ['jshint']
let g:syntastic_html_tidy_ignore_errors=[" proprietary attribute \"ng-"]
let g:syntastic_mode_map = { 'passive_filetypes': ['sass', 'scss'] }
let g:airline_powerline_fonts=1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

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
set smartindent

" Remove right and left hand scrollbars
set guioptions-=r
set guioptions-=L

" Dash integration
nmap <silent> <leader>d <Plug>DashSearch

" CtrlP Clear Cache
map <silent> <leader>cc :CtrlPClearAllCaches<CR>
nnoremap <silent> <C-T> :CtrlPBufTag<CR>

" Persist views across opening and closing files
autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent loadview

let g:tern_show_signature_in_pum=1
let g:tern_show_argument_hints='on_hold'

let g:ycm_add_preview_to_completeopt = 0
let g:ycm_register_as_syntastic_checker = 0
let g:ycm_confirm_extra_conf = 0
let g:ycm_collect_identifiers_from_tags_files = 1

let g:used_javascript_libs = 'jquery,underscore,angularjs,react,requirejs,jasmine,chai'
" au FileType javascript call JavaScriptFold()

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


filetype plugin on
au FileType php setl ofu=phpcomplete#CompletePHP
au FileType ruby,eruby setl ofu=rubycomplete#Complete
au FileType html,xhtml setl ofu=htmlcomplete#CompleteTags
au FileType css setl ofu=csscomplete#CompleteCSS
