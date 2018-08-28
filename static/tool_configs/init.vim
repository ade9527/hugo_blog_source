set number
set shiftwidth=8
set softtabstop=8
set tabstop=8
set cindent
set autoread
set mouse=a
set tags=tags
"set termguicolors
set colorcolumn=81
set wildmenu

":colorscheme desert
call plug#begin('~/.config/nvim/plugged')

" add or remove your bundles here:
"Plug 'https://github.com/vim-scripts/fcitx.vim.git'
"source ~/.config/nvim/auto-complete.vim
Plug 'vim-scripts/taglist.vim'
Plug 'vim-scripts/The-NERD-tree'
Plug 'Valloric/YouCompleteMe'

Plug 'Yggdroot/LeaderF'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'junegunn/vim-easy-align'
Plug 'jiangmiao/auto-pairs'

Plug 'terryma/vim-multiple-cursors'

Plug 'rdnetto/YCM-Generator', { 'branch': 'stable'}

Plug 'morhetz/gruvbox'
" Add plugins to &runtimepath
call plug#end()

let g:ycm_global_ycm_extra_conf='~/.ycm_extra_conf.py'
"let g:deoplete#enable_at_startup = 1

syntax enable
"set background=dark
"colorscheme gruvbox


" 设置空白字符的视觉提示
set list listchars=extends:❯,precedes:❮,tab:▸\ ,trail:˽


"##### auto fcitx  ###########
"let g:input_toggle = 1
"function! Fcitx2en()
"    let s:input_status = system("fcitx-remote")
"    if s:input_status == 2
"        let g:input_toggle = 1
"        let l:a = system("fcitx-remote -c")
"    endif
"endfunction
"
"function! Fcitx2zh()
"    let s:input_status = system("fcitx-remote")
"    if s:input_status != 2 && g:input_toggle == 1
"        let l:a = system("fcitx-remote -o")
"        let g:input_toggle = 0
"    endif
"endfunction
"
"set ttimeoutlen=150
"退出插入模式
"autocmd InsertLeave * call Fcitx2en()
"进入插入模式
"autocmd InsertEnter * call Fcitx2zh()
"##### auto fcitx end ######
"
"


" airline
"let g:airline_powerline_fonts = 1
"let g:irline#extensions#tabline#left_sep = ' ' 
"let g:airline#extensions#tabline#left_alt_sep = '|'


" colors set
let g:molokai_original = 1
let g:rehash256 = 1

" airline设置
" 显示颜色
set t_Co=256
set laststatus=2
" 使用powerline打过补丁的字体
let g:airline_powerline_fonts = 1
" 开启tabline
let g:airline#extensions#tabline#enabled = 1
" tabline中当前buffer两端的分隔字符
let g:airline#extensions#tabline#left_sep = ' '
" tabline中未激活buffer两端的分隔字符
let g:airline#extensions#tabline#left_alt_sep = '|'
" tabline中buffer显示编号
let g:airline#extensions#tabline#buffer_nr_show = 1
" 映射切换buffer的键位
nnoremap b[ :bp<CR>
nnoremap b] :bn<CR>
" 映射<leader>num到num buffer
map <leader>1 :b 1<CR>
map <leader>2 :b 2<CR>
map <leader>3 :b 3<CR>
map <leader>4 :b 4<CR>
map <leader>5 :b 5<CR>
map <leader>6 :b 6<CR>
map <leader>7 :b 7<CR>
map <leader>8 :b 8<CR>
map <leader>9 :b 9<CR>

map <C-c> "+yy
map <C-v> "+p

nnoremap <C-\> :tselect <C-R><C-W><CR>
