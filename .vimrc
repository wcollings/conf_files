syntax on
set number relativenumber
set tabstop=3
set shiftwidth=3
set autoindent
set tags=./tags,tags;$HOME
set nocompatible
filetype plugin on
set timeoutlen=150
set ttimeoutlen=1

""Global settings
inore <Tab><Space> <Tab>
inoremap <Tab> <Esc>`^
nnoremap ]] :vert winc ]<Enter>
nnoremap [[ :wq<Enter>
nnoremap gh :vert wincmd f<CR>
nnore <S-h> :bN<Enter>
nnore <S-l> :bn<Enter>
set splitright
set splitbelow
set foldmethod=indent
set foldlevel=99
""LaTeX
autocmd FileType tex inoremap ;<Space> <Esc>/<++><Enter>"_4dli
autocmd FileType tex inoremap ;$ $$<Enter><Enter>$$<Enter><++><Esc>kki
autocmd FileType tex inoremap ;a \begin{array}{}<Enter>\end{array}<Enter><++><Esc>2k$i
autocmd FileType tex inoremap ;m \big[<Enter>\begin{smallmatrix}<Enter><Enter>\end{smallmatrix}<Enter>\big]<++><Esc>2ki<Tab>
autocmd FileType tex inoremap ;r \mathbb{R}
autocmd FileType tex inoremap ;z \mathbb{Z}
autocmd FileType tex inoremap ;i \begin{itemize}<Enter><Enter>\end{itemize}<Enter><++><Esc>2ki<Tab>
autocmd FileType tex inoremap ;e \begin{enumerate}<Enter><Enter>\end{enumerate}<Enter><++><Esc>2ki<Tab>

""C++
autocmd FileType cpp inoremap `<Space> <Esc>/<++><Enter>"_4cl
autocmd FileType cpp inoremap `i #include <><++><Esc>4hi
autocmd FileType cpp inoremap `u using namespace std;<Enter>
autocmd FileType cpp nnoremap co I//<Esc>
autocmd FileType cpp nnoremap cu ^xx
autocmd FileType cpp nnoremap zf j[[kzt``k
autocmd FileType cpp nnoremap <Space> za

""C
autocmd FileType c nnoremap co I//<Esc>
autocmd FileType c nnoremap cu ^xx
autocmd FileType c nnoremap zf j[[kzt``k
autocmd FileType c nnoremap <Space> za
""Python
autocmd FileType python nnoremap co I#<esc>
autocmd FileType python nnoremap cu ^x
au FileType python nnoremap <Space> za
