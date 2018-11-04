call plug#begin('~/.config/vim/plugged')

" If you need help with Vim Plug - :help plug-options
Plug 'junegunn/vim-plug'

" Defaults everyone can agree on
Plug 'tpope/vim-sensible'

" Control color sceme on console
Plug 'chriskempson/base16-vim'

" Tree explorer
Plug 'scrooloose/nerdtree'

" Command-line fuzzy finder
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" Other Misc Plugins
Plug 'tpope/vim-rails'
Plug 'brooth/far.vim'   " Find and replace

call plug#end()

colorscheme peachpuff
:set t_Co=256
syntax enable

:set cursorline
:set expandtab
:set formatoptions-=cro
:set incsearch
:set laststatus=2
:set scrolloff=10
:set shiftwidth=2
:set synmaxcol=300
:set tabstop=2
:set number relativenumber  " Show line numbers
:set ic " Ignore case when searching

" Remap leader key to space
let mapleader = "\<space>"

" Auto watch vimrc for changes and reload.
augroup myvimrc
  au!
  au BufWritePost .vimrc,_vimrc,vimrc,.gvimrc,_gvimrc,gvimrc so $MYVIMRC | if has('gui_running') | so $MYGVIMRC | endif
augroup END

" NerdTree
nnoremap <leader>n :NERDTree ~/dev<CR>
nnoremap <leader>r :NERDTreeFind<CR>
let NERDTreeShowLineNumbers=1
let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"

" FZF
nnoremap <leader>f :GFiles<CR>
