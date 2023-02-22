" NVIM CONFIG
filetype plugin indent on   
syntax on                  

set rnu nu
set ts=4 et sts=4 sw=4 ai si
set cc=100                  
set mouse=a                
set encoding=utf-8



" PLUGINS
call plug#begin('~/.config/nvim/plugged')
    Plug 'https://github.com/ryanoasis/vim-devicons'
    Plug 'https://github.com/preservim/nerdtree'
    Plug 'https://github.com/preservim/nerdcommenter'
   
    Plug 'https://github.com/vim-airline/vim-airline'
    Plug 'https://github.com/vim-airline/vim-airline-themes'
    Plug 'https://github.com/gruvbox-community/gruvbox'

    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'https://github.com/jiangmiao/auto-pairs'
    Plug 'pangloss/vim-javascript'

call plug#end()

colorscheme gruvbox

" KEYBINDIGS

    " exit insert mode by pressing ii
    imap qq <Esc>

    " move between panes to left/bottom/top/right
    nnoremap <C-h> <C-w>h
    nnoremap <C-j> <C-w>j
    nnoremap <C-k> <C-w>k
    nnoremap <C-l> <C-w>l

    " nerdtree toggle by Ctrl-T
    nnoremap <C-t> :NERDTreeToggle<CR>
    
    nnoremap <S-l> $
    nnoremap <S-h> ^

" Coc config
let g:coc_global_extensions = [
			\'coc-html',
            \'coc-css',
			\'coc-json',
			\'coc-marketplace',
			\'coc-prettier',
			\'coc-vimlsp',
            \'coc-pyright',
			\'coc-snippets',
			\]

inoremap <silent><expr> <c-space> coc#pum#visible() ? coc#pum#cancel() : coc#refresh()

inoremap <expr> <Tab> coc#pum#visible() ? coc#pum#next(1) : "\<Tab>"
inoremap <expr> <S-Tab> coc#pum#visible() ? coc#pum#prev(1) : "\<S-Tab>"

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

nmap <silent> <C-s> <Plug>(coc-range-select)

set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Js
let g:javascript_plugin_flow = 1


