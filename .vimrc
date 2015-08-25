set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'jgdavey/vim-turbux'
Plugin 'sheerun/vim-wombat-scheme'
Plugin 'mhinz/vim-janah'
Plugin 'kchmck/vim-coffee-script'
Plugin 'ryanoasis/vim-devicons'
Plugin 'NLKNguyen/papercolor-theme'
Plugin 'szw/vim-g'
Plugin 'AndrewRadev/splitjoin.vim'
Plugin 'craigemery/vim-autotag'
Plugin 'majutsushi/tagbar'
Plugin 'ngmy/vim-rubocop'
Plugin 'thoughtbot/vim-rspec'
Plugin 'endel/vim-github-colorscheme'
Plugin 'elzr/vim-json'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'chrisbra/csv.vim'
Plugin 'kana/vim-textobj-user'
Plugin 'nelstrom/vim-textobj-rubyblock'
Plugin 'benmills/vimux'
Plugin 'gmarik/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-unimpaired'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-dispatch'
Plugin 'vim-scripts/Align'
Plugin 'bling/vim-airline'
Plugin 'rking/ag.vim'
Plugin 'FelikZ/ctrlp-py-matcher'
Plugin 'matthewsimo/angular-vim-snippets'
Plugin 'Valloric/YouCompleteMe'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'rizzatti/dash.vim'
Plugin 'othree/javascript-libraries-syntax.vim'
Plugin 'marijnh/tern_for_vim'
Plugin 'SirVer/ultisnips'
Plugin 'ervandew/supertab'
Plugin 'burnettk/vim-angular'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-commentary'
Plugin 'ap/vim-css-color'
Plugin 'pangloss/vim-javascript'
Plugin 'heavenshell/vim-jsdoc'
Plugin 'othree/yajs.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'
Plugin 'cakebaker/scss-syntax.vim'
Plugin 'vim-scripts/xoria256.vim'
Plugin 'chriskempson/base16-vim'
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-bundler'
Plugin 'tpope/vim-haml'
Plugin '1995eaton/vim-better-javascript-completion'
Plugin 'gregsexton/MatchTag'
Plugin 'tmhedberg/matchit'
Plugin 'ain/vim-capistrano'

call vundle#end()

filetype on
filetype plugin on
filetype plugin indent on

syntax enable

let g:ycm_key_list_select_completion = ['<C-TAB>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-S-TAB>', '<Up>']
let g:ycm_collect_identifiers_from_tags_files = 1
let g:SuperTabDefaultCompletionType = '<C-Tab>'
let g:hybrid_use_Xresources = 1

let javascript_enable_domhtmlcss = 1

set t_Co=256
let base16colorspace=256
set relativenumber
set t_ut=
set number
set laststatus=2
set backspace=2
set nowrap
set ignorecase
set infercase
set noshowmode
" set encoding=utf-8
set encoding=utf8
set fillchars+=stl:\ ,stlnc:\
set termencoding=utf-8
set smartindent
set expandtab
set tabstop=2 shiftwidth=2 softtabstop=2
set autoindent
set cursorline
set smartindent
set lazyredraw
set hlsearch
set incsearch
set backupdir=~/.vim/backup//
set directory=~/.vim/swap//
set undodir=~/.vim/undo//
set wildmenu
set completeopt-=menu,preview
set guioptions-=r
set guioptions-=L
set guifont=Source\ Code\ Pro\ Powerline\ Plus\ Nerd\ File\ Types:h12
set foldmethod=manual
colorscheme PaperColor
set background=dark
set synmaxcol=300

" Powerline + Syntatistic Config

let g:syntastic_javascript_checkers = ['jshint']
let g:syntastic_html_tidy_ignore_errors=[" proprietary attribute \"ng-"]
let g:syntastic_mode_map = { 'passive_filetypes': ['sass', 'scss'] }
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:airline_symbols = {}
let g:airline_powerline_fonts=1

let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

autocmd vimenter AirlineAfterInit call AirlineInit()
" autocmd vimenter * NERDTree
" autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
" let NERDTreeQuitOnOpen = 1

" Dash integration
nmap <silent> <leader>d <Plug>DashSearch

