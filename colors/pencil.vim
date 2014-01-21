" Vim Color File
" Name:       pencil.vim
" Version:    0.2
" Maintainer: github.com/reedes github.com/mattly

hi clear

if exists('syntax on')
    syntax reset
endif

let g:colors_name='pencil'

" Colors
let s:black           = { "gui": "#212121", "cterm": "0"   }
let s:subtle_black    = { "gui": "#303030", "cterm": "236" }
let s:light_black     = { "gui": "#424242", "cterm": "8"   }
let s:lighter_black   = { "gui": "#545454", "cterm": "240" }
let s:medium_grey     = { "gui": "#767676", "cterm": "243" }
let s:light_grey      = { "gui": "#D9D9D9", "cterm": "253" }
let s:lighter_grey    = { "gui": "#E5E6E6", "cterm": "254" }
let s:white           = { "gui": "#F1F1F1", "cterm": "15"  }
let s:actual_white    = { "gui": "#FFFFFF", "cterm": "231" }

let s:pink            = { "gui": "#fb007a", "cterm": "9"   }
let s:red             = { "gui": "#C30771", "cterm": "1"   }
let s:orange          = { "gui": "#D75F5F", "cterm": "167" }

let s:darker_blue     = { "gui": "#005F87", "cterm": "18"  }
let s:dark_blue       = { "gui": "#008EC4", "cterm": "4"   }
let s:blue            = { "gui": "#20BBFC", "cterm": "12"  }
let s:light_blue      = { "gui": "#b6d6fd", "cterm": "153" }
let s:dark_cyan       = { "gui": "#20A5BA", "cterm": "6"   }
let s:light_cyan      = { "gui": "#4FB8CC", "cterm": "14"  }

let s:dark_green      = { "gui": "#10A778", "cterm": "2"   }
let s:light_green     = { "gui": "#5FD7A7", "cterm": "10"  }

let s:dark_purple     = { "gui": "#523C79", "cterm": "5"   }
let s:light_purple    = { "gui": "#6855DE", "cterm": "13"  }

let s:yellow          = { "gui": "#F3E430", "cterm": "11"  }
let s:dark_yellow     = { "gui": "#A89C14", "cterm": "3"   }



" maybe pursue something like this: https://github.com/noahfrederick/vim-hemisu/
"let s:iaWhite           = { 'gui': '#F1F1F1' }
"let s:iaOffWhiteIPad    = { 'gui': '#F5F2EC' }
"let s:iaOffWhiteDemo    = { 'gui': '#F9F8F4' }
"let s:iaCursor          = { 'gui': '#20BBFC' }
"let s:iaSelection       = { 'gui': '#B6D6FD' }
"let s:iaSelectionNOS    = { 'gui': '#D4D4D4' }
"let s:iaStatusBar       = { 'gui': '#EDEDED' }
"let s:iaStatusBarBorder = { 'gui': '#D9D9D9' }   used for search too
"let s:iaText            = { 'gui': '#424242' }
"let s:iaBlue            = { 'gui': '#B5D6FD' }
"let s:iaGreen           = { 'gui': '#30C798' }   darkened to: #10A778
"let s:iaBlue2           = { 'gui': '#1DAEE4' }   darkened to: #008EC4
"let s:iaGrey            = { 'gui': '#999999' }   lightened to: #D9D9D9
"let s:iaRed             = { 'gui': '#E32791' }   darkened to: #C30771
"let s:iaUnfocusedText   = { 'gui': '#B8B8B8' }
"let s:iaMenuSelected    = { 'gui': '#2C81FB' }
"let s:iaMenuUnSelected  = { 'gui': '#545454' }
"let s:iaMenuText        = { 'gui': '#F1F1F1' }
"let s:iaLightKeyBg      = { 'gui': '#4B4B4B' }
"let s:iaDarkKeyBg       = { 'gui': '#262626' }
"let s:iaNearBlack       = { 'gui': '#181818' }
"let s:iaSyntaxButton    = { 'gui': '#363738' }
"let s:iaSearchHighlight = { 'gui': '#F3E430' }  yellow
" Purple: #8F8FB7
" Headings: #4242FF

if &background == "dark"
  let s:bg              = s:black
  let s:bg_subtle       = s:light_black
  let s:bg_very_subtle  = s:subtle_black
  let s:norm            = s:white
  let s:norm_subtle     = s:light_grey
  let s:purple          = s:light_purple
  let s:cyan            = s:light_cyan
  let s:green           = s:light_green
  let s:visual          = s:light_black
