""""""""""""""""""""""""""
" Basic vim configuration
""""""""""""""""""""""""""
set autoindent
set smarttab
set tabstop=4
set shiftwidth=4
set textwidth=110
" set term=ansi
syntax on
" acitivate mouse 
set mouse=a
"set selectmode+=mouse
" Treat long lines as break lines (useful when moving around in them)
map j gj
map k gk
" allow backspace to delete 'tabs' 'end of line' and the 'start of the current
" insert'
set backspace=indent,eol,start
" Shortkeys for easy tab navigation
nnoremap <F3> :tabprevious<CR>
nnoremap <F4> :tabnext<CR>
nnoremap <F2> :tabfirst<CR>
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


"""""""""""""""""""""""""""
" configure vbundle
"""""""""""""""""""""""""""
set nocompatible
filetype off

" Set the runtime path and initialize Vundle:
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Let Vundle manage itself (required)
Plugin 'gmarik/Vundle.vim'

" Install and use the following Plugins:
Plugin 'vim-scripts/sudo.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'SirVer/ultisnips'
Plugin 'jezcope/vim-align'
Plugin 'scrooloose/nerdtree'
"Plugin 'powerline/powerline'
"Plugin 'Lokaltog/vim-powerline'
Plugin 'vim-airline/vim-airline'
"Plugin 'vim-airline/vim-bufferline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'powerline/fonts'
Plugin 'nanotech/jellybeans.vim'
Plugin 'nvie/vim-rst-tables.git'
Plugin 'majutsushi/tagbar'
" Syntax completion; needs external programms see homepage
Plugin 'Valloric/YouCompleteMe'
Plugin 'rdnetto/YCM-Generator'
"Plugin 'altercation/vim-colors-solarized.git'
" Syntax checking plugin
Plugin 'scrooloose/syntastic.git'
" Search and display information from arbitrary sources like files
Plugin 'Shougo/unite.vim'
" Another status line plugin 
Plugin 'itchyny/lightline.vim'
" Full path fuzzy file finder
Plugin 'ctrlpvim/ctrlp.vim'
" ...
call vundle#end()


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Basic vim configuration that has to be done after vundle configuration
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
filetype on                         " Filetype-Erkennung aktivieren
filetype indent on                  " Syntax-Einrückungen je nach Filetype
filetype plugin on                  " Filetype-Plugins erlauben
colorscheme jellybeans


""""""""""""""""""""""""""
" configure ultisnips
""""""""""""""""""""""""""
" Trigger configuration
let g:UltiSnipsExpandTriger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"


"""""""""""""""""""""""""
" Airlineconfiguration
"""""""""""""""""""""""""
let g:airline_powerline_fonts=0
let g:airline#extensions#tabline#enabled = 1
if !exists('g:airline_symbols')
	let g:airline_symbols = {}
endif
	let g:airline_symbols.space = "\ua0"

let g:airline_theme="murmur"
"function! AirlineInit()
"	let g:airline_section_a = airline#section#create(['mode',' ','branch'])
"	let g:airline_section_b = airline#section#create_left(['ffenc','hunks','%f'])
"	let g:airline_section_c = airline#section#create(['filetype'])
"	let g:airline_section_b = airline#section#create(['%P'])
"	let g:airline_section_b = airline#section#create(['%B'])
"	let g:airline_theme="murmur"
"	"let g:airline_section_b = airline#section#create_right(['%l','%c'])
"endfunction
"autocmd VimEnter * call AirlineInit()


"""""""""""""""""""""""""""
" Configure Syntastic
"""""""""""""""""""""""""""
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0


"""""""""""""""""""""""""""
" Cofigure YouCompleteMe
"""""""""""""""""""""""""""
let g:ycm_filetype_whitelist = { '*': 1}
let g:ycm_filetype_blacklist = {
      \ 'tagbar' : 1,
      \ 'qf' : 1,
      \ 'notes' : 1,
      \ 'markdown' : 1,
      \ 'unite' : 1,
      \ 'text' : 1,
      \ 'vimwiki' : 1,
      \ 'pandoc' : 1,
      \ 'infolog' : 1,
      \ 'mail' : 1,
	  \ 'rst' : 1
      \}
