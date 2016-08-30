set number

" power line
set rtp+=/Library/Python/2.7/site-packages/powerline/bindings/vim
set nocompatible
set t_Co=256

let g:minBufExplForceSyntaxEnable = 1
python from powerline.vim import setup as powerline_setup
python powerline_setup()
python del powerline_setup
if ! has('gui_running')
	set ttimeoutlen=10
	augroup FastEscape
		autocmd!
		au InsertEnter * set timeoutlen=0
		au InsertLeave * set timeoutlen=1000
	augroup END
endif

set laststatus=2 " Always display the statusline in all windows
set guifont=Inconsolata\ for\ Powerline:h14
set noshowmode " Hide the default mode text (e.g. -- INSERT -- below the statusline)

" pathogen
execute pathogen#infect()
syntax on
filetype plugin indent on

" nerdtree'
map <F2> :NERDTreeToggle<CR>

" tabs
set tabstop=4
set shiftwidth=4
set expandtab

" set list
set list
set listchars=trail:•

" python
let g:pydiction_location = '/Users/liugw/.vim/bundle/pydiction/complete-dict'
let g:pydiction_menu_height = 3
