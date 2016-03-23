" --- --- --- --- ---  Pathogen Settings --- --- --- --- --- "
"  execution have it as the first line in .vimrc
execute pathogen#infect()
syntax on
filetype plugin indent on

" --- --- --- --- --- Editor Settings --- --- --- --- --- --- "

set background=dark
colorscheme seti
set guifont=Meslo\ LG\ S\ Regular\ for\ Powerline:h20
set number " show line numbers
set ruler
set textwidth=80 " show at 80 characters
set colorcolumn=+1

" Always show status bar  

set laststatus=2
set t_Co=256

" Set wild menu in status bar

set wmnu 

" Toggle cursorline when in insert or non-insert mode

 :autocmd InsertEnter * set cul
 :autocmd InsertLeave * set nocul

" Set smartindent

set tabstop=4
set shiftwidth=4
set expandtab

" --- --- --- --- --- General Settings --- --- --- --- --- "

set nobackup
set nowritebackup
set noswapfile
set autoread

" --- --- --- --- --- Laravel Settings --- --- --- --- --- --- "

nmap <Leader>lr :e app/Http/routes.php<cr>
nmap <Leader>lpa :!php artisan
nmap <Leader>lamk :!php artisan make:
nmap <Leader>lam :!php artisan migrate<cr>
nmap <Leader>lam: :!php artisan migrate:
nmap <Leader>lamr :!php artisan migrate:reset<cr>
nmap <Leader>ladbs :!php artisan db:seed<cr>

" --- Edit folders --- "

nmap <Leader><Leader>m :e app/<cr>
nmap <Leader><Leader>c :e app/Http/Controllers/<cr>
nmap <Leader><Leader>i :e app/Http/Repositories/<cr>
nmap <Leader><Leader>r :e app/Http/Repositories/Eloquent/<cr>

" --- --- --- --- --- Vim Wiki Settings --- --- --- --- --- "

set nocompatible
filetype plugin on
syntax on

" Allow backspace to erase previous chars in insert mode
set backspace=2

" --- --- --- --- --- Split Window Settings --- --- --- --- --- "

" Move windows with C-Direction

map <C-J> <C-w>j
map <C-K> <C-w>k
map <C-H> <C-w>h
map <C-L> <C-w>l

" Set autocompletion

filetype plugin on
set omnifunc=syntaxcomplete#Complete

" --- --- --- --- --- Shorcut Settings --- --- --- --- --- "

" Map save sequence to Ctrl + z

inoremap <C-z> <Esc>:wa<CR>
nnoremap <C-z> :wa<CR>

" Map esc & insert to Ctrl+Space

nnoremap ;; i
inoremap ;; <Esc>

" Prevent Esc when in insert mode in vim-multiple-cursors

let g:multi_cursor_exit_from_insert_mode = 0

" Complete options (disable preview scratch window, longest removed to aways show menu)

set completeopt=menu,menuone

" Undo tree toggle

nnoremap <F1> :UndotreeToggle<CR>

map <C-o> :NERDTreeToggle<CR>

" CtrlP

" nnoremap <C-p> :CtrlP<CR>

let g:ctrlp_map = '<S-f>'
let g:ctrlp_cmd = 'CtrlP'

" buffer switch

nnoremap <Leader>h :bprev<CR>
nnoremap <Leader>l :bnext<CR>

" --- --- --- --- --- Vim-Airline Settings --- --- --- --- --- "

" automatically display all tabs

let g:airline#extensions#tabline#enabled = 1

" --- --- --- PHP Documentor for Vm 2 - PDV Settings --- --- ---"

" let g:pdv_template_dir = $HOME ."/.vim/bundle/pdv/templates_snip"

" nnoremap <buffer> <S-p> :call pdv#DocumentWithSnip()<CR>

source ~/.vim/bundle/pdv/php-doc.vim
autocmd FileType php inoremap <C-p> <ESC>:call PhpDocSingle()<CR>i
autocmd FileType php nnoremap <C-p> :call PhpDocSingle()<CR>
autocmd FileType php vnoremap <C-p> :call PhpDocRange()<CR>

" use powerline fonts

let g:airline_powerline_fonts = 1

" let g:user_emmet_leader_key='<C-Z>,'

" --- --- --- --- --- Search Settings --- --- --- --- --- "

set incsearch       " Find the next match as we type the search
set hlsearch        " Highlight searches by default
set ignorecase      " Ignore case when searching...
set smartcase       " ...unless we type a capital
nnoremap <silent> <CR> :nohlsearch<CR><CR> " Hit Enter again to hide highlighted search results
vnoremap // y/<C-R>"<CR>" " Search visually selected text by typing //

"Jump to cursor positions in change list

nnoremap <S-Up> g, " next cursor position
nnoremap <S-Down> g; " previous cursor position

" --- --- --- --- Relavite numbering Settings --- --- --- --- "

" -- Relavite numbering

set rnu
function! ToggleNumbersOn()
    set nu!
    set rnu
endfunction
function! ToggleRelativeOn()
    set rnu!
    set nu
endfunction
autocmd FocusLost * call ToggleRelativeOn()
autocmd FocusGained * call ToggleRelativeOn()
autocmd InsertEnter * call ToggleRelativeOn()
autocmd InsertLeave * call ToggleRelativeOn()
