" be iMproved, required - Lets use the latest vim settings and options
set nocompatible

"--------------- Visuals ---------------"
"Enable syntax highlighting
syntax on
syntax enable

"Set the background color of the editor to dark
set background=dark

"Sets the color scheme of the editor
colorscheme atom-dark-256

"Sets the font to be used if macvim is used
set guifont=Fira_Code:h14

"Enable all 256 colors for terminal vim
set t_Co=256

"Set the colors of the line number bar to the editor background color
hi LineNr ctermbg=bg
hi LineNr guibg=bg

"Set the background of the split border to background color of the editor and
"the color of the split line to red
hi vertsplit ctermbg=red ctermfg=bg
hi vertsplit guibg=#96C697 guifg=bg

hi StatusLine ctermbg=red ctermfg=white
hi StatusLineNC ctermbg=black ctermfg=white

"Disable the scroll bars that are displayed on macvim
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R

"Remove the GUI tabs on macvim
set guioptions-=e

"Show the line numbers
set number

"Add some padding on the left handside - looks good if not using the number
"line on the left hand side
"set foldcolumn=1
"hi foldcolumn ctermbg=bg
"hi foldcloumn guibg=bg

"Make backspace behave like every other editor.
set backspace=indent,eol,start

"Set the leader key as comma
let mapleader=','

"Turn off the annoying error bells
set noerrorbells visualbell t_vb=

"--------------- Indentation ---------------"
"Set proper indentation width
set tabstop=4
set shiftwidth=4
augroup autoindentation
    "Clear out the contents of the group before proceeding
    autocmd!
    autocmd FileType scss setlocal shiftwidth=2 tabstop=2
    autocmd FileType rb setlocal shiftwidth=2 tabstop=2
augroup END

"--------------- Laravel Specific Commands ---------------"
"Make it easy to edit the routes file
nmap <Leader>ler :e routes/web.php<cr>
