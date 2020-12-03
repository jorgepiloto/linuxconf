"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
"		     CUSTOM VIM CONFIGURATION
"		      Author: Jorge Martínez
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


" Description:
" -----------
"
"  This configuration file for Vim editor is focused on a vanilla Vim approach,
"  meaning that a minimum quantity of plugins is used.


"""""""""""""""""""""""""""""""""""""""""""""""""" VIM General: Configuration
set nocompatible	" Necessary for lots of cool vim things
set nobackup 		" No backup files
set nowritebackup 	" No backup files when editing
set noswapfile 		" No swap files
set textwidth=80	" Wrap at 80 characters
set colorcolumn=80	" Show a solid colored column
set path+=**		" Provides tab completion for all file-related
set wildmenu		" Display a simple menu completion
set spelllang=en_us	" Enable American English spelling by default
set spell		" Activate spell checking


""""""""""""""""""""""""""""""""""""""""""""""""""" Python IDE: Configuration
set nonu 		" Do not show absolute number line
set relativenumber 	" Show relative number line
set encoding=utf-8 	" Selects editor encoding
syntax on 		" Enables syntax


"""""""""""""""""""""""""""""""""""""""""""""""""""" Shortcuts: Configuration
" Execute Python scripts just by pressing F5
nmap <F5> <Esc>:w<CR>:!clear;python %<CR>

" Execute Python testing just by pressing F6
nmap <F6> <Esc>:w<CR>:!clear;pytest -vv %<CR>

" Apply both black and isort by pressing F7
nmap <F7> <Esc>:w<CR>:!clear;black % && isort %<CR>


""""""""""""""""""""""""""""""""""""""""""""""""""""""" Vundle: Configuration
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'		" Required for managing plugins
Plugin 'vim-scripts/AutoComplPop'	" Pops a completion menu
Plugin 'airblade/vim-gitgutter'		" Shows git diff sign in right side
Plugin 'jorgepiloto/volk'		" Custom colortheme for vim
Plugin 'simeji/winresizer'		" Resize windows easy
Plugin 'kien/ctrlp.vim'			" Faster than find command
Plugin 'hura/vim-asymptote'		" Syntax highlight for asymptote

" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

"""""""""""""""""""""""""""""""""""""""""""""""""""""""" Theme: Configuration
highlight ColorColumn ctermbg=red
colorscheme volk


""""""""""""""""""""""""""""""""""""""""""""""""""" Status Bar: Configuration
set laststatus=2
set statusline=\ %f%m%r%h%w\ %=%({%{&ff}\|%{(&fenc==\"\"?&enc:&fenc).((exists(\"+bomb\")\ &&\ &bomb)?\",B\":\"\")}%k\|%Y}%)\ %([%l,%v][%p%%]\ %)


""""""""""""""""""""""""""""""""""""""""""""""""""" Git Gutter: Configuration
set updatetime=100

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

augroup filetypedetect
au BufNewFile,BufRead *.asy     setf asy
augroup END
filetype plugin on


