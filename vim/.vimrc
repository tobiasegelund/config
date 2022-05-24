" vundle settings
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
" set rtp+=~/.fzf
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'itchyny/lightline.vim'
Plugin 'tomasr/molokai' "colorscheme
Plugin 'aonemd/kuroi.vim' "colorscheme
Plugin 'lifepillar/vim-solarized8' "colorscheme
Plugin 'morhetz/gruvbox' "colorscheme
Plugin 'nanotech/jellybeans.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'itchyny/vim-gitbranch'
Plugin 'neoclide/coc.nvim', {'branch': 'release'}
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-abolish'
Plugin 'junegunn/fzf', { 'do': { -> fzf#install() } }
call vundle#end()
filetype plugin indent on

" Change leader
let mapleader=","

" Keybindings
" inoremap kk <esc>
inoremap jk <esc>
" inoremap <C-o> <C-r>0
" nnoremap <C-h> <C-w>h
" nnoremap <C-j> <C-w>j
" nnoremap <C-k> <C-w>k
" nnoremap <C-l> <C-w>l
" nnoremap <c-c> <c-w>c
nnoremap Y yg_
nnoremap <silent> <C-m> :<C-u>nohlsearch<CR>
nnoremap <leader>d :CocDiagnostics<cr>
" Cycle through buffers with <leader>n and <leader>N
nnoremap <silent> <leader>n :bn<cr>
nnoremap <silent> <leader>N :bp<cr>
nnoremap <silent> <leader>l :ls<cr>:b<space>

"macro
nnoremap <silent> Q @q<cr>
"delete without clobbering my register
nnoremap s "_d
nnoremap S "_d$
" maps
inoremap ;1 <c-o>m1
inoremap ;2 <c-o>m2
" autocomplete line
inoremap <c-l> <c-x><c-l><c-n>
inoremap <c-y> <C-o>dw
inoremap <c-j> <esc>l<c-v>di

" remove of arrow keys
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

" Count methods
map c* *<C-O>:%s///gn<CR>
map cv* :%s///ng<left><left><left><left>

" For global replace
nnoremap r* *:%s///g<left><left>
nnoremap rc* *:%s///gc<left><left><left>

" brackets autocomplete
" inoremap ( ()<left>
" inoremap [ []<left>
" inoremap { {}<left>
" inoremap " ""<left>
" inoremap ' ''<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap [<CR> [<CR>]<ESC>O

" search for current selection
xnoremap * :<C-u>call <SID>VSetSearch('/')<CR>/<C-R>=@/<CR><CR>
function! s:VSetSearch(cmdtype)
  let temp = @s
  norm! gv"sy
  let @/ = '\V' . substitute(escape(@s, a:cmdtype.'\'), '\n', '\\n', 'g')
  let @s = temp
endfunction

" fzf
nnoremap <silent> <leader>f :FZF<esc>
let g:fzf_action = {
  \ 'ctrl-h': 'split',
  \ 'ctrl-v': 'vsplit' }
let g:fzf_layout = { 'down': '30%' }
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

" colorschemes
" colorscheme molokai
" colorscheme kuroi
colorscheme jellybeans
" colorscheme badwolf
" colorscheme solarized8
" colorscheme gruvbox

let g:jellybeans_overrides = {
\    'background': { 'guibg': '000000' },
\}

" General vim settings
syntax on
set t_Co=256
set termguicolors
set splitbelow
set splitright
" set nowrap                  " Do not wrap lines; not good for all files, but my preference!
set showcmd                 " Normal mode; show keys you pressed (bottom-right)
set exrc                    " allow plugins to execute .vimrc files
set secure                  " recommended to accompany 'set exrc'
set relativenumber
set number
set laststatus=2
set tabstop=2
set shiftwidth=2
set cursorline  " show a visual line under the cursor's current line
set showmatch  " show the matching part of the pair for [] {} and ()
set incsearch  " jumps to search word as you type
set hlsearch
set smartcase
set encoding=UTF-8

" enable Python syntax
let python_highlight_all = 1
let g:pyindent_open_paren=4

" Allow easy navigation between wrapped lines.
" vmap j gj
" vmap k gk
" nmap j gj
" nmap k gk

" Enable mouse for scrolling and window resizing.
" set mouse=a

" Prevent vim from backing the work up everywhere
set hidden
set nobackup
set nowritebackup
set noswapfile
" set autowrite

" Python syntax
au BufNewFile,BufRead *.py set cinkeys=0
au BufNewFile,BufRead *.py set indentkeys=0
au BufNewFile,BufRead *.py set smarttab
au BufNewFile,BufRead *.py set tabstop=4
au BufNewFile,BufRead *.py set softtabstop=4
au BufNewFile,BufRead *.py set shiftwidth=4
" au BufNewFile,BufRead *.py set textwidth=79
au BufNewFile,BufRead *.py set expandtab
au BufNewFile,BufRead *.py set autoindent
au BufNewFile,BufRead *.py set fileformat=unix

" web syntax
au BufNewFile,BufRead *.html,*.css,*.json,*.js set tabstop=2
au BufNewFile,BufRead *.html,*.css,*.json,*.js set softtabstop=2
au BufNewFile,BufRead *.html,*.css,*.json,*.js set shiftwidth=2


" Keep indentation level from previous line:
" autocmd FileType python set autoindent
" make backspaces more powerfull
set backspace=indent,eol,start

"Tab completion
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> <c-p> <Plug>(coc-diagnostic-next)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

" Remap <C-f> and <C-b> for scroll float windows/popups.
if has('nvim-0.4.0') || has('patch-8.2.0750')
  nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
  inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
  inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
  vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
endif

" ignore files
set wildignore+=*.pyc,*.pyo,*/__pycache__/*     " Python
set wildignore+=*.swp,~*                        " Temp files
set wildignore+=*.zip,*.tar                     " Archives

" whitespace plugin
" let g:better_whitespace_enabled=1
let g:strip_whitespace_on_save = 1
" let g:strip_max_file_size = 1000
let g:strip_whitespace_confirm = 0


" lightline
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             ['gitbranch', 'cocstatus', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'gitbranch#name',
      \   'cocstatus': 'coc#status'
      \ },
      \ }
