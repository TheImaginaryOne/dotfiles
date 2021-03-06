set termguicolors

" Cursorline settings
set cursorline
hi CursorLine cterm=NONE


set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab
set number
set nocompatible              " be iMproved, required
filetype off                  " required

""""""""""""" Vim-plug Settings """""""""""""

call plug#begin("~/.local/share/nvim/plugged")

" Plug 'neoclide/coc.nvim', {'branch': 'release'}
" vim airline
" Plug 'neovim/nvim-lsp'
Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'morhetz/gruvbox'
Plug 'lervag/vimtex'
Plug 'airblade/vim-gitgutter'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

" All of your Plugins must be added before the following line
call plug#end()            " required

"""""""""""""""""""""""""""""""""""""""""""""



" Required for operations modifying multiple buffers like rename.
set hidden
" RUST
let g:LanguageClient_serverCommands = {
    \ 'rust': ['rust-analyzer'],
    \ }
"autocmd BufReadPost *.rs setlocal filetype=rust

"function! Setup()
"lua << EOF
"	vim.cmd('packadd nvim-lsp')
"	require'nvim_lsp'.rust_analyzer.setup{}
"EOF
"endfunction

" Automatically start language servers.
let g:LanguageClient_autoStart = 1
let g:deoplete#enable_at_startup = 1

"let g:deoplete#sources#clang#libclang_path = '/usr/lib/libclang.so'
"let g:deoplete#sources#clang#clang_header = '/usr/include/clang'


filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"

" Airline theme
let g:airline_theme='gruvbox'

let g:airline_powerline_fonts = 1 " powerline!

" Open nerdtree on start.

" nmap <space>e :CocCommand explorer<CR>

set background=dark
let g:gruvbox_contrast_dark='medium'
colorscheme gruvbox

" signcolumn!
set signcolumn=yes
autocmd FileType nerdtree setlocal signcolumn=no
"""""""""""""" Keyboard shortcuts
" Alt up/down/left/right to change windows.
nmap <silent> <A-Up> :wincmd k<CR>
nmap <silent> <A-Down> :wincmd j<CR>
nmap <silent> <A-Left> :wincmd h<CR>
nmap <silent> <A-Right> :wincmd l<CR>

inoremap jk <Esc>
" LanguageClient shortcuts
nnoremap <silent> K :call LanguageClient_textDocument_hover()<CR>
nnoremap <silent> rf :call LanguageClient_textDocument_rename()<CR>
" nmap rf <Plug>(coc-refactor)
