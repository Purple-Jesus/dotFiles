""""""""""""""""""""""""""
" Basic vim configuration
""""""""""""""""""""""""""
set autoindent
set smarttab
set tabstop=4
set shiftwidth=4
set textwidth=110
set hidden " Required for ctrlSpace
set number " Show line number
set relativenumber " Show relative line numbers
"set foldmethod=syntax
"set foldnestmax=1
let mapleader=","
" Activate/Deactivate the paste modus of vim
set pastetoggle=<F5>
map <leader>ff :%g/\(function\_.\{-}\)\@<={/ normal! f{zf%
" search visual selected pattern
vnoremap // y/<C-R>"<CR>
" set term=ansi
syntax on
" acitivate mouse 
set mouse=a
if !has("nvim")
	set ttymouse=xterm2
endif
"set selectmode+=mouse
" Treat long lines as break lines (useful when moving around in them)
map j gj
map k gk
imap jj <ESC>
nmap <C-m> <PageDown>
nmap <C-f> :grep -rIne /<C-R>/[g][j]<CR>
nnoremap F :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>

" allow backspace to delete 'tabs' 'end of line' and the 'start of the current
" insert'
set backspace=indent,eol,start
" Status line
set laststatus=2
" => Spell checking
" Pressing ,ss will toggle and untoggle spell checking
map <leader>ss :setlocal spell!<cr>
" Shortcuts using <leader>
map <leader>sn ]s
map <leader>sp [s
map <leader>sa zg
map <leader>s? z=
" Tagbar
nmap <F8> :TagbarToggle<CR>
" Window Navigation
nmap <silent> <A-Up> :wincmd k<CR>
nmap <silent> <A-Down> :wincmd j<CR>
nmap <silent> <A-Left> :wincmd h<CR>
nmap <silent> <A-Right> :wincmd l<CR>
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" If the file is a rst file then load the virtualenv in which vim_bridge is installed
"autocmd BufRead *.rst VirtualEnvActivate pyvim

" Shortkeys for easy tab navigation
nnoremap <F3>  :tabprevious<CR>
nnoremap <F4>  :tabnext<CR>
nnoremap <F2>  :tabfirst<CR>
" Toggle highlighting search results
nnoremap <F6>  :set hlsearch!<CR>
nnoremap <F11> :set mouse=r<CR>
nnoremap <F12> :set mouse=a<CR>
nnoremap <F7>  :NERDTreeToggle<CR>
nnoremap <F8>  :Tagbar<CR>
nnoremap <F10> :UndotreeToggle

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

 

"NAVIGATE BETWEEN SPLITS

nnoremap <C-J> <C-W><C-J>

nnoremap <C-K> <C-W><C-K>

nnoremap <C-L> <C-W><C-L>

nnoremap <C-H> <C-W><C-H>


"RESIZE SPLITS

set winheight=5

set winwidth=10

set winminheight=5

set winminwidth=10

nnoremap <silent> <S-K> :res+5<CR>

nnoremap <silent> <S-J> :res-5<CR>

nnoremap <silent> <S-H> :vertical res-10<CR>

nnoremap <silent> <S-L> :vertical res+10<CR>

" Pull word under cursor into LHS of a substitute (for quick search and replace)
nnoremap <leader>z :%s#\<<C-r>=expand("<cword>")<CR>\>#

function! SetTagPath()
	let tagDir = fnamemodify(finddir('.git', '.;'), ':h')
	let &tags=tagDir . "/.tags"
endfunction

call SetTagPath()

function! GenerateProjectTags()
   let rootDir = fnamemodify(finddir('.git', '.;'), ':h')
   "let rootDir = g:NERDTreeFileNode.GetSelected().path.str()
   exec  ':!ctags -R --exclude=".git" -f ' . rootDir . '/.tags ' . rootDir
   let &tags=rootDir. "/.tags"
endfunction

nnoremap <F9> :call GenerateProjectTags()<CR>

"""""""""""""""""""""""""""
" configure vbundle
"""""""""""""""""""""""""""
set nocompatible
filetype off

" Set the runtime path and initialize Vundle:
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Let Vundle manage itself (required)
Plugin 'VundleVim/Vundle.vim'

" Install and use the following Plugins:
Plugin 'vim-scripts/sudo.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'jezcope/vim-align'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'powerline/fonts'
Plugin 'nanotech/jellybeans.vim'
Plugin 'nvie/vim-rst-tables.git'
Plugin 'majutsushi/tagbar'
" Syntax checking plugin
Plugin 'scrooloose/syntastic.git'
" Search and display information from arbitrary sources like files
Plugin 'Shougo/unite.vim'
" Full path fuzzy file finder
Plugin 'ctrlpvim/ctrlp.vim'
" Git in vim 
Bundle 'tpope/vim-fugitive'
" Completion script
" Controle your tabs
Bundle 'vim-ctrlspace/vim-ctrlspace'
Bundle 'vim-scripts/groovy.vim'
Bundle 'morhetz/gruvbox'
Bundle 'mbbill/undotree'
Bundle 'easymotion/vim-easymotion'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Surrond stuff with things. ysiw" surrounds a word with quotes
" cs"' changes " to '
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Bundle 'tpope/vim-surround'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Lets you use . to repeat some things like vim-surround
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Bundle 'tpope/vim-repeat'
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Tab to indent or autocomplete depending on context
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Bundle 'ervandew/supertab'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vim Git runtime files
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Bundle 'tpope/vim-git'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" My favorite dark color scheme
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Bundle 'mrtazz/molokai.vim'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Decent light color scheme
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Bundle 'nelstrom/vim-mac-classic-theme'
call vundle#end()

" Use virtualenvs in the embeded python interpreter
Bundle 'jmcantrell/vim-virtualenv'


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Basic vim configuration that has to be done after vundle configuration
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
filetype on                         " Filetype-Erkennung aktivieren
filetype indent on                  " Syntax-Einrückungen je nach Filetype
filetype plugin on                  " Filetype-Plugins erlauben
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

let g:airline_theme="gruvbox"

let g:ariline#extensions#syntastic#stl_format_err = 1
let g:ariline#extensions#syntastic#stl_format_warn = 1


"""""""""""""""""""""""""""
" Configure Syntastic
"""""""""""""""""""""""""""
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_loc_list_height = 5
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_error_symbol = "✗"
let g:syntastic_warning_symbol = "⚠"
let g:syntastic_quiet_messages = {
			\ "!level":  "errors",
			\ "type":    "style",
			\ "regex":   '\m\[C03\d\d\]',
			\ "file:p":  ['\m^/usr/include/', '\m\c\.h$', '\m\c\.c$'] }
"let g:ycm_show_diagnostic_ui = 0 " In case ycm is running and syntastic should run too

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ARROW KEYS ARE UNACCEPTABLE
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"map <Left> :echo "no!"<cr>
"map <Right> :echo "no!"<cr>
"map <Up> :echo "no!"<cr>
"map <Down> :echo "no!"<cr>

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

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Persistent undo
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set undofile
set undodir=$HOME/.vim/undo
set undolevels=1000
set undoreload=10000

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ctrlspace
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows

let g:ctrlp_root_markers = ".projectroot"
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_custom_ignore = {
			\ 'dir':  '\v[\/]\.(git|hg|svn)$',
			\ 'file': '\v\.(exe|so|d'
			\ }

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" The Silver Searcher
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if executable('ag')
	" Use ag over grep
	set grepprg=ag\ --nogroup\ --nocolor
	" Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
	let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
	" ag is fast enough that CtrlP doesn't need to cache
	let g:ctrlp_use_caching = 0
endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NERDTree
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Store the bookmarks file
let NERDTreeBookmarksFile=expand("$HOME/.vim/NERDTreeBookmarks")

" Show the bookmarks table on startup
let NERDTreeShowBookmarks=1

" Use a single click to fold/unfold directories and a double click to open
" files
let NERDTreeMouseMode=2

" Don't display these kinds of files
let NERDTreeIgnore=[ '\.pyc$', '\.pyo$', '\.py\$class$', '\.obj$',
            \ '\.o$', '\.so$', '\.egg$', '^\.git$', '__pycache__', '\.DS_Store' ]

