let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1

call plug#begin('~/.vim/plugged')

Plug 'Konfekt/FastFold'

Plug 'craigemery/vim-autotag'

" Rails / Ruby Plugins
Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-bundler'
Plug 'tpope/vim-haml', { 'for': 'haml' }
Plug 'ngmy/vim-rubocop', { 'for': 'ruby' }
Plug 'thoughtbot/vim-rspec' , { 'for': 'ruby' }
Plug 'kana/vim-textobj-user'
Plug 'nelstrom/vim-textobj-rubyblock', { 'for': 'ruby' }
Plug 'tpope/vim-rbenv', { 'for': 'ruby' }
Plug 'vim-scripts/TailMinusF'
Plug 'chase/vim-ansible-yaml'

" Elixir
Plug 'elixir-lang/vim-elixir', { 'for': 'elixir' }
Plug 'thinca/vim-ref', { 'for': 'elixir' }
Plug 'renderedtext/vim-elixir-alternative-files', { 'for': 'elixir' }
Plug 'awetzel/elixir.nvim', { 'do': 'yes \| ./install.sh', 'for': 'elixir' }

" Testing
Plug 'janko-m/vim-test'

" SCSS / CSS Plugs
Plug 'ap/vim-css-color'
Plug 'cakebaker/scss-syntax.vim'

" Javascript Plugs
Plug 'mxw/vim-jsx'
Plug '1995eaton/vim-better-javascript-completion'
Plug 'justinj/vim-react-snippets'
Plug 'samuelsimoes/vim-jsx-utils'
Plug 'gavocanov/vim-js-indent'
Plug 'othree/jspc.vim'
Plug 'rschmukler/pangloss-vim-indent'
Plug 'othree/javascript-libraries-syntax.vim'
Plug 'carlitux/deoplete-ternjs'
Plug 'burnettk/vim-angular'
Plug 'othree/yajs.vim'
Plug 'kchmck/vim-coffee-script',  { 'for': 'coffee' }
Plug 'elzr/vim-json'

" Misc Plugs
Plug 'benekastah/neomake'
Plug 'Yggdroot/indentLine'
Plug 'AndrewRadev/splitjoin.vim'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-dispatch'
Plug 'radenling/vim-dispatch-neovim'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-commentary'
Plug 'scrooloose/nerdtree'
Plug 'ntpeters/vim-better-whitespace'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'honza/vim-snippets'
Plug 'gregsexton/MatchTag'
Plug 'tmhedberg/matchit'
Plug 'christoomey/vim-tmux-navigator'
Plug 'benmills/vimux'
Plug 'vim-scripts/Align'
Plug 'rking/ag.vim'
" Plug 'FelikZ/ctrlp-py-matcher'
" Plug 'ctrlpvim/ctrlp.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'rizzatti/dash.vim'
Plug 'SirVer/ultisnips'
Plug 'ervandew/supertab'
Plug 'sheerun/vim-polyglot'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'Shougo/deoplete.nvim'
Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'

" Colorschemes
Plug 'mhartington/oceanic-next'
Plug 'joshdick/onedark.vim'
Plug 'trusktr/seti.vim'
Plug 'romainl/Apprentice'
Plug 'jdkanani/vim-material-theme'
Plug 'romanzolotarev/vim-dark'
Plug 'cseelus/vim-colors-clearance'
Plug 'frankier/neovim-colors-solarized-truecolor-only'

call plug#end()

filetype plugin indent on
syntax enable
syntax on
set termguicolors
set number
set laststatus=2
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
set smartindent
set hlsearch
set incsearch
set backupdir=~/.vim/backup//
set directory=~/.vim/swap//
set undodir=~/.vim/undo//
set wildmode=longest:full,full
set wildmenu
set wildignorecase
set complete=.,b,w,u,t,k
set guioptions-=r
set guioptions-=L
set foldmethod=indent
set foldlevel=128

silent! colorscheme clearance
set background=dark

" set synmaxcol=200
set complete-=i
set autoread
set nocursorcolumn
set nocursorline

set ttyfast

" Plug Update
map <silent> <leader>pu :PlugUpdate<CR>
map <silent> <leader>pi :PlugInstall<CR>
map <silent> <leader>pc :PlugClean<CR>

