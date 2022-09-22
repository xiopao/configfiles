set nocompatible
filetype off

" Keep Plug commands between plug#begin() and plug#end().
call plug#begin()

Plug 'ghifarit53/tokyonight-vim'
Plug 'airblade/vim-gitgutter'     " Show git diff of lines edited
Plug 'mileszs/ack.vim'            " Use ack in Vim
Plug 'vim-airline/vim-airline'    " Vim powerline
Plug 'preservim/nerdtree'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'           " Set up fzf and fzf.vim
Plug 'neoclide/coc.nvim', { 'branch': 'release' }
Plug 'tmsvg/pear-tree'
Plug 'tpope/vim-commentary'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}

call plug#end()              " required
filetype plugin indent on    " required

let mapleader = " "

" Look and Feel settings
syntax enable
set termguicolors
let g:tokyonight_style = 'night'
let g:tokyonight_enable_italic = 1
let g:tokyonight_transparent_background = 1
colorscheme tokyonight
set background=dark
set wildmenu " when opening a file with e.g. :e ~/.vim<TAB> there is a graphical menu of all the matches
set ttyfast
set lazyredraw
set updatetime=500
set hidden " Open other files if current one is not saved

" Enable Mouse mode in all modes
set mouse=a

" Numbers
set number
set numberwidth=4
set ruler

" Treat long lines as break lines
map j gj
map k gk

" Indentation
set autoindent
set cindent
set smartindent

set noerrorbells visualbell t_vb=

" Tab Options
set shiftwidth=2
set tabstop=2
set softtabstop=2 " Number of spaces a tab counts when editing
set expandtab

" Ack tricks
let g:ackprg = 'rg --vimgrep --smart-case --hidden'
" Any empty ack search will search for the work the cursor is on
let g:ack_use_cword_for_empty_search = 1
nmap <leader>a :Ack!<Space>
nmap <leader>A :Ack! <cword><CR>

" Set default encoding to utf-8
set encoding=utf-8
set termencoding=utf-8

" Disable backups and swap files
set nobackup
set nowritebackup
set noswapfile

set ignorecase " Ignore case when searching
set smartcase  " When searching try to be smart about cases
set incsearch  " Jumping search

" Always show the status line
set laststatus=2

" Delete characters outside of insert area
set backspace=indent,eol,start

" +++ Shortcuts +++
" Open Buffer
nnoremap <leader>l :buffers<CR>:buffer<Space>

set clipboard=unnamedplus

nnoremap <silent><leader>w :w!<CR>
nnoremap <silent><leader>q :bdelete<CR>
nnoremap <silent><leader>x :x<CR>
nnoremap <silent>sv :vs<CR><C-w>w
nnoremap <silent>ss :split<CR><C-w>w

nnoremap <silent><leader>e :NERDTreeToggle<CR>

" Open Vim configuration file for editing
nnoremap <silent><leader>2 :e ~/.vimrc<CR>
" Source Vim configuration file and install plugins
nnoremap <silent><leader>1 :source ~/.vimrc \| :PlugInstall<CR>

" If fzf installed using git
set rtp+=~/.fzf
" Map fzf search to CTRL P
nnoremap ;f :GFiles<Cr>
" Map fzf + ag search to CTRL P
nnoremap ;r :Rg <Cr>

" Easier movement between split windows CTRL + {h, j, k, l}
nnoremap <c-h> <c-w>h
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-l> <c-w>l

nnoremap <silent>L :bnext<CR>
nnoremap <silent>H :bprev<CR>

" CoC extensions
let g:coc_global_extensions = ['coc-pyright', 'coc-tsserver', 'coc-json']

" Add CoC Prettier if prettier is installed
if isdirectory('./node_modules') && isdirectory('./node_modules/prettier')
  let g:coc_global_extensions += ['coc-prettier']
endif

" Add CoC ESLint if ESLint is installed
if isdirectory('./node_modules') && isdirectory('./node_modules/eslint')
  let g:coc_global_extensions += ['coc-eslint']
endif

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
set signcolumn=yes

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Remap keys for applying codeAction to the current buffer.
nmap <leader>c  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" Use K to show documentation in preview window.
nnoremap <silent> K :call ShowDocumentation()<CR>

" Close preview window after completion is done
autocmd! CompleteDone * if pumvisible() == 0 | pclose | endif

" Use <Tab> for confirm completion.
" Coc only does snippet and additional edit on confirm.
inoremap <expr> <Tab> pumvisible() ? "\<C-y>" : "\<Tab>"

function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction

" Format
nmap <leader>f :CocCommand prettier.formatFile<CR>

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)
