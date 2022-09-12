" Vundle
filetype off
" Required for vundle
"filetype plugin indent on 
filetype plugin on 

" Highlighting
syntax on

set encoding=utf-8

" Airline config
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
""let g:airline_theme='powerlineish'
"let g:airline#extensions#tabline#left_sep = ' '
"let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'default'
" History
set history=50

" Display
set guicursor=
set ls=2
set showmode
set showcmd
set modeline
set ruler
set title
set nu

" Line wrapping
"set nowrap
"set linebreak
set wrap linebreak
set showbreak=▹

" Auto indent what you can
set autoindent

" Searching
set ignorecase
set smartcase
set gdefault
set hlsearch
set showmatch
"autocomplete
set completeopt=menuone,noinsert,noselect
" Enable jumping into files in a search buffer
set hidden 

" Make backspace a bit nicer
set backspace=eol,start,indent

" Indentation
set shiftwidth=4
set tabstop=4
set softtabstop=4
set shiftround
set expandtab

" Disable mouse

" Colorscheme
"if &t_Co == 256
 "   try
  "      color xoria256 
   " catch /^Vim\%((\a\+)\)\=:E185/
        " Oh well
   " endtry
" endif

" Switch tabs
map 8 <Esc>:tabe 
map 9 gT
map 0 gt

" Gundo toggle
map <F5> <Esc>:GundoToggle<CR>

" Toggle line-wrap
map <F6> <Esc>:set wrap!<CR>

" Open file under cursor in new tab
map <F9> <Esc><C-W>gF<CR>:tabm<CR>

" Direction keys for wrapped lines
nnoremap <silent> k gk
nnoremap <silent> j gj
nnoremap <silent> <Up> gk
nnoremap <silent> <Down> gj
inoremap <silent> <Up> <Esc>gka
inoremap <silent> <Down> <Esc>gja

" Bash / emacs keys for command line
cnoremap <C-a> <Home>
cnoremap <C-e> <End>

" Base64 decode word under cursor
nmap <Leader>b :!echo <C-R><C-W> \| base64 -d<CR>

" grep recursively for word under cursor
nmap <Leader>g :tabnew\|read !grep -Hnr '<C-R><C-W>'<CR>

" sort the buffer removing duplicates
nmap <Leader>s :%!sort -u --version-sort<CR>

" Visual prompt for command completion
set wildmenu

" Write current file with sudo perms
"command! W w !sudo tee % > /dev/null
command! W w
command! -bang Qall qall

" folding
set nofoldenable

" Open word under cursor as ctag in new tab
map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>

"if $VIMENV == 'talk'
"  set background=dark
"  let g:solarized_termcolors=256
"  colo solarized
"  "noremap <Space> :n<CR>
"  noremap <Backspace> :N<CR>
"else
"  " Trans background
"  hi Normal ctermbg=none
"  hi NonText ctermbg=none
"endif

if $VIMENV == 'prev'
  noremap <Space> :n<CR>
  noremap <Backspace> :N<CR>
  noremap <C-D> :call delete(expand('%')) <bar> argdelete % <bar> bdelete<CR>
  set noswapfile
endif


set nocompatible

" set the interactive flag so bash functions are sourced from ~/.bashrc etc
"set shellcmdflag=-ci
nmap <C-f> :Files <CR>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible              " be iMproved, required
filetype off                  " required


filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
" filetype plugin on

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal

" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General Settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set path+=**          " Searches current directory recursively.
set wildmenu          " Display all matches when tab complete.
set incsearch                   " Incremental search
set hidden                      " Needed to keep multiple buffers open
set nobackup                    " No auto backups
set noswapfile                  " No swap
set t_Co=256                    " Set if term supports 256 colors.
set number relativenumber       " Display line numbers
set clipboard=unnamedplus       " Copy/paste between vim and other programs.
syntax enable
let g:rehash256 = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Remap Keys
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Remap ESC to ii
:imap ii <Esc>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Status Line
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
 " The lightline.vim theme
" Let g:lightline = {
"  \ 'colorscheme': 'ayu_mirage',
"       \ }

" Always show statusline
set laststatus=1

