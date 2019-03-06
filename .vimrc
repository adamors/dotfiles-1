"vim:fdm=marker

call plug#begin('~/.vim/plugged')

" General Plugins {{{

Plug 'milkypostman/vim-togglelist'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-projectionist'
Plug 'andyl/vim-projectionist-elixir'
Plug 'ekalinin/Dockerfile.vim'
Plug 'AndrewRadev/splitjoin.vim'
Plug 'AndrewRadev/switch.vim'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'airblade/vim-gitgutter'
Plug 'benmills/vimux'
Plug 'christoomey/vim-tmux-navigator'
Plug 'ggreer/the_silver_searcher'
Plug 'godlygeek/tabular'
Plug 'gregsexton/MatchTag'
Plug 'janko-m/vim-test'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'junegunn/vim-easy-align'
Plug 'machakann/vim-highlightedyank'
Plug 'ntpeters/vim-better-whitespace'
Plug 'tpope/vim-markdown'
Plug 'rizzatti/dash.vim'
Plug 'scrooloose/nerdtree'
Plug 'sheerun/vim-polyglot'
Plug 'tmhedberg/matchit'
Plug 'tomtom/tlib_vim'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'w0rp/ale'
Plug 'firegoby/html_entities_helper.vim'
Plug 'TaDaa/vimade'

" }}}

" Rails / Ruby Plugins {{{

Plug 'kana/vim-textobj-user'
Plug 'nelstrom/vim-textobj-rubyblock', { 'for': 'ruby' }
Plug 'ngmy/vim-rubocop', { 'for': 'ruby' }
Plug 'thoughtbot/vim-rspec' , { 'for': 'ruby' }
Plug 'tpope/vim-bundler', { 'for': 'ruby' }
Plug 'tpope/vim-rails'
Plug 'vim-ruby/vim-ruby'

" }}}

" Javascript / Frontend Plugins {{{

Plug 'ap/vim-css-color', {'for': ['scss', 'css']}
Plug 'cakebaker/scss-syntax.vim', {'for': ['css', 'scss']}
Plug 'moll/vim-node'
Plug 'MaxMEllon/vim-jsx-pretty'
Plug 'pangloss/vim-javascript'
Plug 'jparise/vim-graphql'
Plug 'othree/javascript-libraries-syntax.vim'
Plug 'chemzqm/jsonc.vim'
Plug 'leafgarland/typescript-vim'

" }}}

" Elixir {{{

Plug 'slashmili/alchemist.vim'

" }}}

" Colorschemes {{{

Plug 'rakr/vim-one'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'mhartington/oceanic-next'
Plug 'morhetz/gruvbox'

" }}}

" Autocompletion {{{

