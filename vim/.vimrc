 " Ensure Vim Plug is installed
if empty(glob('~/.vim/autoload/plug.vim'))
	silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
		\ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	autocmd VimEnter * PlugInstall
endif

" Vim Plug plugins
call plug#begin('~/.vim/plugged')
	" Misc stuff
	Plug 'sjl/gundo.vim'
	Plug 'jphustman/Align.vim'
	"Plug 'majutsushi/tagbar'
	
	" Search
	Plug 'ctrlpvim/ctrlp.vim'
	Plug 'airblade/vim-rooter'

	" UI stuff
	Plug 'chriskempson/base16-vim'
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
	Plug 'jaxbot/semantic-highlight.vim'
	Plug 'kien/rainbow_parentheses.vim'

	" Writing/notes
	Plug 'plasticboy/vim-markdown'
	Plug 'nelstrom/vim-markdown-folding'

	" Markdown preview
	Plug 'suan/vim-instant-markdown'

	" Complicated stuff
	Plug 'Shougo/neocomplete.vim'
	
	" More syntaxes
	Plug 'xolox/vim-misc'

	" C#
	Plug 'tpope/vim-dispatch'
	Plug 'ctrlpvim/ctrlp.vim'
	"Plug 'scrooloose/syntastic'
call plug#end()

" Set colorscheme and font
set t_Co=256
"set guifont=Menlo\ for\ Powerline:h12
set guifont=DejaVu\ Sans\ Mono\ for\ Powerline:h12

" More convienent escape
inoremap kj <ESC>
inoremap Kj <ESC>
inoremap KJ <ESC>

" Make space more useful
nnoremap <space> za

set guioptions-=m  "menu bar
set guioptions-=T  "toolbar
set guioptions-=r  "scrollbar
set guioptions-=L  "scrollbar
" set guioptions-=e

" Some nice things
set relativenumber
set autoindent
set nocompatible
filetype plugin on
syntax on
set tabstop=4 softtabstop=0 noexpandtab shiftwidth=4	

set scrolloff=3 " Keep at least 3 lines before cursor

" Airline
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
set laststatus=2

" NERDTree toggle
map <F8> :NERDTreeToggle<CR>

" More authentic Molokai
:let g:molokai_original = 1

" Always on rainbow parentheses
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

" Gundo toggle
nnoremap <F5> :GundoToggle<CR>

" Set leader
let mapleader = ","

" ,q to wrap paragraphs
nnoremap <leader>q gqip

"nnoremap / /\v
"vnoremap / /\v
set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch
nnoremap <leader><space> :noh<cr>
nnoremap <tab> %
vnoremap <tab> %

" neocomplete
let g:neocomplete#enable_at_startup = 1
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<S-TAB>"

" Who needs arrow keys?
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
nnoremap j gj
nnoremap k gk

" Fuck help
inoremap <F1> ESC
nnoremap <F1> ESC
vnoremap <F1> ESC

" More convienent commands
nnoremap ; :
" Make sure I can still use ;
noremap ;; ;

" Open .vimrc in split
nnoremap <leader>ev <C-w><C-v><C-l>:e $MYVIMRC<cr>

" Splits
nnoremap <leader>w <C-w>v<C-w>l

" Navigate splits
nnoremap L $
onoremap L $
vnoremap L $
onoremap H 0
nnoremap H _
vnoremap H _
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap Q @q
nnoremap Y y$
xnoremap <leader>c :!octave --silent \| cut -c8-<cr>

" tagbar toggle
nmap <F7> :TagbarToggle<cr>

" Semantic highlighting
au! FileType c :SemanticHighlight
au! FileType cpp :SemanticHighlight
au! FileType perl :SemanticHighlight
au! FileType ruby :SemanticHighlight
au! FileType clojure :SemanticHighlight

nnoremap <C-Tab> :bn<cr>
nnoremap <C-S-Tab> :bp<cr>

" Pretty kitty
" autocmd VimEnter * echo ">^.^<"
autocmd VimEnter * colo base16-spacemacs
autocmd VimEnter * AirlineTheme luna

syntax enable
set background=dark
set termguicolors
colorscheme base16-spacemacs
let g:airline_theme='luna'

" Thesaurus
let g:online_thesaurus_map_keys = -1
nnoremap <leader>k :OnlineThesaurusCurrentWord<CR>

" Disable mode display, cuz airline
set noshowmode
