" Vanilla configs
se nu et ai hls bg=dark ls=2 ts=2 sts=2 sw=2 bs=indent,eol,start "cul cuc
syn on

" Undo break points
 inoremap , ,<c-g>u
 inoremap . .<c-g>u
 inoremap \! ! <c-g>u
 inoremap ? ?<c-g>u
 inoremap [ [<c-g>u

" Moving text line
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
inoremap <C-j> <esc>:m .+1<CR>==
inoremap <C-k> <esc>:m .-2<CR>==
nnoremap <leader>k :m .-2<CR>==
nnoremap <leader>j :m .+1<CR>==

" Auto-install vim-plug
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" List of plugins
call plug#begin('~/.vim/plugged')
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/rainbow_parentheses.vim'
    Plug 'easymotion/vim-easymotion'
    Plug 'tpope/vim-surround'
    Plug 'simeji/winresizer'
    Plug 'mattn/emmet-vim'
    Plug 'markonm/traces.vim'
    Plug 'flazz/vim-colorschemes'
    Plug 'joshdick/onedark.vim'
call plug#end()

" Set color theme
colo gruvbox

" Plugin Configs
" Rainbow_parentheses
autocmd VimEnter * RainbowParentheses

" Easy Motion
map F <Plug>(easymotion-jumptoanywhere)
map f <Plug>(easymotion-bd-f)

" FZF
" Let g:fzf_layout = { 'window': { 'width': 0.8, 'height': 0.8} }
let $FZF_DEFAULT_OPTS='--reverse'
nnoremap <leader>gc :GCheckout<CR>