Plug 'dietsche/vim-lastplace'
Plug 'neoclide/coc.nvim', {'do': { -> coc#util#build()}}
Plug 'Shougo/neco-vim'

" }}}

if (has("termguicolors"))
  set termguicolors
endif

call plug#end()

syntax enable
syntax on
filetype plugin indent on

colorscheme one

" Settings {{{

set updatetime=100
set signcolumn=yes
set cmdheight=1
set autoindent
set autoread
set background=dark
set backspace=2
set backupdir=~/.vim/backup//
set cindent
set complete-=i
set complete=.,b,w,u,t,k
set completeopt=menu,menuone,noinsert
set conceallevel=1
set copyindent
set directory=~/.vim/swap//
set expandtab
set fillchars+=stl:\ ,stlnc:\
set foldlevel=128
set foldmethod=indent
set guioptions-=L
set guioptions-=r
set hidden
set hlsearch
set ignorecase
set incsearch
set infercase
set laststatus=2
set lcs=tab:\-\
set list
set nocursorcolumn
set noea
set noshowmode
set noshowmode
set nowrap
set number
set omnifunc=syntaxcomplete#Complete
set shortmess+=c
set smartindent
set smartcase
set splitbelow
set splitright
set tabstop=2 shiftwidth=2 softtabstop=2
set termencoding=utf-8
set undodir=~/.vim/undo//
set wildignorecase
set wildmenu
set wildmode=longest:full,full
set updatetime=100

" }}}

"--- Key Mapping
source ~/dotfiles/vim/mappings.vim

" Note: brew install highlight
let g:fzf_files_options =
  \ '--preview "(highlight -O ansi {} || cat {}) 2> /dev/null | head -'.&lines.'"'

" Note: brew install ag
if executable('ag')
  set grepprg=ag\ --nogroup\ --nocolor
  let g:ackprg = 'ag --nogroup --nocolor --column'
endif

let NERDTreeIgnore=['\.DS_Store$', '\.vim$']
let NERDTreeQuitOnOpen=1
let NERDTreeShowHidden=1
let g:NERDTreeMinimalUI=1
let g:airline_powerline_fonts = 1
let g:airline_theme='jellybeans'
let g:ale_sign_column_always = 1
let g:ale_sign_error = '✗'
let g:ale_sign_warning = '▲'
let g:javascript_enable_domhtmlcss=1
let g:javascript_plugin_jsdoc = 1
let g:jsx_ext_required = 0
let g:polyglot_disabled = ['javascript', 'jsx']
let g:rubycomplete_rails = 1
let g:used_javascript_libs = 'jquery,underscore,angularjs,react,requirejs,jasmine,chai'
let g:vimrubocop_config = '~/.rubocop.yml'
let test#strategy = 'dispatch'

if has('nvim')
  nmap <bs> :<c-u>TmuxNavigateLeft<cr>
  tnoremap <Leader><ESC> <C-\><C-n>
endif

au BufRead,BufNewFile *.es6 setfiletype javascript
au BufRead,BufNewFile *.nxml setfiletype ruby
au BufRead,BufNewFile *.jbuilder setfiletype ruby

autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd BufWritePre * StripWhitespace

" ALE Config

let g:ale_linters = {
\  'javascript': [
\     'eslint'
\   ],
\  'scss': [
\     'stylelint'
\   ],
\  'ruby': [
\     'rubocop',
\     'reek'
\   ],
\  'elixir': [
\     'mix_dialyxir',
\     'credo'
\   ]
\  }

let g:ale_fixers = {
\  'ruby': [
\    'rufo'
\   ],
\  'html': [
\    'prettier'
\   ],
\  'javascript': [
\    'prettier',
\    'eslint'
\   ],
\  'json': [
\    'prettier',
\   ],
\  'scss': [
\    'prettier'
\   ],
\  'elixir': [
\    'mix_format'
\   ]
\  }

function! SynStack()
  if !exists("*synstack")
    return
  endif
  echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc

if exists('&inccommand')
  set inccommand=split
endif

command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --column --ignore-case --follow --fixed-strings --line-number --no-heading --color=always '.shellescape(<q-args>), 1,
  \   <bang>0 ? fzf#vim#with_preview('up:60%')
  \           : fzf#vim#with_preview('right:50%:hidden', '?'),
  \   <bang>0)


highlight NonText ctermfg=7 guifg=gray
highlight jsThis cterm=NONE gui=NONE guifg=orange
highlight link ALEErrorSign Title
highlight link ALEWarningSign String

autocmd Filetype haml setlocal cursorcolumn
autocmd Filetype yaml setlocal cursorcolumn

let airline#extensions#coc#error_symbol = 'Error:'
let airline#extensions#coc#error_symbol = 'Warning:'
let airline#extensions#coc#stl_format_err = '%E{[%e(#%fe)]}'
let airline#extensions#coc#stl_format_warn = '%W{[%w(#%fw)]}'
let g:airline_section_error = '%{airline#util#wrap(airline#extensions#coc#get_error(),0)}'
let g:airline_section_warning = '%{airline#util#wrap(airline#extensions#coc#get_warning(),0)}'
let g:airline#extensions#tabline#enabled = 0

let g:enable_bold_font = 1
let g:markdown_fenced_languages = ['css', 'javascript', 'js=javascript', 'typescript']

inoremap <silent><expr> <c-space> coc#refresh()

nmap <silent> [c <Plug>(coc-diagnostic-prev)
nmap <silent> ]c <Plug>(coc-diagnostic-next)
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <leader>rn <Plug>(coc-rename)

vmap <leader>a <Plug>(coc-codeaction-selected)
nmap <leader>a <Plug>(coc-codeaction-selected)

" Remap for do codeAction of current line
nmap <leader>ac <Plug>(coc-codeaction)
" Fix autofix problem of current line
nmap <leader>qf <Plug>(coc-fix-current)
" Show all diagnostics
nnoremap <silent> cd  :<C-u>CocList diagnostics<cr>
nnoremap <silent> ce  :<C-u>CocList extensions<cr>
nnoremap <silent> cc  :<C-u>CocList commands<cr>

set updatetime=300

autocmd CursorHoldI,CursorMovedI * silent! call CocActionAsync('showSignatureHelp')
autocmd CursorHold * silent call CocActionAsync('highlight')
autocmd User CocQuickfixChange :call fzf_quickfix#run()

nmap <leader>ac  <Plug>(coc-codeaction)

" Use K for show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if &filetype == 'vim'
    execute 'h '.expand('<cword>')
  else
    call CocActionAsync('doHover')
  endif
endfunction

inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<CR>"

let g:ale_set_signs = 0
let g:ale_lint_on_text_changed = 'normal'
let g:ale_lint_on_insert_leave = 1
let g:ale_lint_delay = 0

let g:vimade = {}
let g:vimade.fadelevel = 0.5
let g:vimade.enablesigns = 1

hi Normal guibg=#1B1E2B
hi ALEWarning guifg=#FF0000 guibg=#ffffff
hi ALEError guifg=#FF0000 guibg=#ffffff
hi ALEErrorLine guibg=#3F3F41
hi ALEWarningLine guibg=#3F3F41
hi SpellBad gui=undercurl guibg=NONE
hi ColorColumn guibg=NONE guifg=#555566
hi Normal guibg=#171b23
hi NonText guifg=#171b23
hi DiffChange guibg=#232c45 guifg=NONE gui=NONE
hi DiffText guibg=#202087 guifg=NONE gui=NONE
hi DiffAdd guibg=#105501 guifg=NONE gui=NONE
hi DiffDelete guibg=#cd1010 guifg=#cd1010 gui=NONE
hi VertSplit guifg=#223322
hi LightlineRight_active_2 guifg=#ABB2BF



" hi jsObjectKey guifg=#DE9E60
" hi jsxAttrib guifg=#DE9E60
" highlight SignColumn guibg=#1D2021
