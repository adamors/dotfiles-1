call plug#begin('~/.vim/plugged')

Plug 'slashmili/alchemist.vim'

" Vim language pack

Plug 'sheerun/vim-polyglot'

" Markdown

Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'

" Rails / Ruby Plugins

Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-bundler', { 'for': 'ruby' }
Plug 'ngmy/vim-rubocop', { 'for': 'ruby' }
Plug 'thoughtbot/vim-rspec' , { 'for': 'ruby' }
Plug 'kana/vim-textobj-user'
Plug 'nelstrom/vim-textobj-rubyblock', { 'for': 'ruby' }

" Testing

Plug 'janko-m/vim-test'

" SCSS / CSS / Layout Plugins

Plug 'ap/vim-css-color', {'for': ['scss', 'css']}
Plug 'cakebaker/scss-syntax.vim', {'for': ['css', 'scss']}

" Javascript / JSX Plugins

Plug 'moll/vim-node'
Plug 'othree/javascript-libraries-syntax.vim'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'mxw/vim-jsx'
Plug 'pangloss/vim-javascript'
Plug 'styled-components/vim-styled-components'

" Misc Plugs

Plug 'rizzatti/dash.vim'
Plug 'AndrewRadev/switch.vim'
Plug 'w0rp/ale'
Plug 'AndrewRadev/splitjoin.vim'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-surround'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-commentary'
Plug 'scrooloose/nerdtree'
Plug 'ntpeters/vim-better-whitespace'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'gregsexton/MatchTag'
Plug 'tmhedberg/matchit'
Plug 'christoomey/vim-tmux-navigator'
Plug 'benmills/vimux'
Plug 'junegunn/vim-easy-align'
Plug 'ggreer/the_silver_searcher'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'SirVer/ultisnips'
Plug 'tpope/vim-eunuch'
Plug 'machakann/vim-highlightedyank'
" Plug 'itchyny/lightline.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Autocompletion Plugins
" Plug 'roxma/nvim-completion-manager'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

Plug 'roxma/nvim-cm-tern',  {'do': 'npm install'}
Plug 'Shougo/neoinclude.vim'
Plug 'Shougo/neco-syntax'
Plug 'roxma/ncm-flow'
Plug 'roxma/ncm-rct-complete'
Plug 'calebeby/ncm-css'
Plug 'flowtype/vim-flow'

Plug 'dietsche/vim-lastplace'
Plug 'autozimu/LanguageClient-neovim',
      \ {
      \   'branch': 'next',
      \   'do': 'bash install.sh',
      \ }

" Colorschemes
Plug 'drewtempelmeyer/palenight.vim'
Plug 'ayu-theme/ayu-vim'
Plug 'yfiua/vim-github-colorscheme'

if (has("termguicolors"))
  set termguicolors
endif

call plug#end()

syntax enable
syntax on
filetype plugin indent on
set background=dark
colorscheme ayu

set hidden
set relativenumber
set number
set laststatus=2
set backspace=2
set noshowmode
set nowrap
set ignorecase
set infercase
set noshowmode
set fillchars+=stl:\ ,stlnc:\
set lcs=tab:\-\
set splitright
set splitbelow
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
set conceallevel=1
set noea
set shortmess+=c


" Disable some polyglot language packs

let g:polyglot_disabled = ['javascript', 'jsx']
nmap <silent> <leader>d <Plug>DashSearch
nmap <silent> <leader>bn :bn<CR>

" Plug Mappings

map <silent> <leader>pu :PlugUpdate<CR>
map <silent> <leader>pi :PlugInstall<CR>
map <silent> <leader>pc :PlugClean<CR>

" Fzf Mappings & Config

nnoremap <silent> <space> :Files<CR>
nnoremap <leader>b :Buffers<CR>

" Note: brew install highlight
let g:fzf_files_options =
  \ '--preview "(highlight -O ansi {} || cat {}) 2> /dev/null | head -'.&lines.'"'

" Git

map <silent> <leader>gs :Gstatus<CR>
map <silent> <leader>gd :Gdiff<CR>
map <silent> <leader>gc :Gcommit<CR>
map <silent> <leader>gp :Gpush<CR>
map <silent> <leader>gu :terminal git pull<CR>
map <silent> <leader>gl :terminal git lg<CR>
map <silent> <leader>gb :Gblame<cr>
map <leader>gco :terminal git checkout<Space>

