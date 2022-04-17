se et ai hls bg=dark ls=2 ts=4 sts=4 sw=4 bs=indent,eol,start "cul cuc
hi Normal ctermfg=white ctermbg=black

call plug#begin('~/.vim/plugged')

Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-surround'
Plug 'simeji/winresizer'
Plug 'markonm/traces.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/rainbow_parentheses.vim'
Plug 'mattn/emmet-vim'

call plug#end()

"fzf
let g:fzf_layout = { 'window': { 'width': 0.8, 'height': 0.8} }
let $FZF_DEFAULT_OPTS='--reverse'
nnoremap <leader>gc :GCheckout<CR>

"rainbow_parenthesis
autocmd VimEnter * RainbowParentheses

"easymotion
map F <Plug>(easymotion-jumptoanywhere)
map f <Plug>(easymotion-bd-f)

syn off

"color_brackets
hi MatchParen cterm=bold ctermbg=white ctermfg=green

"tab_to_autocomplete
inoremap <expr> <Tab> pumvisible() ? "<C-y>" : "<Tab>"

"undo_break_points
 inoremap , ,<c-g>u
 inoremap . .<c-g>u
 inoremap ! ! <c-g>u
 inoremap ? ?<c-g>u
 inoremap [ [<c-g>u

"moving_text
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
inoremap <C-j> <esc>:m .+1<CR>==
inoremap <C-k> <esc>:m .-2<CR>==
nnoremap K :m .-2<CR>==
nnoremap <leader>j :m .+1<CR>==
