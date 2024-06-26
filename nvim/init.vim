call plug#begin()
" The default plugin directory will be as follows: - Vim (Linux/macOS):
" '~/.vim/plugged' - Vim (Windows): '~/vimfiles/plugged' - Neovim
" (Linux/macOS/Windows): stdpath('data') . '/plugged' You can specify a custom
" plugin directory by passing it as the argument - e.g. `call
" plug#begin('~/.vim/plugged')` - Avoid using standard Vim directory names
" like 'plugin'

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" Any valid git URL is allowed
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Multiple Plug commands can be written in a single line using | separators
" Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
" Plug 'preservim/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'preservim/nerdtree'
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'vim-test/vim-test'

" Using a non-default branch
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
Plug 'fatih/vim-go', { 'tag': '*' }

" Plugin options
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Plug 'tpope/copilot'

Plug 'slim-template/vim-slim'

Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'catppuccin/nvim', { 'as': 'catppuccin' }

" Initialize plugin system
" - Automatically executes `filetype plugin indent on` and `syntax enable`.
call plug#end()

let g:mapleader = "\<Space>"

set autowrite
set backspace=2
set et

set relativenumber
set number
set numberwidth=5

set nocompatible
set nowrap
set laststatus=2 " show status line
set autoindent

" more natural splits
set splitbelow
set splitright

syntax on
filetype plugin indent on

autocmd FileType ruby setlocal expandtab shiftwidth=2 tabstop=2
autocmd FileType eruby setlocal expandtab shiftwidth=2 tabstop=2
autocmd FileType javascript setlocal expandtab shiftwidth=2 tabstop=2 softtabstop=0

" Better escape
inoremap jk <Esc>
inoremap kj <Esc>

" Alternate way to save
nnoremap <C-s> :w<CR>
" Alternate way to quit
nnoremap <C-Q> :wq!<CR>
" Use control-c instead of escape
nnoremap <C-c> <Esc>

" Quicker window movement
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

" NERDTree
nnoremap <leader>n :NERDTreeFind<CR>
nnoremap <C-n> :NERDTreeToggle<CR>

" FZF set rtp+=~/.fzf/bin/fzf
" set rtp+=~/.fzf
" nnoremap <silent> <C-f> :Files<CR>
" nnoremap <silent> <Leader>f :Rg<CR>
" nnoremap <silent> <Leader>b :Buffers<CR>

" map <C-f> :Files<CR>
" map <leader>b :Buffers<CR>
" nnoremap <leader>g :Ag<CR>
" nnoremap <leader>t :Tags<CR>
" nnoremap <leader>m :Marks<CR>

" let $FZF_DEFAULT_OPTS = '--layout=reverse --info=inline' let
" $FZF_DEFAULT_COMMAND="rg --files --hidden" let g:fzf_preview_window = []

" - Popup window (anchored to the bottom of the current window)
" let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.6, 'relative':
" v:true, 'yoffset': 1.0 } }

" Emmet
let g:user_emmet_leader_key='<C-e>'

" default updatetime 4000ms is not good for async update
set updatetime=100

" copy visually selected text to clip board
vmap <C-x> :!pbcopy<CR>
vmap <C-c> :w !pbcopy<CR><CR>

" vim-test mappings these "Ctrl mappings" work well when Caps Lock is mapped
" to Ctrl
nmap <silent> t<C-n> :TestNearest<CR>
nmap <silent> t<C-f> :TestFile<CR>
nmap <silent> t<C-s> :TestSuite<CR>
nmap <silent> t<C-l> :TestLast<CR>
nmap <silent> t<C-g> :TestVisit<CR>

" set colorcolumn=80

" highlight search results
set hlsearch

" set background=dark

" Display extra whitespace
set list listchars=tab:>>·,trail:·,nbsp:·

" Toggle between last 2 files
nnoremap <leader><leader> <c-^>

" Autosave
let g:auto_save = 1
let g:auto_save_in_insert_mode = 0

" default updatetime 4000ms is not good for async update
set updatetime=100

" Add ruler at 80 characters
set colorcolumn=80

" Find files using Telescope command-line sugar.
nnoremap <C-f> <cmd>Telescope find_files<cr>
nnoremap <leader>g <cmd>Telescope live_grep<cr>
nnoremap <leader>b <cmd>Telescope buffers<cr>
nnoremap <leader>h <cmd>Telescope help_tags<cr>

colorscheme catppuccin-mocha

