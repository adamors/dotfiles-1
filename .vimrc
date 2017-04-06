let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1

call plug#begin('~/.vim/plugged')

" Vim language pack
Plug 'sheerun/vim-polyglot'
Plug 'mxw/vim-jsx'
Plug 'pangloss/vim-javascript'

Plug 'szw/vim-tags'
Plug 'craigemery/vim-autotag'

" Rails / Ruby Plugins
Plug 'tpope/vim-rails'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-bundler'
Plug 'ngmy/vim-rubocop', { 'for': 'ruby' }
Plug 'thoughtbot/vim-rspec' , { 'for': 'ruby' }
Plug 'kana/vim-textobj-user'
Plug 'nelstrom/vim-textobj-rubyblock', { 'for': 'ruby' }
Plug 'tpope/vim-rbenv', { 'for': 'ruby' }
Plug 'chase/vim-ansible-yaml'

" Elixir
" Plug 'thinca/vim-ref', { 'for': 'elixir' }
" Plug 'renderedtext/vim-elixir-alternative-files', { 'for': 'elixir' }
" Plug 'awetzel/elixir.nvim', { 'do': 'yes \| ./install.sh', 'for': 'elixir' }
" Plug 'slashmili/alchemist.vim', { 'for': 'elixir' }
" Plug 'tpope/vim-projectionist'
" Plug 'c-brenn/phoenix.vim'

" Testing
Plug 'janko-m/vim-test'

" SCSS / CSS Plugins
Plug 'ap/vim-css-color'
Plug 'cakebaker/scss-syntax.vim'

" Javascript / JSX Plugins
Plug 'sbdchd/neoformat'
Plug 'moll/vim-node'
Plug 'justinj/vim-react-snippets'
Plug 'othree/jspc.vim'
Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern'}
Plug 'ternjs/tern_for_vim'
Plug 'burnettk/vim-angular', {'for': ['javascript', 'html']}
Plug 'othree/javascript-libraries-syntax.vim'
Plug 'heavenshell/vim-jsdoc', { 'for': ['javascript', 'jsx'] }
Plug 'ruanyl/vim-fixmyjs'
Plug 'Shougo/echodoc.vim'

" Misc Plugs
Plug 'AndrewRadev/switch.vim'
Plug 'benekastah/neomake'
Plug 'AndrewRadev/splitjoin.vim'
Plug 'tpope/vim-fugitive'
Plug 'Xuyuanp/nerdtree-git-plugin'
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
Plug 'christoomey/vim-tmux-runner'
Plug 'benmills/vimux'
Plug 'vim-scripts/Align'
Plug 'ggreer/the_silver_searcher'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'rizzatti/dash.vim'
Plug 'SirVer/ultisnips'
Plug 'ervandew/supertab'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'gcmt/taboo.vim'
Plug 'vim-scripts/TailMinusF'

" Autocompletion Plugins
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'Shougo/neco-vim'
Plug 'Shougo/neoinclude.vim'
Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'
Plug 'dietsche/vim-lastplace'

" Colorschemes
Plug 'joshdick/onedark.vim'
Plug 'chriskempson/base16-vim'
Plug 'rakr/vim-one'

call plug#end()


syntax enable
syntax on
filetype plugin indent on
set background=dark
colorscheme one
set relativenumber
set number
set laststatus=2
set backspace=2
set nowrap
set ignorecase
set infercase
set noshowmode
set fillchars+=stl:\ ,stlnc:\
set lcs=tab:\-\
set list
set termencoding=utf-8
set smartindent
set expandtab
set tabstop=2 shiftwidth=2 softtabstop=2
set autoindent
set smartindent
set copyindent
set cindent
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
set complete-=i
set autoread
set nocursorcolumn
set nocursorline
set ttyfast

" True Color Supprt for Neovim
if (has("termguicolors"))
  set termguicolors
endif

" Disable some polygot language packs
let g:polyglot_disabled = ['javascript', 'jsx']

" Plug Mappings
map <silent> <leader>pu :PlugUpdate<CR>
map <silent> <leader>pi :PlugInstall<CR>
map <silent> <leader>pc :PlugClean<CR>

" Dash integration
nmap <silent> <leader>d <Plug>DashSearch

" Fzf Mappings
nnoremap <silent> <space> :Files<CR>
nnoremap <leader>b :Buffers<CR>

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

" Javascript Settings / Config
let g:jsx_ext_required = 0
let g:neomake_jsx_enabled_makers = ['eslint']
let g:neoformat_enabled_javascript = ['prettier']
" let g:neoformat_enabled_jsx = ['prettier']
let g:javascript_enable_domhtmlcss=1
let g:used_javascript_libs = 'jquery,underscore,angularjs,react,requirejs,jasmine,chai'
let g:javascript_plugin_jsdoc = 1

