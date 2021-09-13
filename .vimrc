 " Vanilla configs
se nu et ai hls bg=dark ls=2 ts=4 sts=4 sw=4 bs=indent,eol,start "cul cuc
se omnifunc=javascriptcomplete#CompleteJS
syn on

" Check if xterm is in 256 color mode
if $TERM == "xterm-256color"
  set t_Co=256
endif

" Set color theme
colo gruvbox

" Highlight Matched Paren
autocmd VimEnter * DoMatchParen

" Highlight brackets
"hi MatchParen cterm=bold ctermbg=green ctermfg=blue

" Undo break points
 inoremap , ,<c-g>u
 inoremap . .<c-g>u
 inoremap ! ! <c-g>u
 inoremap ? ?<c-g>u
 inoremap [ [<c-g>u

" Moving text line
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
inoremap <C-j> <esc>:m .+1<CR>==
inoremap <C-k> <esc>:m .-2<CR>==
nnoremap K :m .-2<CR>==
nnoremap <leader>j :m .+1<CR>==

" Auto-install plugin manager
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
      https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall
endif

" List of plugins
call plug#begin('~/.vim/plugged')
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/rainbow_parentheses.vim'
    Plug 'easymotion/vim-easymotion'
    Plug 'tpope/vim-surround'
    Plug 'jiangmiao/auto-pairs'
    Plug 'simeji/winresizer'
    Plug 'mattn/emmet-vim'
    Plug 'markonm/traces.vim'
    Plug 'flazz/vim-colorschemes'
    Plug 'joshdick/onedark.vim'
call plug#end()

" PLUGIN CONFIGS
" Rainbow_parentheses
autocmd VimEnter * RainbowParentheses

" Easy Motion
map F <Plug>(easymotion-jumptoanywhere)
map f <Plug>(easymotion-bd-f)

" FZF
" Let g:fzf_layout = { 'window': { 'width': 0.8, 'height': 0.8} }
let $FZF_DEFAULT_OPTS='--reverse'
nnoremap <leader>gc :GCheckout<CR>
