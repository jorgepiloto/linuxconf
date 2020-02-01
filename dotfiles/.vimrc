"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
"		     CUSTOM VIM CONFIGURATION
"		      Author: Jorge Martínez
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""" VIM General: Configuration
set nocompatible "Necesary for lots of cool vim things
set nobackup "No backup files
set nowritebackup "No backup files when editing
set noswapfile "No swap files

""""""""""""""""""""""""""""""""""""""""""""""""""" Python IDE: Configuration
set nu "Shows number lines
set encoding=utf-8 "Selects editor encoding
syntax on "Enables syntax
set colorcolumn=80

"""""""""""""""""""""""""""""""""""""""""""""""""""" Shortcuts: Configuration
map <tab> <C-W><C-W> 
nmap <F5> <Esc>:w<CR>:!clear;python %<CR>
nmap <F6> <Esc>:w<CR>:!clear;pytest -vv %<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""" Vundle: Configuration
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'vim-scripts/indentpython.vim' 		" Python Autoidentation
Plugin 'vim-airline/vim-airline' 		" Powerline
Plugin 'vim-airline/vim-airline-themes'		" Powerline-themes
Plugin 'Yggdroot/indentLine'			" Identation bars
Plugin 'https://github.com/scrooloose/nerdtree' " Nerd-tree
Plugin 'ryanoasis/vim-devicons'			" Nerd-tree icon colors	
Plugin 'tiagofumo/vim-nerdtree-syntax-highlight' " Nerd-tree highlight	
Plugin 'davidhalter/jedi-vim'			" Jedi Vim	
Plugin 'Valloric/YouCompleteMe'			" Suggestions for vim
Plugin 'airblade/vim-gitgutter'			" Git indicatior		
Plugin 'myusuf3/numbers.vim'			" Relative numbering
Plugin 'ctrlpvim/ctrlp.vim'			" File searching
Plugin 'jorgepiloto/volk'			" Custom colorscheme		
Plugin 'fadein/vim-FIGlet'			" Ascii-art
Plugin 'christoomey/vim-system-copy'		" For copy-paste 
Plugin 'kamykn/spelunker.vim'			" Spell checker for Vim
Plugin 'caglartoklu/ftcolor.vim'		" Switches colorschemes according to the file type
Plugin 'caglartoklu/launchassociated.vim'	" Launches current file with the associated program

" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

"""""""""""""""""""""""""""""""""""""""""""""""""""""""" Theme: Configuration
colorscheme volk
highlight ColorColumn ctermbg=red

""""""""""""""""""""""""""""""""""""""""""""""""""""" Poweline: Configuration
"let g:airline_theme='powerlineish'
"let g:airline_theme='onehalfdark'
"let g:airline#extensions#tabline#enabled = 0

""""""""""""""""""""""""""""""""""""""""""""""""""""" NerdTree: Configuration
nmap <F2> :NERDTreeToggle<CR>
let g:NERDTreeMinimalUI = v:true

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""" Git: Configuration
set updatetime=100
"highlight GitGutterAdd    guifg=#009900 guibg=#121212 ctermfg=2 ctermbg=0
"highlight GitGutterChange guifg=#bbbb00 guibg=#121212 ctermfg=3 ctermbg=0
"highlight GitGutterDelete guifg=#ff2222 guibg=#121212 ctermfg=1 ctermbg=0

""""""""""""""""""""""""""""""""""""""""""""""""""""""""" Todo: Configuration
let mapleader = ","
let g:simple_todo_tick_symbol = '✓'

""""""""""""""""""""""""""""""""""""""""""""""""""""""" Tagbar: Configuration
"nmap <F8> :TagbarToggle<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""" Numbers: Configuration
nnoremap <F4> :NumbersOnOff<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""" Ctrlp: Configuration
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']

"""""""""""""""""""""""""""""""""""""""""""""""""""" Spellunker: Configuration 
let g:enable_spelunker_vim = 0