if executable('ag')
  set grepprg=ag\ --nogroup\ --nocolor
  let g:ackprg = 'ag --nogroup --nocolor --column'
endif

" Nerdtree Config
let g:NERDTreeMinimalUI=1
let NERDTreeShowHidden=1
let NERDTreeIgnore=['\.DS_Store$', '\.vim$']
let NERDTreeQuitOnOpen=1
map <silent> <leader>n :NERDTreeToggle<CR>
autocmd VimEnter * wincmd p

" RuboCop Mappings
map <silent> <leader>ru :RuboCop<CR>
map <silent> <leader>rf :RuboCop --auto-correct<CR>
let g:vimrubocop_config = '~/.rubocop.yml'

" Rails / Ruby Mappings
map <silent> <leader>rc :Console<CR>
map <silent> <leader>rdbm :Rake db:migrate<CR>
map <silent> <leader>rr :!ruby %<CR>
map <silent> <leader>q :call ToggleQuickfixList()<CR>

map <silent> <leader>nf :Neoformat<CR>

" Testing
let test#strategy = 'neovim'
let g:test#preserve_screen = 1
map <Leader>tf :TestFile<CR>
map <Leader>tn :TestNearest<CR>
map <Leader>tl :TestLast<CR>
map <Leader>ts :TestSuite<CR>
map <silent> <leader>qo :copen<CR>

" Convert HTML to Haml, ensure the html2haml gem is installed
nmap <leader>h :%!html2haml --erb 2> /dev/null<CR>:set ft=haml<CR>
vmap <leader>h :!html2haml --erb 2> /dev/null<CR>

" Format JSON
map <leader>js :%!python -m json.tool<cr>

" Misc
map <leader>f{ :normal va{V=<cr>
map <leader>fa :normal vf"f"<cr>

" .vimrc editing
nmap <leader>v :sp $MYVIMRC<CR>
nmap <Leader>s :source $MYVIMRC<CR>

" Disable K looking up stuff
map K <Nop>

command! W :w
command! Q :q
command! Qa :qa

if has('nvim')
  nmap <bs> :<c-u>TmuxNavigateLeft<cr>
endif

" Neomake Config
let g:neomake_javascript_enabled_makers = ['eslint']
let g:neomake_ruby_enabled_makers = ['rubocop']
autocmd! BufWritePost * Neomake

let g:deoplete#enable_at_startup = 1
let g:deoplete#enable_ignore_case = 1
let g:deoplete#enable_smart_case = 1
let g:deoplete#enable_refresh_always = 1
let g:neosnippet#enable_snipmate_compatibility = 1

let g:vimjs#casesensistive = 1
let g:vimjs#smartcomplete = 1

let g:deoplete#sources = {}
let g:deoplete#sources.javascript = ['ternjs']

let g:deoplete#omni_patterns = {}
let g:deoplete#omni_patterns.javascript = '\h\w*\|\h\w*\.\%(\h\w*\)\|[^. \t]\.\%(\h\w*\)'

let g:tern#filetypes = [
                \ 'jsx',
                \ 'javascript.jsx',
                \ 'vue',
                \ ]

set omnifunc=syntaxcomplete#Complete

let g:neosnippet#snippets_directory='~/.vim/plugged/angular-vim-snippets/snippets, ~/.vim/plugged/vim-snippets/snippets, ~/.vim/plugged/vim-react-snippets/snippets'
let b:deoplete_disable_auto_complete=1
let g:deoplete#omni#functions = {}
let g:deoplete#omni#functions.javascript = [
      \ 'tern#Complete'
      \ ]
let g:tern_request_timeout = 1
let g:tern_show_signature_in_pum = '0'

set completeopt+=noinsert

au BufRead,BufNewFile *.es6 setfiletype javascript
au BufRead,BufNewFile *.nxml setfiletype ruby
au BufRead,BufNewFile *.jbuilder setfiletype ruby
au BufRead,BufNewFile *.scss set filetype=scss.css
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType javascript setlocal omnifunc=tern#Complete
autocmd BufWritePre * StripWhitespace

let g:airline_powerline_fonts = 1
let g:airline_theme='one'
let g:airline_skip_empty_sections = 1

" Command Mode Mappings
cnoremap <C-a> <Home>
cnoremap <C-e> <End>

if exists('&inccommand')
  set inccommand=nosplit
endif

set conceallevel=1

" Tabs
map <silent> <leader>te :$tabnew<CR>
set noea

" Turn hlsearch off when pressing return
nnoremap <silent> <cr> :nohlsearch<cr>

" Note: brew install highlight
let g:fzf_files_options =
  \ '--preview "(highlight -O ansi {} || cat {}) 2> /dev/null | head -'.&lines.'"'