" Uncomment to prevent non-normal modes showing in powerline and below powerline.
set noshowmode

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set expandtab                   " Use spaces instead of tabs.
set smarttab                    " Be smart using tabs ;)
set shiftwidth=4                " One tab == four spaces.
set tabstop=4                   " One tab == four spaces.

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => NERDTree
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Uncomment to autostart the NERDTree
" autocmd vimenter * NERDTree
map <C-n> :NERDTreeToggle<CR>
let g:NERDTreeDirArrowExpandable = '►'
let g:NERDTreeDirArrowCollapsible = '▼'
let NERDTreeShowLineNumbers=1
let NERDTreeShowHidden=1
let NERDTreeMinimalUI = 1
let g:NERDTreeWinSize=38

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Theming
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" highlight LineNr           ctermfg=8    ctermbg=none    cterm=none
" highlight CursorLineNr     ctermfg=7    ctermbg=8       cterm=none
" highlight VertSplit        ctermfg=0    ctermbg=8       cterm=none
" highlight Statement        ctermfg=2    ctermbg=none    cterm=none
" highlight Directory        ctermfg=4    ctermbg=none    cterm=none
" highlight StatusLine       ctermfg=7    ctermbg=8       cterm=none
" highlight StatusLineNC     ctermfg=7    ctermbg=8       cterm=none
" highlight NERDTreeClosable ctermfg=2
" highlight NERDTreeOpenable ctermfg=8
" highlight Comment          ctermfg=4    ctermbg=none    cterm=italic
" highlight Constant         ctermfg=12   ctermbg=none    cterm=none
" highlight Special          ctermfg=4    ctermbg=none    cterm=none
" highlight Identifier       ctermfg=6    ctermbg=none    cterm=none
" highlight PreProc          ctermfg=5    ctermbg=none    cterm=none
" highlight String           ctermfg=12   ctermbg=none    cterm=none
" highlight Number           ctermfg=1    ctermbg=none    cterm=none
" highlight Function         ctermfg=1    ctermbg=none    cterm=none
" highlight WildMenu         ctermfg=0       ctermbg=80      cterm=none
" highlight Folded           ctermfg=103     ctermbg=234     cterm=none
" highlight FoldColumn       ctermfg=103     ctermbg=234     cterm=none
" highlight DiffAdd          ctermfg=none    ctermbg=23      cterm=none
" highlight DiffChange       ctermfg=none    ctermbg=56      cterm=none
" highlight DiffDelete       ctermfg=168     ctermbg=96      cterm=none
" highlight DiffText         ctermfg=0       ctermbg=80      cterm=none
" highlight SignColumn       ctermfg=244     ctermbg=235     cterm=none
" highlight Conceal          ctermfg=251     ctermbg=none    cterm=none
" highlight SpellBad         ctermfg=168     ctermbg=none    cterm=underline
" highlight SpellCap         ctermfg=80      ctermbg=none    cterm=underline
" highlight SpellRare        ctermfg=121     ctermbg=none    cterm=underline
" highlight SpellLocal       ctermfg=186     ctermbg=none    cterm=underline
" highlight Pmenu            ctermfg=251     ctermbg=234     cterm=none
" highlight PmenuSel         ctermfg=0       ctermbg=111     cterm=none
" highlight PmenuSbar        ctermfg=206     ctermbg=235     cterm=none
" highlight PmenuThumb       ctermfg=235     ctermbg=206     cterm=none
" highlight TabLine          ctermfg=244     ctermbg=234     cterm=none
" highlight TablineSel       ctermfg=0       ctermbg=247     cterm=none
" highlight TablineFill      ctermfg=244     ctermbg=234     cterm=none
" highlight CursorColumn     ctermfg=none    ctermbg=236     cterm=none
" highlight CursorLine       ctermfg=none    ctermbg=236     cterm=none
" highlight ColorColumn      ctermfg=none    ctermbg=236     cterm=none
" highlight Cursor           ctermfg=0       ctermbg=5       cterm=none
" highlight htmlEndTag       ctermfg=114     ctermbg=none    cterm=none
" highlight xmlEndTag        ctermfg=114     ctermbg=none    cterm=none
"original till function
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Vifm
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <Leader>vv :Vifm<CR>
map <Leader>vs :VsplitVifm<CR>
map <Leader>sp :SplitVifm<CR>
map <Leader>dv :DiffVifm<CR>
map <Leader>tv :TabVifm<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VimWiki
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:vimwiki_list = [{'path': '~/vimwiki/',
                      \ 'syntax': 'markdown', 'ext': '.md'}]

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Vim-Instant-Markdown
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:instant_markdown_autostart = 0         " Turns off auto preview
let g:instant_markdown_browser = "surf"      " Uses surf for preview
map <Leader>md :InstantMarkdownPreview<CR>   " Previews .md file
map <Leader>ms :InstantMarkdownStop<CR>      " Kills the preview

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Open terminal inside Vim
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <Leader>tt :vnew term://zsh

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Mouse Scrolling
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set mouse=anicr

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Splits and Tabbed Files
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set splitbelow splitright