" CtrlP Clear Cache
map <silent> <leader>cc :CtrlPClearAllCaches<CR>
nnoremap <silent> <C-T> :CtrlPTag<CR>
nnoremap <silent> <Leader>b :TagbarToggle<CR>

" Tabs
map <silent> <leader>tn :tabnew<CR>

" Misc
nmap <silent> <leader>o :only<CR>

" Git
map <silent> <leader>gs :Gstatus<CR>
map <silent> <leader>gd :Gdiff<CR>
map <silent> <leader>gc :Gcommit<CR>
map <silent> <leader>gp :Gpush<CR>
map <silent> <leader>gu :!git pull<CR>
map <silent> <leader>lg :!git lg<CR>
nnoremap <leader>gb :Gblame<cr>
nnoremap <leader>go :!git checkout<Space>
nnoremap <leader>gl :!git lg<cr>

" Ag
nnoremap <leader>f :Ag<Space>

" Enable JSX for .js files
let g:jsx_ext_required = 0

let g:ctrlp_custom_ignore = { 'dir':  '\v[\/](doc|tmp|node_modules|vendor)' }
let g:ctrlp_show_hidden = 1

let g:ackprg = 'ag --nogroup --nocolor --column'
let g:ctrlp_lazy_update = 0
let g:ctrlp_clear_cache_on_exit = 0
let g:ctrlp_user_command = 'ag %s -i --nocolor --nogroup --hidden
      \ --ignore .git
      \ --ignore .svn
      \ --ignore .hg
      \ --ignore .DS_Store
      \ --ignore "**/*.pyc"
      \ -g ""'

let g:ctrlp_match_func = { 'match': 'pymatcher#PyMatch' }

if executable('ag')
  set grepprg=ag\ --nogroup\ --nocolor
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
  let g:ctrlp_use_caching = 0
endif

" Nerdtree Config
let NERDTreeShowHidden=1
map <silent> <leader>n :NERDTreeToggle<CR>
let NERDTreeIgnore=['\.DS_Store$', '\.vim$']

let g:javascript_enable_domhtmlcss=1

let g:ycm_add_preview_to_completeopt = 1
let g:ycm_register_as_syntastic_checker = 0
let g:ycm_confirm_extra_conf = 0
let g:ycm_collect_identifiers_from_tags_files = 1

let g:used_javascript_libs = 'jquery,underscore,angularjs,react,requirejs,jasmine,chai'

imap <Tab> <C-P>

set ofu=syntaxcomplete#Complete
au FileType php setl ofu=phpcomplete#CompletePHP
au FileType ruby,eruby setl ofu=rubycomplete#Complete
au FileType html,xhtml setl ofu=htmlcomplete#CompleteTags
au FileType css setl ofu=csscomplete#CompleteCSS

imap <C-J> <Plug>snipMateNextOrTrigger
smap <C-J> <Plug>snipMateNextOrTrigger
let g:airline_theme='powerlineish'

" RuboCop Mappings
map <silent> <leader>ru :RuboCop<CR>
map <silent> <leader>rf :RuboCop --auto-correct<CR>

" Rails / Ruby Mappings
map <silent> <leader>rc :Dispatch Rails console<CR>
map <silent> <leader>rm :Rake db:migrate<CR>
map <silent> <leader>q :ccl<CR>
map <silent> <leader>qo :copen<CR>

" RSpec
let g:rspec_command = "Dispatch rspec {spec}"

map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>

" Convert HTML to Haml, ensuew the html2haml gem is installed
nmap <leader>h :%!html2haml --erb 2> /dev/null<CR>:set ft=haml<CR>
vmap <leader>h :!html2haml --erb 2> /dev/null<CR>

" Ag search for current word under cursor
map <leader>w :Ag <cword><cr>
map <leader>ws :FixWhitespace<cr>

" Format JSON
map <leader>js :%!python -m json.tool<cr>
" Misc
map <leader>f{ :normal va{V=<cr>
map <leader>fa :normal vf"f"<cr>

" Tab Navigation
nnoremap th :tabnext<CR>
nnoremap tl :tabprev<CR>
nnoremap tn :tabnew<CR>

" View .vimrc
map <leader>v :sp ~/.vimrc<cr>
