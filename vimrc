" .vimrc file

" Settings
set t_Co=256                " 256-colour terminal
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
set encoding=utf-8          " UTF-8 enconding
set wildignore=*.swp,*.bak,*.pyc " Ignore files with these extensions
syntax enable               " Colour syntax
autocmd BufWritePre * :%s/\s\+$//e " Remove trailing whitespaces before saving to a file

" Vundle
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'
Bundle 'Mustang2'
Bundle 'ctrlp.vim'
Bundle 'Puppet-Syntax-Highlighting'
Bundle 'The-NERD-tree'
Bundle 'Gundo'
Bundle 'taglist.vim'
Bundle 'ack.vim'
Bundle 'Syntastic'
filetype plugin indent on

let g:syntastic_always_populate_loc_list=1
let g:syntastic_auto_loc_list=1
let g:syntastic_python_checkers=['flake8']

" Colour scheme
syntax enable
set background=dark
colorscheme Mustang

" Mappings
map <C-n> :NERDTreeToggle<CR>
map <leader>g :GundoToggle<CR>
map <leader>t :TlistToggle<CR>
map <leader>j :RopeGotoDefinition<CR>
map <f12> :!ctags -R .<CR>
