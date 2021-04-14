""""""""""""""""""""""""""
" Basic vim configuration
""""""""""""""""""""""""""
"set encoding=utf-8
"set fileencoding=ascii
set hidden

set diffopt=filler,context:2,iwhite

"MISC
set listchars=tab:•\ ,trail:•,extends:»,precedes:«
let g:screen_size_restore_pos=1
let g:screen_size_by_vim_instance=1
set modelines=0
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
set relativenumber
set numberwidth=2
set splitbelow
set splitright
set undofile
set undodir=~/.vim/tmp//
set backupdir=~/.vim/tmp//
set directory=~/.vim/tmp//
set history=100
set undolevels=1000
set undoreload=10000
set ignorecase
set smartcase
set nowrap
set tw=110
set cursorline
hi cursorline cterm=none
hi cursorlinenr ctermfg=black

"TAGS
set tags=tags

" Close help window just with q
"autocmd FileType help noremap <buffer> q :q<cr>

"""""""""""""""""""""""""""
" configure vbundle
"""""""""""""""""""""""""""
set nocompatible
filetype off

" Set the runtime path and initialize Vundle:
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Let Vundle manage itself (required)
Plugin 'VundleVim/Vundle.Vim'
" Nice tool for private wiki
Plugin 'vimwiki/vimwiki.git'

" Install and use the following Plugins:
Plugin 'scrooloose/nerdcommenter'
" Simplify motion in vim 
Plugin 'easymotion/vim-easymotion'
" Show a diff using Vim its sign column.
Plugin 'mhinz/vim-signify'
Plugin 'tomtom/tlib_vim'
Plugin 'marcweber/vim-addon-mw-utils'
Plugin 'jezcope/vim-align'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'powerline/fonts'
Plugin 'nvie/vim-rst-tables.git'
Plugin 'majutsushi/tagbar'
" Visualization and handling of vim undo history
Plugin 'mbbill/undotree'
" Syntax completion; needs external programms see homepage
"Plugin 'Valloric/YouCompleteMe'
"Plugin 'rdnetto/YCM-Generator'
" Using snippets
Plugin 'sirver/ultisnips'
" Snippets for ultisnips
Plugin 'honza/vim-snippets.git'
" Another snippets tool
"Plugin 'garbas/vim-snipmate'

" Syntax checking plugin
"Plugin 'scrooloose/syntastic.git'
Plugin 'w0rp/ale'
" Search and display information from arbitrary sources like files
Plugin 'Shougo/unite.vim'
" Full path fuzzy file finder
Plugin 'ctrlpvim/ctrlp.vim'
" Git in vim 
Plugin 'tpope/vim-fugitive'
" Branche control
Plugin 'idanarye/vim-merginal' 
" Completion script
Plugin 'Shougo/neocomplete.vim'
" Spread nerdtree over all tabs
"Bundle 'jistr/vim-nerdtree-tabs'
" Controle your tabs
Plugin 'vim-ctrlspace/vim-ctrlspace'
" Surrond stuff with things
Plugin 'tpope/vim-surround'
" Lets you use . to repeat some things like vim-surround
Plugin 'tpope/vim-repeat'
" Tab to indent or autocomplete depending on context
Plugin 'ervandew/supertab'
" Vim Markdown runtime files
Plugin 'tpope/vim-markdown'
" Syntax for nginx
Plugin 'mutewinter/nginx.vim'
" Colors
Plugin 'mrtazz/molokai.vim'
Plugin 'nanotech/jellybeans.vim'
Plugin 'morhetz/gruvbox'
" Use virtualenvs in the embeded python interpreter
Plugin 'jmcantrell/vim-virtualenv'
" Tag files handling
Plugin 'ludovicchabant/vim-gutentags'
" Vim latex suit
Plugin 'lervag/vimtex'

call vundle#end()

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Basic vim configuration that has to be done after vundle configuration
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
filetype on                         " Filetype-Erkennung aktivieren
filetype indent on                  " Syntax-Einrückungen je nach Filetype
filetype plugin on                  " Filetype-Plugins erlauben
syntax enable

"STYLE
let base16colorspace=256
colorscheme gruvbox
set background=dark

"""""""""""""""""""""""""
" Airlineconfiguration
"""""""""""""""""""""""""
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled = 1
if !exists('g:airline_symbols')
	let g:airline_symbols = {}
endif
let g:airline_symbols.space = "\ua0"

let g:airline_theme="murmur"
"let g:airline_theme="gruvbox"

