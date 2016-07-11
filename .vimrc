""""""""""""""""""""""""""
" Basic vim configuration
""""""""""""""""""""""""""
set autoindent
set smarttab
set tabstop=4
set shiftwidth=4
set textwidth=110
set hidden " Required for ctrlSpace
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

" If the file is a rst file then load the virtualenv in which vim_bridge is installed
"autocmd BufRead *.rst VirtualEnvActivate pyvim

" Toggle highlighting search results
nnoremap <F6> :set hlsearch!<CR>

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
Plugin 'honza/vim-snippets.git'
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
"Plugin 'rdnetto/YCM-Generator'
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
" Completion script
Bundle 'Shougo/neocomplete.vim'
" Spread nerdtree over all tabs
"Bundle 'jistr/vim-nerdtree-tabs'
" Controle your tabs
Bundle 'vim-ctrlspace/vim-ctrlspace'

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

" Use virtualenvs in the embeded python interpreter
Bundle 'jmcantrell/vim-virtualenv'


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Basic vim configuration that has to be done after vundle configuration
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
filetype on                         " Filetype-Erkennung aktivieren
filetype indent on                  " Syntax-Einrückungen je nach Filetype
filetype plugin on                  " Filetype-Plugins erlauben
colorscheme jellybeans


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


""""""""""""""""""""""""""""
"" Cofigure YouCompleteMe
""""""""""""""""""""""""""""
"let g:ycm_filetype_whitelist = { '*': 1}
"let g:ycm_filetype_blacklist = {
      "\ 'tagbar' : 1,
      "\ 'qf' : 1,
      "\ 'notes' : 1,
      "\ 'markdown' : 1,
      "\ 'unite' : 1,
      "\ 'text' : 1,
      "\ 'vimwiki' : 1,
      "\ 'pandoc' : 1,
      "\ 'infolog' : 1,
      "\ 'mail' : 1,
	  "\ 'rst' : 1
      "\}

""""""""""""""""""""""""""
" Navigate tmux and vim
""""""""""""""""""""""""""
"if exists('$TMUX')
	"function! TmuxOrSplitSwitch(wincmd, tmuxdir)
		"let previous_winnr = winnr()
		"silent! execute "wincmd " . a:wincmd
		"if previous_winnr == winnr()
			"call system("tmux select-pane -" . a:tmuxdir)
			"redraw!
		"endif
	"endfunction

	"let previous_title = substitute(system("tmux display-message -p '#{pane_title}'"), '\n', '', '')
	"let &t_ti = "\<Esc>]2;vim\<Esc>\\" . &t_ti
	"let &t_te = "\<Esc>]2;". previous_title . "\<Esc>\\" . &t_te

	"nnoremap <silent> <C-h> :call TmuxOrSplitSwitch('h', 'L')<cr>
	"nnoremap <silent> <C-j> :call TmuxOrSplitSwitch('j', 'D')<cr>
	"nnoremap <silent> <C-k> :call TmuxOrSplitSwitch('k', 'U')<cr>
	"nnoremap <silent> <C-l> :call TmuxOrSplitSwitch('l', 'R')<cr>
"else
	"map <C-h> <C-w>h
	"map <C-j> <C-w>j
	"map <C-k> <C-w>k
	"map <C-l> <C-w>l
"endif



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

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Ultisnips
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Neocomplete
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Note: This option must set it in .vimrc(_vimrc).  NOT IN .gvimrc(_gvimrc)!
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplete.
let g:neocomplete#enable_at_startup = 1
" Use smartcase.
let g:neocomplete#enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 3
let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'

" Define dictionary.
let g:neocomplete#sources#dictionary#dictionaries = {
    \ 'default' : '',
    \ 'vimshell' : $HOME.'/.vimshell_hist',
    \ 'scheme' : $HOME.'/.gosh_completions'
        \ }

" Define keyword.
if !exists('g:neocomplete#keyword_patterns')
    let g:neocomplete#keyword_patterns = {}
endif
let g:neocomplete#keyword_patterns['default'] = '\h\w*'

" Plugin key-mappings.
inoremap <expr><C-g>     neocomplete#undo_completion()
inoremap <expr><C-l>     neocomplete#complete_common_string()

" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
  return (pumvisible() ? "\<C-y>" : "" ) . "\<CR>"
  " For no inserting <CR> key.
  "return pumvisible() ? "\<C-y>" : "\<CR>"
endfunction
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
" Close popup by <Space>.
"inoremap <expr><Space> pumvisible() ? "\<C-y>" : "\<Space>"

" AutoComplPop like behavior.
"let g:neocomplete#enable_auto_select = 1

" Shell like behavior(not recommended).
"set completeopt+=longest
"let g:neocomplete#enable_auto_select = 1
"let g:neocomplete#disable_auto_complete = 1
"inoremap <expr><TAB>  pumvisible() ? "\<Down>" : "\<C-x>\<C-u>"

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
autocmd FileType php setlocal omnifunc=pythoncomplete#Complete

" Enable heavy omni completion.
if !exists('g:neocomplete#sources#omni#input_patterns')
  let g:neocomplete#sources#omni#input_patterns = {}
endif
"let g:neocomplete#sources#omni#input_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
"let g:neocomplete#sources#omni#input_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
"let g:neocomplete#sources#omni#input_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'

" For perlomni.vim setting.
" https://github.com/c9s/perlomni.vim
let g:neocomplete#sources#omni#input_patterns.perl = '\h\w*->\h\w*\|\h\w*::'

"""""""""""""""""""""""""""""""""""
" ctrlspace
"""""""""""""""""""""""""""""""""""

