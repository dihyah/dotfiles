se et ai hls bg=dark ls=2 ts=4 sts=4 sw=4 bs=indent,eol,start "cul cuc
hi Normal ctermfg=white ctermbg=black

call plug#begin('~/.vim/plugged')

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
"Plug 'junegunn/rainbow_parentheses.vim'
Plug 'easymotion/vim-easymotion'
Plug 'mattn/emmet-vim'
Plug 'tpope/vim-surround'
Plug 'simeji/winresizer'
Plug 'markonm/traces.vim'
Plug 'RRethy/vim-illuminate'

call plug#end()

" fzf
"let g:fzf_layout = { 'window': { 'width': 0.8, 'height': 0.8} }
let $FZF_DEFAULT_OPTS='--reverse'
nnoremap <leader>gc :GCheckout<CR>

" rainbow_parentheses
"autocmd VimEnter * RainbowParentheses

" Easy Motion
map F <Plug>(easymotion-jumptoanywhere)
map f <Plug>(easymotion-bd-f)

syn off

" Bracket Colored
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
