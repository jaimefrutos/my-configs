" .vimrc file

" Settings
set autoindent              " Autoindent code
set colorcolumn=80          " Show end-of-line column in red
set expandtab               " Convert tab to spaces
set guioptions-=T           " Don't show Gvim's toolbar
set guitablabel=%t          " Show only the name of the file on the tab
set hlsearch                " Highlight search terms
set ignorecase              " ignore case when searching
set nobackup                " Don't create backup files
set nocompatible            " Use VIM's features               
set noswapfile              " Don't create a swap file
set number                  " Show line numbers
set shiftwidth=4            " Spaces for autoindent
set splitright              " Split vertically on the right of the current buffer
set splitbelow              " Split horizontally below the current buffer
set tabstop=4               " Tab == 4 spaces
set wildignore=*.swp,*.bak,*.pyc " Ignore files with these extensions
syntax enable               " Colour syntax

" Vundle
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'
Bundle 'Mustang2'
Bundle 'ctrlp.vim'
Bundle 'Puppet-Syntax-Highlighting'
Bundle 'The-NERD-tree'
Bundle 'Python-mode-klen'
Bundle 'Gundo'
Bundle 'taglist.vim'
filetype plugin indent on 
let g:pymode_folding = 0

" Colour scheme
set background=dark
colorscheme Mustang

" Mappings
map <C-n> :NERDTreeToggle<CR>
map <leader>g :GundoToggle<CR>
map <leader>t :TlistToggle<CR>
map <leader>j :RopeGotoDefinition<CR>
map <f12> :!ctags -R .<CR>
