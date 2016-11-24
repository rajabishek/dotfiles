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
