call plug#begin('~/.vim/plugged')

" Rails / Ruby Plugins
Plug 'vim-ruby/vim-ruby', { 'for': 'ruby' }
Plug 'tpope/vim-rails'
Plug 'tpope/vim-bundler'
Plug 'tpope/vim-haml'
Plug 'ngmy/vim-rubocop', { 'for': 'ruby' }
Plug 'thoughtbot/vim-rspec' , { 'for': 'ruby' }
Plug 'kana/vim-textobj-user'
Plug 'nelstrom/vim-textobj-rubyblock', { 'for': 'ruby' }
Plug 'tpope/vim-rbenv', { 'for': 'ruby' }

" SCSS / CSS Plugs
Plug 'ap/vim-css-color'
Plug 'cakebaker/scss-syntax.vim'

" Javascript Plugs
Plug 'mxw/vim-jsx'
Plug '1995eaton/vim-better-javascript-completion'
Plug 'justinj/vim-react-snippets'

" Plug 'pangloss/vim-javascript'
Plug 'rschmukler/pangloss-vim-indent'
Plug 'othree/javascript-libraries-syntax.vim'
Plug 'marijnh/tern_for_vim'
Plug 'burnettk/vim-angular'
Plug 'othree/yajs.vim'
Plug 'kchmck/vim-coffee-script'
Plug 'elzr/vim-json'
Plug 'moll/vim-node'
Plug 'valloric/MatchTagAlways'

" Misc Plugs
Plug 'benekastah/neomake'
Plug 'Yggdroot/indentLine'
Plug 'AndrewRadev/splitjoin.vim'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-dispatch'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-commentary'
Plug 'scrooloose/nerdtree'
Plug 'bronson/vim-trailing-whitespace'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
" Plug 'garbas/vim-snipmate'
Plug 'honza/vim-snippets'
Plug 'gregsexton/MatchTag'
Plug 'tmhedberg/matchit'
Plug 'itchyny/lightline.vim'
Plug 'jgdavey/vim-turbux'
Plug 'mhinz/vim-janah'
Plug 'christoomey/vim-tmux-navigator'
Plug 'benmills/vimux'
Plug 'vim-scripts/Align'
Plug 'rking/ag.vim'
Plug 'FelikZ/ctrlp-py-matcher'
" Plug 'Valloric/YouCompleteMe'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'rizzatti/dash.vim'
Plug 'SirVer/ultisnips'
Plug 'ervandew/supertab'
Plug 'ryanoasis/vim-devicons'


Plug 'Shougo/deoplete.nvim'
Plug 'Shougo/neco-vim'
Plug 'Shougo/neoinclude.vim'
Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'

" Colorschemes
Plug 'mhartington/oceanic-next'

call plug#end()

let $NVIM_TUI_ENABLE_TRUE_COLOR=1
let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1


let g:rails_ctags_arguments = ['--languages=-javascript', '--fields=+l', '--exclude=.git', '--exclude=log']

" let g:ycm_key_list_select_completion = ['<C-TAB>', '<Down>']
" let g:ycm_key_list_previous_completion = ['<C-S-TAB>', '<Up>']
" let g:ycm_collect_identifiers_from_tags_files = 1
" let g:SuperTabDefaultCompletionType = '<C-Tab>'


filetype plugin indent on
filetype on
filetype plugin on
syntax enable
syntax on
set number
set laststatus=2
" set colorcolumn=120
set backspace=2
set nowrap
set ignorecase
set infercase
set noshowmode
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
set wildmode=full
set wildignorecase
set complete=.,b,w,u,t,k
set guioptions-=r
set guioptions-=L
set guifont=Meslo\ LG\ S\ DZ\ Regular\ for\ Powerline\ Plus\ Nerd\ File\ Types:h12
set foldmethod=indent
set foldlevel=128
set background=dark
silent! colorscheme OceanicNext
set synmaxcol=300
set complete-=i
set autoread

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
map <silent> <leader>gl :terminal git lg<CR>
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

" let g:ycm_add_preview_to_completeopt = 1
" let g:ycm_register_as_syntastic_checker = 0
" let g:ycm_confirm_extra_conf = 0
" let g:ycm_collect_identifiers_from_tags_files = 1
" let g:ycm_collect_identifiers_from_comments_and_strings = 1

let g:used_javascript_libs = 'jquery,underscore,angularjs,react,requirejs,jasmine,chai'

imap <Tab> <C-P>

" imap <C-J> <Plug>snipMateNextOrTrigger
" smap <C-J> <Plug>snipMateNextOrTrigger
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

if has('nvim')
  nmap <bs> :<c-u>TmuxNavigateLeft<cr>
endif

let g:lightline = {
      \ 'colorscheme': 'powerline',
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
      \ }
      \ }

" Neomake Config

let g:neomake_javascript_enabled_makers = ['eslint']
let g:neomake_ruby_enabled_makers = ['rubocop']
autocmd! BufWritePost * Neomake


au BufRead,BufNewFile *.scss set filetype=scss.css

" Remember cursor position between sessions
autocmd BufReadPost *
      \ if line("'\"") > 0 && line ("'\"") <= line("$") |
      \   exe "normal! g'\"" |
      \ endif
autocmd BufRead * normal zz

hi CursorLineNR guifg=#ffffff

let g:deoplete#enable_at_startup = 1
let g:neosnippet#enable_snipmate_compatibility = 1

imap <expr><TAB> neosnippet#expandable_or_jumpable() ?
  \ "\<Plug>(neosnippet_expand_or_jump)"
  \: pumvisible() ? "\<C-n>" : "\<TAB>"
  smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
  \ "\<Plug>(neosnippet_expand_or_jump)"
  \: "\<TAB>"

let g:vimjs#casesensistive = 1
let g:vimjs#smartcomplete = 1
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType javascript setlocal omnifunc=tern#Complete

imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

let g:neosnippet#snippets_directory='~/.vim/plugged/neosnippet-snippets/neosnippets,  ~/.vim/plugged/angular-vim-snippets/snippets'

