set number

" TABキーを押した際にタブ文字の代わりにスペース(4文字)を入れる
set expandtab
set tabstop=4
set shiftwidth=4

" key binding.
nnoremap <C-n> :tabnew<CR>
nnoremap <C-tab> gt
nnoremap <C-S-tab> gT

" TAB, spaceを可視化する
set list
set listchars=tab:>-,trail:-,extends:>,precedes:<,nbsp:%

"----------------------
" plugin setting
"----------------------
let s:dein_dir = expand('~/.vim/dein')
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'

execute 'set runtimepath^=' . s:dein_repo_dir

call dein#begin(s:dein_dir)
call dein#add('Shougo/Unite.vim')
call dein#add('scrooloose/nerdtree')
call dein#end()

filetype plugin indent on
syntax enable
colorscheme industry
syntax on