"AUTOCOMPLETION
"autocmd FileType c set omnifunc=ccomplete#Complete
"set cpt-=i
"let g:SuperTabDefaultCompletionType="context"
"Snippets
"let g:commentChar={'vim': '"', 'c': '//', 'cpp': '//', 'h': '//'}
"let g:snipMate={}
""let g:snipMate.scope_aliases={}
"let g:snipMate.snippet_version=1

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" YouCompleteMe
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"let g:ycm_clangd_binary_path = "/usr/bin/clangd"

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Configure ale
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_insert_leave = 0
" You can disable this option too
" " if you don't want linters to run on opening a file
let g:ale_lint_on_enter = 0
let g:ale_set_loclist = 1
let g:ale_set_quickfix = 0

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" tmux stuff
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if has('mouse')
	set mouse=a
	if &term =~ "xterm" || &term =~ "screen"
		" for some reason, doing this directly with 'set ttymouse=xterm2'
		" doesn't work -- 'set ttymouse?' returns xterm2 but the mouse
		" makes tmux enter copy mode instead of selecting or scrolling
		" inside Vim -- but luckily, setting it up from within autocmds
		" works
		autocmd VimEnter * set ttymouse=xterm2
		autocmd FocusGained * set ttymouse=xterm2
		autocmd BufEnter * set ttymouse=xterm2
	endif
endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Copy paste system clipboard
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <leader>y "*y
map <leader>p "*p
map <leader>P "*P

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Quit help easily
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! QuitWithQ()
	if &buftype == 'help'
		nnoremap <buffer> <silent> q :q<cr>
	endif
endfunction
autocmd FileType help exe QuitWithQ()

"NERDTREE
let NERDTreeMinimalUI=0
let NERDTreeDirArrows=1

"SEARCH REPLACEMENT EASYMOTION
map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)
" These `n` & `N` mappings are options. You do not have to map `n` & `N` to EasyMotion.
" Without these mappings, `n` & `N` works fine. (These mappings just provide
" different highlight method and have some other features )
map  n <Plug>(easymotion-next)
map  N <Plug>(easymotion-prev)
set hlsearch
let hlstate=1

"RESIZE SPLITS
set winheight=5
set winwidth=10
set winminheight=5
set winminwidth=10
nnoremap <silent> <S-K> :res+5<CR>
nnoremap <silent> <S-J> :res-5<CR>
nnoremap <silent> <S-H> :vertical res-10<CR>
nnoremap <silent> <S-L> :vertical res+10<CR>

"NAVIGATE BETWEEN SPLITS
nnoremap <C-J> :wincmd j<CR>
nnoremap <C-K> :wincmd k<CR>
nnoremap <C-L> :wincmd l<CR>
nnoremap <C-H> :wincmd h<CR>

"CTRL-P OPTIONS
let g:ctrlp_regexp=1
let g:ctrlp_working_path_mode='ra'
let g:ctrlp_root_markers =['projectrootmarker']
let g:ctrlp_use_caching=1
let g:ctrlp_clear_cache_on_exit=0
let g:ctrlp_lazy_update=500
let g:ctrlp_mruf_case_sensitive=0
let g:ctrlp_match_window='bottom,order:btt,min:1,max:15,results:50'
let g:ctrlp_custom_ignore={'dir': '\v[\/]\.(git|hg|svn)$',
\ 'file': '\v\.(exe|bat|boot|eep|elf|clc|ld|so|o|a|map|bak|cfg|ini|dll|chm|hex|swp|zip|rar|db|txt|pdf|doc|docx|pjt|wsp|wsx|xlsm|xls|db\-journal|svn\-base|bmp|jpg|jpeg|png)$',}
let g:ctrlp_mruf_include='\.h$\|\.c$|\.make$'

let mapleader = ","

let g:signify_disable_by_default = 1

nnoremap <Leader>oc :e %<.c<CR>
nnoremap <Leader>oh :e %<.h<CR>

map <silent><F1> :UndotreeToggle<CR>
noremap <silent><F2> :SignifyToggle<CR>
nnoremap <F3> :set hlsearch!<CR>
set pastetoggle=<F5>
noremap <silent><F6> :MerginalToggle<CR>
map <silent><F7> :NERDTreeToggle<CR>
nmap <silent><F8> :TagbarToggle<CR>
nnoremap <F9> :set mouse=r<CR>
nnoremap <F10> :set mouse=a<CR>