else
  let s:bg              = s:white
  let s:bg_subtle       = s:light_grey
  let s:bg_very_subtle  = s:lighter_grey
  let s:norm            = s:light_black
  let s:norm_subtle     = s:lighter_black
  let s:purple          = s:dark_purple
  let s:cyan            = s:dark_cyan
  let s:green           = s:dark_green
  let s:visual          = s:light_blue
endif

" shamelessly stolen from hemisu: https://github.com/noahfrederick/vim-hemisu/
function! s:h(group, style)
  execute "highlight" a:group
    \ "guifg="   (has_key(a:style, "fg")    ? a:style.fg.gui   : "NONE")
    \ "guibg="   (has_key(a:style, "bg")    ? a:style.bg.gui   : "NONE")
    \ "guisp="   (has_key(a:style, "sp")    ? a:style.sp.gui   : "NONE")
    \ "gui="     (has_key(a:style, "gui")   ? a:style.gui      : "NONE")
    \ "ctermfg=" (has_key(a:style, "fg")    ? a:style.fg.cterm : "NONE")
    \ "ctermbg=" (has_key(a:style, "bg")    ? a:style.bg.cterm : "NONE")
    \ "cterm="   (has_key(a:style, "cterm") ? a:style.cterm    : "NONE")
endfunction

" common groups ================================================================
" (see `:h w18`)

call s:h("Normal",    {"bg": s:bg, "fg": s:norm})
call s:h("Cursor",    {"bg": s:blue, "fg": s:norm })
call s:h("Comment",   {"fg": s:medium_grey, "gui": "italic"})

call s:h("Constant", {"fg": s:green})
hi! link String       Constant
hi! link Character    Constant
hi! link Number       Constant
hi! link Boolean      Constant
hi! link Float        Constant

call s:h("Identifier", {"fg": s:pink})
hi! link Function     Identifier

call s:h("Statement", {"fg": s:dark_blue})
hi! link Conditonal  Statement
hi! link Repeat       Statement
hi! link Label        Statement
hi! link Operator     Statement
hi! link Keyword      Statement
hi! link Exception    Statement

call s:h("PreProc", {"fg": s:purple})
hi! link Include      PreProc
hi! link Define       PreProc
hi! link Macro        PreProc
hi! link PreCondit    PreProc

call s:h("Type", {"fg": s:cyan})
hi! link StorageClass Type
hi! link Structure    Type
hi! link Typedef      Type

call s:h("Special", {"fg": s:red})
hi! link Special      Special
hi! link SpecialChar  Special
hi! link Tag          Special
hi! link Delimiter    Special
hi! link SpecialComment Special
hi! link Debug        Special

call s:h("Underlined", {"fg": s:norm, "gui": "underline", "cterm": "underline"})
call s:h("Ignore", {"fg": s:bg})
call s:h("Error",  {"fg": s:actual_white, "bg": s:red, "cterm": "bold"})
call s:h("Todo",   {"fg": s:actual_white, "bg": s:pink, "gui": "bold", "cterm": "bold"})

" ui chrome ====================================================================
" ordered according to `:help hitest.vim`

