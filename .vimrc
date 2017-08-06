execute pathogen#infect()
Helptags
filetype plugin indent on
syntax enable

" Auto source vimrc
autocmd BufWritePost .vimrc source %

" Map leader to space
:let mapleader = "\<Space>"

" Format json
map <leader>jf <Esc>:%!python -m json.tool<CR>

" Format xml
:map <leader>xf <Esc>:silent %!xmllint --encode UTF-8 --format -<CR>

set number
set incsearch
set hlsearch
set visualbell
set showcmd                         " show commands -- This isn't working :'(:e
set backspace=indent,eol,start      " linewrap backspace
set whichwrap+=<,>,h,l,[,]          " linewrap h, l, etc.
set wildmenu
set wildmode=longest:full,full
set encoding=utf-8
set scrolloff=5
set diffopt=filler,vertical
set completeopt=longest,menuone
set statusline=%<[%n]\ %F\ %m%r%y\ %{exists('g:loaded_fugitive')?fugitive#statusline():''}\ %=%-14.(%l,%c%V%)\ %P


" Indent settings
filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab

" copy/paste to clipboard
set clipboard^=unnamedplus,unnamed

" Default NERDTreeMirror
map <silent> <leader>n :NERDTreeToggle<CR> :NERDTreeMirror<CR>

" NERDTree F3
autocmd VimEnter * nmap <F3> :NERDTreeMirrorToggle<CR>
autocmd VimEnter * imap <F3> <Esc>:NERDTreeMirrorToggle<CR>a
let NERDTreeQuitOnOpen=1
let NERDTreeWinSize=35

" Nav
map gb :tabprevious<cr>

" Rainbow brackets
let g:rbpt_colorpairs = [
			\ ['brown', 'RoyalBlue3'],
			\ ['Darkblue', 'SeaGreen3'],
			\ ['darkgray', 'DarkOrchid3'],
			\ ['darkgreen', 'firebrick3'],
			\ ['darkcyan', 'RoyalBlue3'],
			\ ['darkred', 'SeaGreen3'],
			\ ['darkmagenta', 'DarkOrchid3'],
			\ ['brown', 'firebrick3'],
			\ ['gray', 'RoyalBlue3'],
			\ ['darkred',     'DarkOrchid3'],
			\ ['black', 'SeaGreen3'],
			\ ['darkmagenta', 'DarkOrchid3'],
			\ ['Darkblue', 'firebrick3'],
			\ ['darkgreen', 'RoyalBlue3'],
			\ ['darkcyan', 'SeaGreen3'],
    			\ ['red',         'firebrick3'],
    			\ ]

au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

" :Explore settings
let g:netrw_liststyle=3
:command E Explore