" Remap splits navigation to just CTRL + hjkl
"nnoremap <C-h> <C-w>h
nnoremap <C-h> <C-w>s
" nnoremap <C-j> <C-w>j
" nnoremap <C-k> <C-w>k
" nnoremap <C-l> <C-w>l
noremap <C-b> <C-w>v
" Make adjusing split sizes a bit more friendly
noremap <silent> <C-Left> :vertical resize +3<CR>
noremap <silent> <C-Right> :vertical resize -3<CR>
noremap <silent> <C-Up> :resize +3<CR>
noremap <silent> <C-Down> :resize -3<CR>
noremap <silent> <C-q> :q! <CR>
noremap <silent> <C-s> :w <CR>
" Change 2 split windows from vert to horiz or horiz to vert
map <Leader>th <C-w>t<C-w>H
map <Leader>tk <C-w>t<C-w>K

" Removes pipes | that act as seperators on splits
set fillchars+=vert:\ 

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Other Stuff
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:python_highlight_all = 1

au! BufRead,BufWrite,BufWritePost,BufNewFile *.org 
au BufEnter *.org            call org#SetOrgFileType()

set guioptions-=m  "remove menu bar
set guioptions-=T  "remove toolbar
set guioptions-=r  "remove right-hand scroll bar
set guioptions-=L  "remove left-hand scroll bar
"""""""""""""""""""""""""""""""""""""""""
" incremental substitution (neovim)
if has('nvim')
  set inccommand=split
endif

" Suppress appending <PasteStart> and <PasteEnd> when pasting
set t_BE=

set nosc noru nosm
" Don't redraw while executing macros (good performance config)
set lazyredraw
"set showmatch
" How many tenths of a second to blink when matching brackets
"set mat=2
" Ignore case when searching
set ignorecase
" Be smart when using tabs ;)
set smarttab
" indents
filetype plugin indent on
set shiftwidth=2
set tabstop=2
set ai "Auto indent
set si "Smart indent
set backspace=start,eol,indent
" Finding files - Search down into subfolders
set path+=**
set wildignore+=*/node_modules/*

" Turn off paste mode when leaving insert
autocmd InsertLeave * set nopaste

" Add asterisks in block comments
set formatoptions+=r
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" File types "{{{
" ---------------------------------------------------------------------
" JavaScript
au BufNewFile,BufRead *.es6 setf javascript
" TypeScript
au BufNewFile,BufRead *.tsx setf typescriptreact
" Markdown
au BufNewFile,BufRead *.md set filetype=markdown
" Flow
au BufNewFile,BufRead *.flow set filetype=javascript

set suffixesadd=.js,.es,.jsx,.json,.css,.less,.sass,.styl,.php,.py,.md

autocmd FileType coffee setlocal shiftwidth=2 tabstop=2
autocmd FileType ruby setlocal shiftwidth=2 tabstop=2
autocmd FileType yaml setlocal shiftwidth=2 tabstop=2

"}}}

" Imports "{{{
" ---------------------------------------------------------------------
runtime ./plug.vim
if has("unix")
  let s:uname = system("uname -s")
  " Do Mac stuff
  if s:uname == "Darwin\n"
    runtime ./macos.vim
  endif
endif

runtime ./maps.vim
"}}
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Extras "{{{
" ---------------------------------------------------------------------
set exrc
"}}}

" vim: set foldmethod=marker foldlevel=0:}
""""""""""""""""""""""""
" Vim Script
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Bundles
" Plugin 'VundleVim/Vundle.vim'
" Plugin 'tpope/vim-fugitive'
" Plugin 'sjl/gundo.vim'
" Plugin 'godlygeek/tabular'
" Plugin 'bling/vim-airline'
" Plugin 'vim-airline/vim-airline-themes'
" Plugin 'altercation/vim-colors-solarized'
" Plugin 'scrooloose/nerdtree'
" Plugin 'TomNomNom/xoria256.vim'
" Plugin 'fatih/vim-go'
" Plugin 'rust-lang/rust.vim'
" Plugin 'ryanoasis/vim-devicons'
" Plugin 'jiangmiao/auto-pairs'
call vundle#end()
"-------------------------------------
call plug#begin()
" Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Plug 'Shougo/denite.nvim'
" Plug 'prabirshrestha/vim-lsp'
" Plug 'mattn/vim-lsp-settings'
" Plug 'ghifarit53/tokyonight-vim'
" Plug 'prettier/vim-prettier'
" Plug  'HerringtonDarkholme/yats.vim'
" Plug 'airblade/vim-gitgutter'
" Plug 'junegunn/fzf', { 'do': { -> fzf#install()  }  }
" Plug 'junegunn/fzf.vim'
" Plug 'airblade/vim-rooter'
" Plug 'mattn/emmet-vim'
" Plug  'vim-syntastic/syntastic'
" Plug 'tpope/vim-commentary'
" Plug 'liuchengxu/vim-which-key'
" Plug 'github/copilot.vim'
" Plug 'ap/vim-css-color'
"
call plug#end()

"______________________________

if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=~/.vim/dein/repos/github.com/Shougo/dein.vim

" Required:
let s:dein_dir = '~/.vim/dein'
let g:rc_dir = expand('~/.vim/rc/')
let s:toml = g:rc_dir . 'dein.toml'
let s:lazy_toml = g:rc_dir . 'dein_lazy.toml'
if dein#load_state(s:dein_dir)
  call dein#begin(s:dein_dir)

    call dein#load_toml(s:toml, {'lazy':0})
    call dein#load_toml(s:lazy_toml, {'lazy':1})

  call dein#end()
    call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable
syntax on

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif
""""""""""""""""
let &t_SI = "\e[6 q"
let &t_EI = "\e[1 q"
""""""""""""""""
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice.
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction 
""""""""""""""""
"coc config
""""""""""""""""
"fzf
let g:fzf_preview_window = ['right:50%']
"""""""""""""""
let g:syntastic_python_checkers = ['pylint',]
let g:syntastic_php_checkers = ['php', 'phpcs', 'phpmd']
""""""""""
let g:mapleader = "\<Space>"
let g:maplocalleader = ','
let g:which_key_map = {}
let g:which_key_sep = '→'

let g:which_key_map['/'] = ['gc' , 'comment']
let g:which_key_map.b = {
      \'name' : '+tabs',
      \'c' : [':bd!' , 'close'],
      \'p' : [':bp' , 'prev'],
      \'n' : [':bn' , 'next'],
      \'w' : [':tabnew' , 'newtab']
      \ }
let g:which_key_map.s = {
      \ 'name' : '+search' ,
      \ '/' : [':History'  ,'history'],
      \ }
let g:which_key_map.f = {
      \ 'name' : 'FilesCmd',
      \ 'f' : [':Files' , 'files'],
      \ 'g' : [':FZF' , 'FZF'],
      \ 'r' : [':Rg' , 'ripgrep'],
      \}
let g:which_key_map.w = {
      \'name' : 'panes',
      \'v' : ['<C-w>v' , 'vertical'],
      \'h' : ['<C-w>s','horizontal'],
      \}
nnoremap <silent> <leader>      :<c-u>WhichKey '<Space>'<CR>
nnoremap <silent> <localleader> :<c-u>WhichKey  ','<CR>
vnoremap <silent> <leader> :<c-u>WhichKeyVisual '<Space>'<CR>
vnoremap <localleader> :<c-u>WhichKeyVisual  ','<CR>
let g:wwhich_key_use_floating = 0
call which_key#register('<Space>', "g:which_key_map")
""""""""""
set termguicolors

let g:tokyonight_style = 'storm' " available: night, storm
let g:tokyonight_enable_italic = 1
let g:airline_theme = "tokyonight"
colorscheme tokyonight
let &t_ut=''
