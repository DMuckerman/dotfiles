" Ensure Vim Plug is installed
if empty(glob('~/.nvim/autoload/plug.vim'))
	silent !curl -fLo ~/.nvim/autoload/plug.vim --create-dirs
		\ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	autocmd VimEnter * PlugInstall
endif

" Vim Plug plugins
call plug#begin('~/.nvim/plugged')
	" Misc stuff
	Plug 'kien/rainbow_parentheses.vim'
	Plug 'sjl/gundo.vim'
	Plug 'jphustman/Align.vim'
	Plug 'vimwiki/vimwiki'
"	Plug 'majutsushi/tagbar'
	
	" Search
	Plug 'kien/ctrlp.vim'
	Plug 'airblade/vim-rooter'"

	" UI stuff
	Plug 'bling/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
	Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
	Plug 'jaxbot/semantic-highlight.vim'
	Plug 'kien/rainbow_parentheses.vim'

	" Themes
	Plug 'ajh17/Spacegray.vim'
	Plug 'altercation/vim-colors-solarized'
	Plug 'chriskempson/base16-vim'
	
	" Emoji
	Plug 'junegunn/vim-emoji'

	" Writing/notes
	Plug 'jceb/vim-orgmode'
	Plug 'tpope/vim-markdown'
	Plug 'nelstrom/vim-markdown-folding'
	Plug 'beloglazov/vim-online-thesaurus'
	Plug 'xolox/vim-notes'

	" Org-mode
	Plug 'vim-scripts/utl.vim'
	Plug 'tpope/vim-repeat'
	Plug 'vim-scripts/taglist.vim'
	Plug 'tpope/vim-speeddating'
	Plug 'chrisbra/NrrwRgn'
	Plug 'vim-scripts/SyntaxRange'

	" Complicated stuff
	Plug 'Shougo/deoplete.nvim' , { 'do': ':UpdateRemotePlugins' }
	
	" More syntaxes
	Plug 'scrooloose/syntastic'
	Plug 'toyamarinyon/vim-swift'
	Plug 'vim-perl/vim-perl', { 'for': 'perl', 'do': 'make clean carp dancer highlight-all-pragmas moose test-more try-tiny' }
	"Plug 'xolox/vim-easytags'
	Plug 'xolox/vim-misc'
	Plug 'kchmck/vim-coffee-script'

	" Writing stuff
	Plug 'junegunn/goyo.vim'
	Plug 'junegunn/limelight.vim'
	Plug 'reedes/vim-pencil'
call plug#end()

" Set colorscheme and font
"set t_Co=256
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
filetype plugin on
syntax on
set tabstop=4 softtabstop=0 noexpandtab shiftwidth=4	

set scrolloff=3 " Keep at least 3 lines before cursor

" iTerm for Tube
let g:tube_terminal = "iterm"

" Airline
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
set laststatus=2

" Org-mode settings
let g:org_heading_shade_leading_stars = 1

" NERDTree toggle
map <F8> :NERDTreeToggle<CR>

" More authentic Molokai
:let g:molokai_original = 1

" vim-orgmode
:let g:org_export_emacs="/usr/local/bin/emacs"
:let g:org_export_init_script="~/.emacs.d/init.el"

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

set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch
nnoremap <leader><space> :noh<cr>
nnoremap <tab> %
vnoremap <tab> %

" Use deoplete.
let g:deoplete#enable_at_startup = 1
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

" Open .nvimrc in split
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

" Limelight on Goyo
autocmd User GoyoEnter Limelight
autocmd User GoyoLeave Limelight!

augroup pencil
  autocmd!
  autocmd FileType markdown,mkd call pencil#init()
  autocmd FileType text         call pencil#init()
augroup END

nnoremap <C-Tab> :bn<cr>
nnoremap <C-S-Tab> :bp<cr>

function EmojiHi()
	let time = strftime("%H")

	" Night
	if time >= 21 && time < 6
		echo "Good night!"
	endif
	
	" Morning
	if time >= 6 && time < 12
		echo "Good morning!"
	endif

	" Afternoon
	if time >= 12 && time < 18
		echo "Good afternoon!"
	endif

	" Evening
	if time >= 18 && time < 21
		echo "Good evening!"
	endif

endfunction

" Pretty kitty
" autocmd VimEnter * echo ">^.^<"
let g:base16_shell_path = "/Users/danielmuckerman/git/base16-builder/output/shell/"
autocmd VimEnter * call EmojiHi()
autocmd VimEnter * colo spacegray
autocmd VimEnter * AirlineTheme luna

syntax enable
set background=dark
let g:airline_theme='luna'

" Thesaurus
let g:online_thesaurus_map_keys = 0
nnoremap <leader>k :OnlineThesaurusCurrentWord<CR>

" Change cursor shape
:let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1

" Enable true colors for iTerm
:let $NVIM_TUI_ENABLE_TRUE_COLOR=1

" Ignore case in :e
:set wildignorecase

" Disable mode display, cuz airline
set noshowmode
