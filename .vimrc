se nu et ai hls bg=dark ls=2 ts=4 sts=4 sw=4 bs=indent,eol,start "cul cuc
syn on

call plug#begin('~/.vim/plugged')

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/rainbow_parentheses.vim'
Plug 'easymotion/vim-easymotion'
Plug 'mattn/emmet-vim'
Plug 'tpope/vim-surround'
Plug 'simeji/winresizer'
Plug 'markonm/traces.vim'
Plug 'RRethy/vim-illuminate'
Plug 'miyakogi/conoline.vim'
Plug 'joshdick/onedark.vim'
Plug 'flazz/vim-colorschemes'
Plug 'pangloss/vim-javascript'
"Plug 'jiangmiao/auto-pairs'
"Plug 'vim-scripts/AutoComplPop'


call plug#end()

if $TERM == "xterm-256color"
  set t_Co=256
endif

colo gruvbox

" Highlight Matched Paren
autocmd VimEnter * DoMatchParen

" Colored brackets
hi MatchParen cterm=bold ctermbg=white ctermfg=green

" Tab to autocomplete
inoremap <expr> <Tab> pumvisible() ? "<C-y>" : "<Tab>"

" Undo break points
 inoremap , ,<c-g>u
 inoremap . .<c-g>u
 inoremap ! ! <c-g>u
 inoremap ? ?<c-g>u
 inoremap [ [<c-g>u

" Moving text
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
inoremap <C-j> <esc>:m .+1<CR>==
inoremap <C-k> <esc>:m .-2<CR>==
nnoremap K :m .-2<CR>==
nnoremap <leader>j :m .+1<CR>==

" rainbow_parentheses
autocmd VimEnter * RainbowParentheses
" Easy Motion
map F <Plug>(easymotion-jumptoanywhere)
map f <Plug>(easymotion-bd-f)

" fzf
"let g:fzf_layout = { 'window': { 'width': 0.8, 'height': 0.8} }
let $FZF_DEFAULT_OPTS='--reverse'
nnoremap <leader>gc :GCheckout<CR>
