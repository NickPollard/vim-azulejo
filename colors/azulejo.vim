" local syntax file - set colors on a per-machine basis:
" vim: tw=0 ts=4 sw=4
" Vim color file
" Maintainer:	Nick Pollard
" Last Change:	2022
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
"
" Azulejo - a blue-focused colorscheme by Nick Pollard
" =======
"
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Main colors:
"  lightblue: #4eafcf
"  darkblue: #274b6d
"  red: #ff3030
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "nickblue"

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""

hi Comment term=italic guifg=#90907f gui=italic
hi Normal guifg=#e6e8e9 guibg=#101e2c
hi ColorColumn gui=NONE guibg=#101e2c
hi Constant term=underline ctermfg=Magenta guifg=#7F7f7F
hi Special term=bold ctermfg=Magenta guifg=#667788 gui=bold
hi Identifier term=bold ctermfg=Blue guifg=#ffffff gui=bold
hi Statement term=bold ctermfg=DarkRed gui=NONE guifg=#cf3030 gui=bold
hi Operator term=bold ctermfg=DarkRed gui=NONE guifg=#376b9d gui=bold
hi Keyword term=bold ctermfg=DarkRed gui=NONE guifg=#cf3030 gui=bold
hi conceal term=bold ctermfg=Magenta guibg=NONE guifg=#667788 gui=bold
hi PreProc term=underline ctermfg=Magenta guifg=#376b9d gui=bold
hi Type term=underline ctermfg=Blue guifg=#4eafcf gui=bold
hi Typedef term=underline ctermfg=Blue guifg=#40bf00 gui=bold
hi StorageClass term=underline ctermfg=Blue guifg=#4eafcf gui=bold
hi Structure term=underline ctermfg=DarkRed guifg=#ff3030 gui=bold
hi Visual term=reverse ctermfg=Yellow ctermbg=Red guibg=#376b9d guifg=#101e2c gui=italic
hi Search term=reverse ctermfg=Black ctermbg=Cyan gui=italic,bold,underline guibg=#003028 guifg=#00DE96
hi Tag term=bold ctermfg=DarkGreen guifg=DarkGreen
hi Error term=reverse ctermfg=15ctermbg=9 guibg=#501e2c guifg=#ff4040 gui=bold
hi SignColumn term=reverse ctermfg=15 ctermbg=9 guibg=#101e2c guifg=#ff3030 gui=bold
hi Todo term=standout ctermbg=Yellow ctermfg=Black gui=bold,italic guifg=#f09000 guibg=NONE

" Tabs
hi TabLine guibg=#02080f guifg=#376b9d gui=none
hi TabLineFill gui=NONE guibg=#000000 guifg=#051525
hi TabLineSel guibg=NONE guifg=#4eafcf

" Status line
hi StatusLine term=bold cterm=NONE ctermfg=Yellow ctermbg=DarkGray gui=BOLD guifg=#4eafcf guibg=black
hi StatusLineNC guibg=#4eafcf guifg=black

" Folds
hi Folded guibg=#101e2c guifg=#203040
hi FoldColumn guibg=NONE guifg=#142840
hi VertSplit guifg=black guibg=black
hi MatchParen guibg=#3d1255 guifg=#764b8e gui=Bold
hi Path guifg=#506070 gui=bold

" Line Numbers
hi LineNr guifg=#274b6d gui=bold
" Dropdown
" ??? normal item
  hi Pmenu guifg=#a6a8a9 guibg=#142840
" ??? selected item
  hi PmenuSel guifg=#c6c8c9 guibg=#274b6d

" Links
hi! link MoreMsg Comment
hi! link ErrorMsg Visual
hi! link WarningMsg ErrorMsg
hi! link Question Comment
hi link String	Constant
hi link Character	Constant
hi link Number	Constant
hi link Boolean	Special
hi link Float		Number
hi link Function	Identifier
hi link Conditional	Statement
hi link Repeat	Statement
hi link Label		Statement
hi link Exception	Statement
hi link Include	PreProc
hi link Define	PreProc
hi link Macro		PreProc
hi link PreCondit	PreProc
hi link SpecialChar	Special
hi link Delimiter	Special
hi link SpecialComment Special
hi link Debug		Special

" Highlight current cursor line
hi CursorLine   cterm=NONE ctermbg=darkred ctermfg=white guifg=none guibg=#132639
hi CursorLineNR cterm=NONE ctermbg=darkred ctermfg=white guifg=#37668d guibg=#132639

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugin specific
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" NerdTree
hi Directory guifg=#4eafcf ctermfg=blue gui=bold
hi NERDTreeOpenable guifg=#ff3030 ctermfg=red
hi NERDTreeClosable guifg=#ff3030 ctermfg=red

" Tab-bar
hi link TagbarSignature Type
hi link TagbarScope Identifier
hi link TagbarKind Special
hi link TagbarType Statement

" CoC completion
hi CoCHintSign guifg=#007faf gui=italic,bold


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Language specific
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Haskell
hi hsNiceOperator term=bold ctermfg=DarkRed gui=NONE guifg=#ff3030 gui=bold

" OCaml
hi link ocamlModule type
hi link ocamlStructure keyword
hi link ocamlSignature keyword
" TODO - change the ocaml syntax highlighter to allow better distinction here
hi link ocamlSigEncl keyword
hi link ocamlStructEncl keyword
hi ocamlTypeVar gui=italic guifg=#7F7f7F
hi ocamlLetBinding gui=bold guifg=#ffffff
hi ocamlValBinding gui=bold guifg=#ffffff
hi link ocamlTypeDeclName type
hi ocamlLabel gui=italic guifg=#ffffff
hi link ocamlConstructor PreProc
hi link Cr Todo
hi link CrSoon Todo
hi link CrSomeday Todo
hi link ocamlParen Include
hi link ocamlBracket Include
hi link ocamlModPath Path
hi link ocamlKeyChar Operator

" Cpp
hi link  cppRightArrowHead Special

" Markdown
hi Title term=underline ctermfg=Blue guifg=#4eafcf gui=bold
hi htmlH1 term=underline ctermfg=Blue guifg=#4eafcf gui=bold
hi htmlH2 term=underline ctermfg=Blue guifg=#4eafcf gui=bold
hi htmlH3 term=underline ctermfg=Blue guifg=#4eafcf gui=bold
hi htmlH4 term=underline ctermfg=Blue guifg=#4eafcf gui=bold
hi htmlH5 term=underline ctermfg=Blue guifg=#4eafcf gui=bold
hi htmlH6 term=underline ctermfg=Blue guifg=#4eafcf gui=bold

" Diff
" Highlight vim Diff windows
hi DiffDelete guifg=#521628 guibg=#301020
hi DiffChange guibg=#003535
hi DiffText guibg=#105040  guifg=#8fcf9f
hi DiffAdd guibg=#203050 gui=italic