" Dash integration
nmap <silent> <leader>d <Plug>DashSearch

" CtrlP Clear Cache
map <silent> <leader>cc :CtrlPClearAllCaches<CR>
nnoremap <silent> <C-T> :CtrlPTag<CR>
nnoremap <silent> <space> :Files<CR>

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
map <leader>gco :Dispatch git checkout<Space>

" Ag
nnoremap <leader>f :Ag<Space>
nnoremap <leader>F :Ag "<C-R><C-W>"<CR>

" Enable JSX for .js files
let g:jsx_ext_required = 0
let g:neomake_jsx_enabled_makers = ['eslint']

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
let NERDTreeIgnore=['\.DS_Store$', '\.vim$']
map <silent> <leader>n :NERDTreeToggle<CR>
autocmd VimEnter * wincmd p

let g:javascript_enable_domhtmlcss=1
let g:used_javascript_libs = 'jquery,underscore,angularjs,react,requirejs,jasmine,chai'

" RuboCop Mappings
map <silent> <leader>ru :RuboCop<CR>
map <silent> <leader>rf :RuboCop --auto-correct<CR>
let g:vimrubocop_config = '~/.rubocop.yml'

" Rails / Ruby Mappings
map <silent> <leader>rc :Console<CR>
map <silent> <leader>rdbm :Rake db:migrate<CR>
map <silent> <leader>rr :!ruby %<CR>
map <silent> <leader>q :call ToggleQuickfixList()<CR>

" RSpec
let test#strategy = "neovim"
let g:test#preserve_screen = 1

map <Leader>t :TestFile<CR>
map <Leader>tn :TestNearest<CR>
map <Leader>l :TestLast<CR>
map <Leader>ta :TestSuite<CR>
map <silent> <leader>qo :copen<CR>

" Convert HTML to Haml, ensure the html2haml gem is installed
nmap <leader>h :%!html2haml --erb 2> /dev/null<CR>:set ft=haml<CR>
vmap <leader>h :!html2haml --erb 2> /dev/null<CR>

" Format JSON
map <leader>js :%!python -m json.tool<cr>

" Misc
map <leader>f{ :normal va{V=<cr>
map <leader>fa :normal vf"f"<cr>

" View .vimrc
nmap <leader>v :sp $MYVIMRC<CR>

" Source .vimrc
nmap <Leader>s :source $MYVIMRC<CR>

" Disable K looking up stuff
map K <Nop>

command! W :w
command! Q :q

let NERDTreeQuitOnOpen=1

if has('nvim')
  nmap <bs> :<c-u>TmuxNavigateLeft<cr>
endif

" Neomake Config
let g:neomake_javascript_enabled_makers = ['eslint']
let g:neomake_ruby_enabled_makers = ['rubocop']
autocmd! BufWritePost * Neomake

" Remember cursor position between sessions
autocmd BufReadPost *
      \ if line("'\"") > 0 && line ("'\"") <= line("$") |
      \   exe "normal! g'\"" |
      \ endif
autocmd BufRead * normal zz

hi CursorLineNR guifg=#ffffff

let g:deoplete#enable_at_startup = 1
let g:deoplete#enable_ignore_case = 1
let g:deoplete#enable_smart_case = 1
let g:deoplete#enable_refresh_always = 1
let g:neosnippet#enable_snipmate_compatibility = 1

let g:vimjs#casesensistive = 1
let g:vimjs#smartcomplete = 1

autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType javascript setlocal omnifunc=tern#Complete

set omnifunc=syntaxcomplete#Complete

let g:neosnippet#snippets_directory='~/.vim/plugged/angular-vim-snippets/snippets, ~/.vim/plugged/vim-snippets/snippets, ~/.vim/plugged/vim-react-snippets/snippets'
let b:deoplete_disable_auto_complete=1
let g:tern_request_timeout = 1
let g:tern_show_signature_in_pum = 0
set completeopt+=noinsert

au BufRead,BufNewFile *.es6 setfiletype javascript
au BufRead,BufNewFile *.jbuilder setfiletype ruby
autocmd BufWritePre * StripWhitespace

let g:airline_powerline_fonts = 1
let g:airline_theme='onedark'

" Command Mode Mappings
cnoremap <C-a> <Home>
cnoremap <C-e> <End>
