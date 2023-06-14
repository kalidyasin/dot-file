call plug#begin()

    Plug 'junegunn/fzf'                     " fzf is a general-purpose command-line fuzzy finder
    Plug 'junegunn/fzf.vim'                 " fzf vim plugin
    Plug 'joshdick/onedark.vim'             " one dark color schema plugin
    Plug 'preservim/nerdtree'               " nerdtree plugin
    Plug 'preservim/nerdcommenter'          " nerdcommenter
    "Plug 'preservim/vim-indent-guides'      " vim indent guides plugin
    Plug 'itchyny/lightline.vim'            " lightline plugin
    Plug 'tpope/vim-fugitive'               " vim-fugitive is git suport plugin
    Plug 'kalidyasin29/onehalfocean'        " onehalfocean plugin
    Plug 'ycm-core/YouCompleteMe'           " Youcompletme plugin
    Plug 'dense-analysis/ale'               " ALE plugin
    Plug 'yaegassy/coc-intelephense', {'do': 'yarn install --frozen-lockfile'}        " PHP intelephens

call plug#end()

" Set true colors for vim if vim >= 8
if (has("termguicolors"))
    set termguicolors
endif

" Set lightline theme
let g:lightline = {
          \ 'colorscheme': 'onehalfdarkocean',
                \ 'active': {
                      \   'left': [ [ 'mode', 'paste' ],
                            \             [ 'gitbranch', 'readonly', 'absolutepath', 'modified' ] ]
      \ },
            \ 'component_function': {
                  \   'gitbranch': 'FugitiveHead'
      \ },
            \ }

filetype plugin on                  " Filetype plugin on
set laststatus=2                    " Show lightline status bar
set noshowmode                      " Desable default status bar
filetype indent on                  " Enable file-type-specific indentation
syntax on                           " Enable syntax highlighting
set number                          " Set page numbers
"set backspace=indent,eol,start      " Backspace not working fix

"use space insted of tab
set expandtab
set tabstop=4
set shiftwidth=4

colorscheme onehalfdarkocean        " Vim color theme

"audo close braces
inoremap ( ()<Left>
inoremap [ []<Left>
inoremap { {}<Left>
inoremap ' ''<Left>
inoremap " ""<Left>


"NerdTree keybaindings
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

"FZF keybindings
nnoremap <C-p> :Files<CR>
nnoremap <C-b> :Buffers<CR>

