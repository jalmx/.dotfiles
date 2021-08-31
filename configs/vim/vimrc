" configuracion basica vim

" se ajusta la codificacion
set encoding=UTF-8
" se configura la numeracion del costado
set number
" se ajusta los numeros relativos
set rnu
"para que el ancho de los numeros laterales no se mueva y se mantenga del mismo
"ancho
set numberwidth=1
" Break lines at word (requires Wrap lines)
set linebreak
"Wrap-broken line prefix
set showbreak=+++
"Line wrap (number of cols)
set textwidth=80
" Show partial command you type in the last line of the screen.
set showcmd
" Enable auto completion menu after pressing TAB.
set wildmenu
" Make wildmenu behave like similar to Bash completion.
set wildmode=list:longest
"Highlight matching brace
set showmatch
set hlsearch	" Highlight all search results
set smartcase	" Enable smart-case search
set ignorecase	" Always case-insensitive
set incsearch	" Searches for strings incrementally
set autoindent	" Auto-indent new lines
set shiftwidth=4	" Number of auto-indent spaces
set smartindent	" Enable smart-indent
set smarttab	" Enable smart-tabs
set softtabstop=4	" Number of spaces per Tab
" es para la barra que sale abajo
set laststatus=2
set noshowmode
" Set the commands to save in history default number is 20.
set history=1000
" Show row and column ruler information
set ruler
" Number of undo levels
set undolevels=1000
" Highlight cursor line underneath the cursor horizontally.
set cursorline
" Highlight cursor line underneath the cursor vertically.
"set cursorcolumn
" Use space characters instead of tabs.
set expandtab
" es para que active la sintaxis de colores
syntax on
" Enable type file detection. Vim will be able to try to detect the type of file in use.
filetype on
" Enable plugins and load plugin for the detected file type.
filetype plugin on
" Load an indent file for the detected file type.
filetype indent on

" Configuracion de shortcuts
let mapleader=" "

nmap <Leader>w :w <CR>
nmap <Leader>q :q <CR>
nmap <Leader>Q :q! <CR>
nmap <Leader>x :x <CR>
nmap <Leader>so :so % <CR> 
nmap <Leader>N :set rnu! <CR>
nmap <Leader>c :noh <CR>

" PLUGINS ---------------------------------------------------------------- {{{

" instalacion y configuracion de Plug para vim
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" configuracion para plugins
call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-sensible'
"para moverse rapido en las busquedas
Plug 'easymotion/vim-easymotion'
"el explorador de archivos
Plug 'preservim/nerdtree'
" para colocar comentarios
Plug 'preservim/nerdcommenter'
"La barrita de abajo
Plug 'itchyny/lightline.vim'
"para los iconos de nerdTree
Plug 'ryanoasis/vim-devicons'
"para autosave se activa con :AutoSaveToggle -> On
Plug '907th/vim-auto-save'
"plugin para  git
if has('nvim') || has('patch-8.0.902')
  Plug 'mhinz/vim-signify'
else
  Plug 'mhinz/vim-signify', { 'branch': 'legacy' }
endif
Plug 'dense-analysis/ale'
" se colocan los parentesis, llaves indicando como se envolveran las palabras o
" lines
Plug 'tpope/vim-surround'
" Se agrega una navegacion tipo tmux
Plug 'christoomey/vim-tmux-navigator'

"markdown
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
"Latex math
Plug 'brennier/quicktex'

"Multi cursor
Plug 'mg979/vim-visual-multi', {'branch': 'master'}

"Support editor config
Plug 'editorconfig/editorconfig-vim'
" parentesis arcoiris
Plug 'kien/rainbow_parentheses.vim'
"coc
Plug 'neoclide/coc.nvim', {'branch': 'release'}


"theme
Plug 'morhetz/gruvbox'

call plug#end()

" configuracion para los plugins
" theme config
colorscheme gruvbox
let g:gruvbox_contrast_dark = "hard"
set termguicolors
"config auto save
let g:auto_save = 1  " enable AutoSave on Vim startup
"para la actualizacion del plugin de git
set updatetime=100
" configurando easymotio
nmap <Leader>f <Plug>(easymotion-s2)
"config de rainbow arcoiris
let g:rbpt_colorpairs = [
    \ ['brown',       'RoyalBlue3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['black',       'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['red',         'firebrick3'],
    \ ]

let g:rbpt_max = 16
let g:rbpt_loadcmd_toggle = 0

au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

" cuando precione Leader + b, salga NERDTree
nmap <Leader>b :NERDTreeToggle<CR>

" para aregrar simbolo
" "coloca el parentesis, no le puse el simbolo porque es mas rapido el numeros en las lineas
nmap <Leader>0 ysiw) nmap <Leader>9 ysiw)
nmap <Leader>[ ysiw]
nmap <Leader>] ysiw[

" configuro mi *surround-customizing* para envolver en $
autocmd FileType md let b:surround_36 = "$\r$"
let g:surround_36 = "$\r$"
" mapea un shortcut para envolver con el simbolo de $, es mas rapido el la
" tecla del 4
nmap <Leader>4 yss$

" }}}

""" leer ese post para terminar la configuracion
""" https://www.freecodecamp.org/news/vimrc-configuration-guide-customize-your-vim-editor/
