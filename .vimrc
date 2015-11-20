" set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'justincampbell/vim-railscasts'
Plugin 'kristijanhusak/vim-hybrid-material'
Plugin 'ratazzi/blackboard.vim'
Plugin 'mmazer/vim-github-colorscheme'
Plugin 'altercation/vim-colors-solarized'
Plugin 'itchyny/lightline.vim'
Plugin 'tpope/vim-rbenv'
Plugin 'jgdavey/vim-turbux'
Plugin 'mhinz/vim-janah'
Plugin 'AndrewRadev/splitjoin.vim'
Plugin 'elzr/vim-json'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'benmills/vimux'
Plugin 'gmarik/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-unimpaired'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-dispatch'
Plugin 'vim-scripts/Align'
Plugin 'rking/ag.vim'
Plugin 'FelikZ/ctrlp-py-matcher'
Plugin 'Valloric/YouCompleteMe'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'rizzatti/dash.vim'
Plugin 'SirVer/ultisnips'
Plugin 'ervandew/supertab'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-commentary'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'
Plugin 'gregsexton/MatchTag'
Plugin 'tmhedberg/matchit'

" Rails / Ruby Plugins
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-bundler'
Plugin 'tpope/vim-haml'
Plugin 'ngmy/vim-rubocop'
Plugin 'thoughtbot/vim-rspec'
Plugin 'kana/vim-textobj-user'
Plugin 'nelstrom/vim-textobj-rubyblock'

" SCSS / CSS Plugins
Plugin 'ap/vim-css-color'
Plugin 'cakebaker/scss-syntax.vim'

" Javascript Plugins
Plugin 'mxw/vim-jsx'
Plugin '1995eaton/vim-better-javascript-completion'
Plugin 'pangloss/vim-javascript'
Plugin 'othree/javascript-libraries-syntax.vim'
Plugin 'marijnh/tern_for_vim'
Plugin 'burnettk/vim-angular'
Plugin 'othree/yajs.vim'
Plugin 'kchmck/vim-coffee-script'

" Misc Plugins
Plugin 'szw/vim-tags'

" Colorschemes
Plugin 'chriskempson/base16-vim'

call vundle#end()

filetype on
filetype plugin on
filetype plugin indent on

syntax enable
syntax on

let g:rails_ctags_arguments = ['--languages=-javascript', '--fields=+l', '--exclude=.git', '--exclude=log']

let g:ycm_key_list_select_completion = ['<C-TAB>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-S-TAB>', '<Up>']
let g:ycm_collect_identifiers_from_tags_files = 1
let g:SuperTabDefaultCompletionType = '<C-Tab>'

let javascript_enable_domhtmlcss = 1
" let mapleader=" "

set number
set laststatus=2
set colorcolumn=80
set backspace=2
set nowrap
set ignorecase
set infercase
set noshowmode
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
set wildignorecase
set completeopt-=menu,preview
set guioptions-=r
set guioptions-=L
set guifont=Meslo\ LG\ S\ DZ\ Regular\ for\ Powerline\ Plus\ Nerd\ File\ Types:h12
set foldmethod=manual
set background=dark
silent! colorscheme hybrid_material
set synmaxcol=300
set complete-=i
set autoread

" Powerline + Syntatistic Config

" let g:syntastic_javascript_checkers = ['eslint']
" let g:syntastic_ruby_checkers = ['rubocop', 'mri']
let g:syntastic_html_tidy_ignore_errors=[" proprietary attribute \"ng-"]
let g:syntastic_mode_map = { 'passive_filetypes': ['sass', 'scss'] }
let g:syntastic_always_populate_loc_list = 0
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1

let g:airline_symbols = {}
let g:airline_powerline_fonts=1

let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

" autocmd vimenter AirlineAfterInit call AirlineInit()


" Dash integration
nmap <silent> <leader>d <Plug>DashSearch

" CtrlP Clear Cache
map <silent> <leader>cc :CtrlPClearAllCaches<CR>
nnoremap <silent> <C-T> :CtrlPTag<CR>

" Tabs
map <silent> <leader>tn :tabnew<CR>
map <silent> <leader>nt :tabnext<CR>
map <silent> <leader>pt :tabprevious<CR>

" Misc
nmap <silent> <leader>o :only<CR>

" Git
map <silent> <leader>gs :Gstatus<CR>
map <silent> <leader>gd :Gdiff<CR>
map <silent> <leader>gc :Gcommit<CR>
map <silent> <leader>gp :Gpush<CR>
map <silent> <leader>gu :Dispatch git pull<CR>
map <silent> <leader>gl :Dispatch git lg<CR>
map <silent> <leader>gb :Gblame<cr>
map <leader>go :Dispatch git checkout<Space>

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
autocmd VimEnter * wincmd p

let g:javascript_enable_domhtmlcss=1

let g:ycm_add_preview_to_completeopt = 1
let g:ycm_register_as_syntastic_checker = 0
let g:ycm_confirm_extra_conf = 0
let g:ycm_collect_identifiers_from_tags_files = 1
let g:ycm_collect_identifiers_from_comments_and_strings = 1

let g:used_javascript_libs = 'jquery,underscore,angularjs,react,requirejs,jasmine,chai'

imap <Tab> <C-P>

set ofu=syntaxcomplete#Complete
au FileType php setl ofu=phpcomplete#CompletePHP
au FileType ruby,eruby setl ofu=rubycomplete#Complete
au FileType html,xhtml setl ofu=htmlcomplete#CompleteTags
au FileType css setl ofu=csscomplete#CompleteCSS

imap <C-J> <Plug>snipMateNextOrTrigger
smap <C-J> <Plug>snipMateNextOrTrigger
" let g:airline_theme='powerlineish'

" RuboCop Mappings
map <silent> <leader>ru :RuboCop<CR>
map <silent> <leader>rf :RuboCop --auto-correct<CR>

" Rails / Ruby Mappings
map <silent> <leader>rc :Console<CR>
map <silent> <leader>rm :Rake db:migrate<CR>
map <silent> <leader>q :ccl<CR>
map <silent> <leader>qo :copen<CR>
map <silent> <leader>rr :!ruby %<CR>

" RSpec
let g:rspec_command = "Dispatch rspec {spec}"

map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>

" Convert HTML to Haml, ensure the html2haml gem is installed
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

" Disable K looking up stuff
map K <Nop>

command! W :w
command! Q :q

let NERDTreeQuitOnOpen=1

let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'fugitive', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component': {
      \   'readonly': '%{&filetype=="help"?"":&readonly?"⭤":""}',
      \   'modified': '%{&filetype=="help"?"":&modified?"+":&modifiable?"":"-"}',
      \   'fugitive': '%{exists("*fugitive#head")?fugitive#head():""}'
      \ },
      \ 'component_visible_condition': {
      \   'readonly': '(&filetype!="help"&& &readonly)',
      \   'modified': '(&filetype!="help"&&(&modified||!&modifiable))',
      \   'fugitive': '(exists("*fugitive#head") && ""!=fugitive#head())'
      \ },
      \ 'separator': { 'left': '⮀', 'right': '⮂' },
      \ 'subseparator': { 'left': '⮁', 'right': '⮃' }
      \ }

if has('nvim')
  nmap <bs> :<c-u>TmuxNavigateLeft<cr>
endif