call s:h("SpecialKey",    {"fg": s:light_green})
call s:h("NonText",       {"fg": s:medium_grey})
call s:h("Directory",     {"fg": s:blue})
call s:h("ErrorMsg",      {"fg": s:pink})
call s:h("IncSearch",     {"bg": s:yellow, "fg": s:light_black})
call s:h("Search",        {"bg": s:yellow, "fg": s:light_black})
call s:h("MoreMsg",       {"fg": s:medium_grey, "cterm": "bold", "gui": "bold"})
hi! link ModeMsg MoreMsg
call s:h("LineNr",        {"fg": s:bg_subtle})
call s:h("CursorLineNr",  {"fg": s:blue, "bg": s:bg_very_subtle})
call s:h("Question",      {"fg": s:red})
call s:h("StatusLine",    {"bg": s:bg_subtle})
call s:h("StatusLineNC",  {"bg": s:bg_subtle, "fg": s:medium_grey})
call s:h("VertSplit",     {"bg": s:bg_subtle, "fg": s:bg_subtle})
call s:h("Title",         {"fg": s:dark_blue})
call s:h("Visual",        {"bg": s:visual})
call s:h("VisualNOS",     {"bg": s:bg_subtle})
call s:h("WarningMsg",    {"fg": s:red})
call s:h("WildMenu",      {"fg": s:bg, "bg": s:norm})
call s:h("Folded",        {"fg": s:medium_grey})
call s:h("FoldColumn",    {"fg": s:bg_subtle})
call s:h("DiffAdd",       {"fg": s:green})
call s:h("DiffDelete",    {"fg": s:red})
call s:h("DiffChange",    {"fg": s:dark_yellow})
call s:h("DiffText",      {"fg": s:dark_blue})
call s:h("SignColumn",    {"fg": s:light_green})
" hi Conceal
let s:spelling = "gui=undercurl cterm=underline guibg=NONE ctermbg=NONE "
exe "hi SpellBad " .s:spelling ."guisp=" .s:red.gui ." ctermfg=" .s:red.cterm
exe "hi SpellCap " .s:spelling ."guisp=" .s:light_green.gui ." ctermfg=" .s:light_green.cterm
exe "hi SpellRare " .s:spelling ."ctermfg=" .s:pink.cterm
exe "hi SpellLocal " .s:spelling ."ctermfg=" .s:dark_green.cterm
call s:h("Pmenu",         {"fg": s:norm, "bg": s:bg_subtle})
call s:h("PmenuSel",      {"fg": s:norm, "bg": s:blue})
call s:h("PmenuSbar",     {"fg": s:norm, "bg": s:bg_subtle})
call s:h("PmenuThumb",    {"fg": s:norm, "bg": s:bg_subtle})
call s:h("TabLine",       {"fg": s:norm, "bg": s:bg_subtle})
call s:h("TabLineSel",    {"fg": s:norm, "bg": s:blue})
call s:h("TabLineFill",   {"fg": s:norm, "bg": s:bg_subtle})
call s:h("CursorColumn",  {"bg": s:bg_very_subtle})
call s:h("CursorLine",    {"bg": s:bg_very_subtle})
call s:h("ColorColumn",   {"fg": s:cyan, "bg": s:bg_subtle})

" remainder of syntax highlighting
hi MatchParen     guifg=fg        guibg=#F7DF94   ctermfg=16     ctermbg=72

hi helpHyperTextJump guifg=#5FAFD7 ctermfg=74

hi htmlItalic     guifg=fg      guibg=NONE gui=italic      ctermfg=38  ctermbg=NONE cterm=bold
hi htmlBold       guifg=fg      guibg=NONE gui=bold        ctermfg=38  ctermbg=NONE cterm=bold
hi htmlBoldItalic guifg=fg      guibg=NONE gui=bold,italic ctermfg=38  ctermbg=NONE cterm=bold
hi htmlH1         guifg=#226292 guibg=NONE gui=bold,italic ctermfg=38  ctermbg=NONE cterm=bold
hi htmlH2         guifg=#226282 guibg=NONE gui=bold        ctermfg=38  ctermbg=NONE cterm=bold
hi htmlH3         guifg=#325272 guibg=NONE gui=italic      ctermfg=38  ctermbg=NONE cterm=bold
hi htmlH4         guifg=#325262 guibg=NONE gui=NONE        ctermfg=38  ctermbg=NONE cterm=bold
hi htmlH5         guifg=#424252 guibg=NONE gui=NONE        ctermfg=38  ctermbg=NONE cterm=bold
hi htmlH6         guifg=#424242 guibg=NONE gui=NONE        ctermfg=38  ctermbg=NONE cterm=bold
hi htmlLink       guifg=#424242 guibg=NONE gui=NONE        ctermfg=185 ctermbg=NONE cterm=NONE
hi htmlString     guifg=#87875f guibg=NONE gui=NONE        ctermfg=101 ctermbg=NONE cterm=NONE
hi htmlTagName    guifg=fg      guibg=NONE gui=NONE        ctermfg=182 ctermbg=NONE cterm=NONE
hi link htmlTag         Keyword
hi link htmlEndTag      Identifier
hi link htmlTagName     Conditional

" tpope/vim-markdown
" Needed to retain the syntax highlighting for code
" TODO support for plasticboy/vim-markdown as well
hi markdownHeadingDelimiter  guifg=#424242
hi markdownRule              guifg=#424242
hi markdownIdDeclaration     guifg=#424242
hi markdownId                guifg=#999999
hi markdownIdDelimiter       guifg=#999999
hi markdownLinkTextDelimiter guifg=#999999
hi markdownLinkDelimiter     guifg=#999999
hi markdownUrl               guifg=#999999

hi link xmlTag          Keyword
hi link xmlTagName      Conditional
hi link xmlEndTag       Identifier

" Signify, git-gutter
hi link SignifySignAdd      LineNr
hi link SignifySignDelete   LineNr
hi link SignifySignChange   LineNr
hi link GitGutterAdd        LineNr
hi link GitGutterDelete     LineNr
hi link GitGutterChange     LineNr
hi link GitGutterChangeDelete LineNr

