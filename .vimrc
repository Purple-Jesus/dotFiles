""""""""""""""""""""""""""
" Basic vim configuration
""""""""""""""""""""""""""
set autoindent
set smarttab
set tabstop=4
set shiftwidth=4
set textwidth=110
let mapleader=","
" Activate/Deactivate the paste modus of vim
set pastetoggle=<F5>

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
Plugin 'vim-php/tagbar-phpctags.vim'
" Syntax completion; needs external programms see homepage
"Plugin 'Valloric/YouCompleteMe'
Plugin 'rdnetto/YCM-Generator'
"Plugin 'altercation/vim-colors-solarized.git'
" Syntax checking plugin
Plugin 'scrooloose/syntastic.git'
" Search and display information from arbitrary sources like files
Plugin 'Shougo/unite.vim'
" Another status line plugin 
"Plugin 'itchyny/lightline.vim'
" Full path fuzzy file finder
Plugin 'ctrlpvim/ctrlp.vim'
" Git in vim 
Bundle 'tpope/vim-fugitive'
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
" Improved javascript indentation
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
 Bundle 'pangloss/vim-javascript'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vim Git runtime files
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Bundle 'tpope/vim-git'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vim runtime files for Haml, Sass, and SCSS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Bundle 'tpope/vim-haml'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vim Markdown runtime files
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Bundle 'tpope/vim-markdown'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim handlebars runtime files
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Bundle 'nono/vim-handlebars'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Syntax for jquery keywords and selectors
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Bundle 'itspriddle/vim-jquery'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vim syntax for jst files
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Bundle 'jeyb/vim-jst'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Syntax for nginx
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Bundle 'mutewinter/nginx.vim'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Makes css colors show up as their actual colors, works better with CSApprox
" or macvim
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Bundle 'ap/vim-css-color'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" My favorite dark color scheme
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Bundle 'mrtazz/molokai.vim'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Decent light color scheme
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Bundle 'nelstrom/vim-mac-classic-theme'
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
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"""""""""""""""""""""""""""
" Configure tagbar-php
"""""""""""""""""""""""""""
let g:tagbar_phpctags_bin='~/.vim/bundle/tagbar-phpctags.vim/bin/phpctags'
"let g:tagbar_phpctags_memory_limit = '512M'


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

""""""""""""""""""""""""""
" Navigate tmux and vim
""""""""""""""""""""""""""
if exists('$TMUX')
	function! TmuxOrSplitSwitch(wincmd, tmuxdir)
		let previous_winnr = winnr()
		silent! execute "wincmd " . a:wincmd
		if previous_winnr == winnr()
			call system("tmux select-pane -" . a:tmuxdir)
			redraw!
		endif
	endfunction

	let previous_title = substitute(system("tmux display-message -p '#{pane_title}'"), '\n', '', '')
	let &t_ti = "\<Esc>]2;vim\<Esc>\\" . &t_ti
	let &t_te = "\<Esc>]2;". previous_title . "\<Esc>\\" . &t_te

	nnoremap <silent> <C-h> :call TmuxOrSplitSwitch('h', 'L')<cr>
	nnoremap <silent> <C-j> :call TmuxOrSplitSwitch('j', 'D')<cr>
	nnoremap <silent> <C-k> :call TmuxOrSplitSwitch('k', 'U')<cr>
	nnoremap <silent> <C-l> :call TmuxOrSplitSwitch('l', 'R')<cr>
else
	map <C-h> <C-w>h
	map <C-j> <C-w>j
	map <C-k> <C-w>k
	map <C-l> <C-w>l
endif



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ARROW KEYS ARE UNACCEPTABLE
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <Left> :echo "no!"<cr>
map <Right> :echo "no!"<cr>
map <Up> :echo "no!"<cr>
map <Down> :echo "no!"<cr>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" tmux stuff
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"if has('mouse')
"set mouse=a
     "if &term =~ "xterm" || &term =~ "screen"
		"" for some reason, doing this directly with 'set ttymouse=xterm2'
		"" doesn't work -- 'set ttymouse?' returns xterm2 but the mouse
		"" makes tmux enter copy mode instead of selecting or scrolling
		"" inside Vim -- but luckily, setting it up from within autocmds
		"" works
		"autocmd VimEnter * set ttymouse=xterm2
		"autocmd FocusGained * set ttymouse=xterm2
		"autocmd BufEnter * set ttymouse=xterm2
	"endif
"endif

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
