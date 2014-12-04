" .vimrc file

" Settings
set autoindent              " Autoindent code
set colorcolumn=81          " Show end-of-line column in red
set encoding=utf-8          " UTF-8 enconding
set expandtab               " Convert tab to spaces
set formatoptions-=or       " Don't try to be too smart when inserting comments
set guioptions-=T           " Don't show Gvim's toolbar
set guitablabel=%t          " Show only the name of the file on the tab
set hlsearch                " Highlight search terms
set ignorecase              " ignore case when searching
set nobackup                " Don't create backup files
set nocompatible            " Use VIM's features
set noswapfile              " Don't create a swap file
set number                  " Show line numbers
set shiftwidth=4            " Spaces for autoindent
set splitbelow              " Split horizontally below the current buffer
set splitright              " Split vertically on the right of the current buffer
set t_Co=256                " 256-colour terminal
set tabstop=4               " Tab == 4 spaces
set wildignore=*.swp,*.bak,*.pyc " Ignore files with these extensions
autocmd BufWritePre * :%s/\s\+$//e " Remove trailing whitespaces before saving to a file

" Vundle
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'
Bundle 'Mustang2'
Bundle 'ctrlp.vim'
Bundle 'The-NERD-tree'
Bundle 'Gundo'
Bundle 'ack.vim'
Bundle 'Syntastic'
Bundle 'Tagbar'
Bundle 'fugitive.vim'
Bundle 'honza/dockerfile.vim'
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
map <leader>t :TagbarToggle<CR>
map <leader>j :RopeGotoDefinition<CR>
map <leader>b :CtrlPBuffer<CR>
map <leader>c :!ctags -R .<CR>
" Clear the search buffer when hitting return
nnoremap <CR> :nohlsearch<cr> 
