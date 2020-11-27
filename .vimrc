syntax on
set number relativenumber
set tabstop=3
set shiftwidth=3
set autoindent
set tags=./tags,tags;$HOME
set nocompatible
filetype plugin on
colo Will2
set timeoutlen=150
set ttimeoutlen=1

""Global settings
inore <Tab><Space> <Tab>
inore <Tab> <Esc>`^
nnore `] :vert winc ]<Enter>
nnore `[ :wq<Enter>
nnore gh :vert wincmd f<CR>
nnore <S-h> :bN<Enter>
nnore <S-l> :bn<Enter>
nnore <Space> za
set splitright
set splitbelow
set foldmethod=indent
set foldlevel=2
set linebreak
""LaTeX
au FileType tex inore ;<Space> <Esc>/<++><Enter>"_4dli
au FileType tex inore ;$ $$<Enter><Enter>$$<Enter><++><Esc>kki
au FileType tex inore ;a \begin{array}{}<Enter>\end{array}<Enter><++><Esc>2k$i
""au FileType tex inore ii \item<Space>
au FileType tex inore ;m \big[<Enter>\begin{smallmatrix}<Enter><Enter>\end{smallmatrix}<Enter>\big]<++><Esc>2ki<Tab>
au FileType tex inore ;r \mathbb{R}
au FileType tex inore ;z \mathbb{Z}
au FileType tex inore ;i \begin{itemize}<Enter><Enter>\end{itemize}<Enter><++><Esc>2ki<Tab>
au FileType tex inore ;e \begin{enumerate}<Enter><Enter>\end{enumerate}<Enter><++><Esc>2ki<Tab>
au FileType tex nnore j gj
au FileType tex nnore k gk

""C++
au FileType cpp inore `<Space> <Esc>/<++><Enter>"_4cl
au FileType cpp inore `i #include <><++><Esc>4hi
au FileType cpp inore `u using namespace std;<Enter>
au FileType cpp nnore co I//<Esc>
au FileType cpp nnore cu ^xx
au FileType cpp nnore zf j[[kzt``k
au FileType cpp nnore `] :vert winc ]<Enter>

""C
au FileType c nnore co I//<Esc>
au FileType c nnore cu ^xx
au FileType c nnore zf j[[kzt``k
au FileType c nnore `] :vert winc ]<Enter>
""Python
au FileType python nnore co I#<esc>
au FileType python nnore cu ^x
au FileType python nnore `] :vert winc ]<Enter>
au FileType python nnore `[ :wq<Enter>

" WSL yank support
let s:clip = '/mnt/c/Windows/System32/clip.exe'  " change this path according to your mount point
if executable(s:clip)
	augroup WSLYank
		au!
		au TextYankPost * if v:event.operator ==# 'y' | call system(s:clip, @0) | endif
	augroup END
endif
