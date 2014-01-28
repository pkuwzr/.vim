colorscheme molokai
set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent
set nu

filetype off
execute pathogen#infect()
call pathogen#helptags()
syntax on
filetype plugin indent on

if &ft=="python"
	set foldmethod=indent
    set foldlevel=99
else
	set foldmethod=syntax
endif

map <leader>g :GundoToggle<CR>

map <leader>n :NERDTreeToggle<CR>

nnoremap <silent> <F8> :TlistToggle<CR>

au FileType python set omnifunc=pythoncomplete#Complete
let g:SuperTabDefaultCompletionType = "context"

set completeopt=menuone,longest,preview

let g:template_load = 1
let g:template_tags_replacing = 1
let g:template_path = '/home/jerry/.vim/template'
let g:T_AUTHOR = 'Jerry King(Wang Zerui)'
let g:T_AUTHOR_EMAIL = 'wzr.cs09@qq.com'
let g:T_DATE_FORMAT = '%Y-%m-%d %H:%M:%S'