" Javascript Settings / Config

let g:jsx_ext_required = 0
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

" RuboCop Mappings

map <silent> <leader>ru :RuboCop<CR>
map <silent> <leader>rf :RuboCop --auto-correct<CR>
let g:vimrubocop_config = '~/.rubocop.yml'

" Rails / Ruby Mappings

map <silent> <leader>rc :Console<CR>
map <silent> <leader>rdbm :Rake db:migrate<CR>
map <silent> <leader>rr :!ruby %<CR>
map <silent> <leader>q :call ToggleQuickfixList()<CR>

" map <silent> <leader>nf :Neoformat<CR>
map <silent> <leader>af :ALEFix<CR>

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
  " autocmd TermClose * bd! " quit when a terminal closes instead of showing exit code and waiting
  tnoremap <Leader><ESC> <C-\><C-n>
endif

set completeopt-=preview
set omnifunc=syntaxcomplete#Complete
set completeopt+=noinsert

" File Types Specific

au BufRead,BufNewFile *.es6 setfiletype javascript
au BufRead,BufNewFile *.nxml setfiletype ruby
au BufRead,BufNewFile *.jbuilder setfiletype ruby

autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd BufWritePre * StripWhitespace

" Turn hlsearch off when pressing return
nnoremap <silent> <cr> :nohlsearch<cr>

" ALE Config

let g:ale_linters = {
\  'javascript': [
\     'flow',
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
\     'mix_dialyxir'
\   ]
\  }

let g:ale_fixers = {
\  'javascript': [
\    'prettier',
\    'eslint'
\   ],
\  'scss': [
\    'prettier'
\   ],
\  'elixir': [
\    'mix_format'
\   ]
\  }

let g:ale_sign_column_always = 1
let g:ale_sign_warning = '▲'
let g:ale_sign_error = '✗'
highlight link ALEWarningSign String
highlight link ALEErrorSign Title

" Ale completion
" let g:ale_completion_enabled = 1
nmap <silent> <C-p> <Plug>(ale_previous_wrap)
nmap <silent> <C-n> <Plug>(ale_next_wrap)

nmap <silent> <leader>ne <Plug>(ale_previous_wrap)
nmap <silent> <leader>pe <Plug>(ale_next_wrap)

" Misc Stuff

nmap <silent> <leader>o :tabedit %<cr>
nnoremap tc :-tabclose<cr>

function! SynStack()
  if !exists("*synstack")
    return
  endif
  echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc

" Command Mode Mappings

cnoremap <C-a> <Home>
cnoremap <C-e> <End>

if exists('&inccommand')
  set inccommand=split
endif

" Search selected text
vnoremap // y/<C-R>"<CR>

let g:rubycomplete_rails = 1

let g:javascript_plugin_flow = 1
let g:flow#showquickfix = 0

inoremap <C-Space> <C-x><C-o>
inoremap <C-@> <C-Space>

command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --column --ignore-case --follow --fixed-strings --line-number --no-heading --color=always '.shellescape(<q-args>), 1,
  \   <bang>0 ? fzf#vim#with_preview('up:60%')
  \           : fzf#vim#with_preview('right:50%:hidden', '?'),
  \   <bang>0)

map <leader>fw :exec 'Rg' expand("<cword>")<CR>

" highlight jsClassFuncName cterm=NONE ctermbg=76 ctermfg=16 gui=NONE guifg=#e2a478
highlight ALEWarning cterm=NONE gui=NONE guibg=#ffcdd2 guifg=#f44336
highlight jsThis cterm=NONE gui=NONE guifg=#ffffff

autocmd Filetype haml setlocal cursorcolumn
autocmd Filetype yaml setlocal cursorcolumn
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

let g:deoplete#enable_at_startup = 1

let g:LanguageClient_loggingLevel = 'DEBUG'
let g:LanguageClient_autoStart = 1


" LSP Configuration
let g:LanguageClient_serverCommands = {
    \ 'javascript': ['javascript-typescript-stdio'],
    \ 'ruby': ['solargraph', 'stdio'],
    \ }

nnoremap <silent> lc :call LanguageClient_contextMenu()<CR>

let ayucolor='dark'
let g:airline_powerline_fonts = 1
let g:airline_theme='kalisi'

