"Core Config"
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set smarttab

set listchars=tab:┣━,extends:@,trail:·
set list
set colorcolumn=121
"set cursorline
set number
set relativenumber
set lazyredraw

set nowrap
set linebreak

set scrolloff=7
set sidescroll=1
set sidescrolloff=15
set textwidth=120

set undodir=$HOME/.config/nvim/undo/
set undofile
set undolevels=500
set undoreload=10000

set nowrapscan
set hlsearch
set incsearch

set ignorecase
set smartcase

set conceallevel=2
set concealcursor="nc"

set formatoptions=tcrqnlj

set splitbelow
set splitright

set sessionoptions=buffers,folds,sesdir,tabpages,winpos,winsize,help

set nofoldenable
set foldmethod=manual

set autoread

" Plugings "
call plug#begin()
"Plug 'vim-airline/vim-airline'
"Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'airblade/vim-gitgutter'
Plug 'editorconfig/editorconfig-vim'
"Plug 'valloric/youcompleteme'
Plug 'dracula/vim'
Plug 'junegunn/vim-emoji'
Plug 'lervag/vimtex'
Plug 'arcticicestudio/nord-vim'
Plug 'itchyny/lightline.vim'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'Shougo/deoplete-clangx'
Plug  'deoplete-plugins/deoplete-jedi'
Plug 'wokalski/autocomplete-flow'
  " For func argument completion
Plug 'Shougo/neosnippet'
Plug 'Shougo/neosnippet-snippets'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'mhartington/nvim-typescript', {'do': './install.sh'}
Plug 'artur-shaik/vim-javacomplete2'
call plug#end()

colorscheme nord

"
let g:deoplete#enable_at_startup = 1
let g:neosnippet#enable_completed_snippet = 1
" vim-airline"
let g:lightline = {'colorscheme': 'one' }
"let g:airline#extensions#tabline#enabled = 1
"let g:airline_powerline_fonts = 1
"let g:airline_theme="nord-vim"
"
"" Gitgutter
let g:gitgutter_max_signs = 50
let g:gitgutter_realtime = 0
let g:gitgutter_eager = 0
"
"YouCompleteme
let g:ycm_min_num_of_chars_for_completion = 3
"let g:ycm_error_symbol =  'E>'
let g:ycm_error_symbol = emoji#for("crocodile")
let g:ycm_warning_symbol = emoji#for("confused")
let g:ycm_echo_current_diagnostic = 1
let g:ycm_max_diagnostics_to_display = 10
let g:ycm_key_list_select_completion = []
let g:ycm_key_list_previous_completion = []
let g:ycm_global_ycm_extra_conf = '~/.config/nvim/.ycm_extra_conf.py'
let g:ycm_confirm_extra_conf = 0
" Theme
syntax on
" color dracula
"
" VIM
let g:tex_flavor  = 'texlive'
let g:tex_conceal = ''
let g:vimtex_fold_manual = 1
let g:vimtex_latexmk_continuous = 1
let g:vimtex_compiler_progname = 'nvr'
" use SumatraPDF if you are on Windows
let g:vimtex_view_method = 'zathura'
let g:deoplete#enable_at_startup = 1
autocmd FileType java setlocal omnifunc=javacomplete#Complete
