" Name:     M E T A C H R O M E
" Author:   Adam R. Nelson <dev@sector91.com>
" URL:      https://github.com/ar-nelson/metachrome.vim
" License:  MIT
" Created:  2016 Feb 18
" Modified: 2016 Mar 15

" This is a mostly-grayscale color scheme with a few special features.
" It was adapted from the Solarized Vim colorscheme.
" It uses the following 16 base colors:
"
" 0 - #000000
" 1 - #111111
" 2 - #222222
" 3 - #333333
" 4 - #444444
" 6 - #666666
" 7 - #777777
" 8 - #888888
" A - #AAAAAA
" B - #BBBBBB
" C - #CCCCCC
" D - #DDDDDD
" E - #EEEEEE
" F - #FFFFFF
" R - #DD4444
" G - #44DD44
"
" The 16-color terminal mode assumes that the terminal's ANSI colors have been
" changed to match these colors. The ANSI color scheme can be found at:
"
" http://terminal.sexy/#ERER3d3dERER____u7u7d3d3qqqqiIiI7u7u3d3dAAAA3URERN1EZmZmREREMzMzIiIizMzM
"

" Colorscheme initialization "{{{
" ---------------------------------------------------------------------
hi clear
if exists("syntax_on")
  syntax reset
endif
let colors_name = "metachrome"

"}}}
" Palettes "{{{
" ---------------------------------------------------------------------

if has("gui_running")
    let s:vmode = "gui"
    let s:c0 = "#000000"
    let s:c1 = "#111111"
    let s:c2 = "#222222"
    let s:c3 = "#333333"
    let s:c4 = "#444444"
    let s:c6 = "#666666"
    let s:c7 = "#777777"
    let s:c8 = "#888888"
    let s:cA = "#aaaaaa"
    let s:cB = "#bbbbbb"
    let s:cC = "#cccccc"
    let s:cD = "#dddddd"
    let s:cE = "#eeeeee"
    let s:cF = "#ffffff"
    let s:cR = "#dd4444"
    let s:cG = "#44dd44"
else
    let s:vmode = "cterm"
    let s:bright = "* term=bold cterm=bold"
    let s:c0 = "DarkGray"
    let s:c1 = "Black"
    let s:c2 = "LightCyan"
    let s:c3 = "LightMagenta"
    let s:c4 = "LightBlue"
    let s:c6 = "LightYellow"
    let s:c7 = "DarkYellow"
    let s:c8 = "DarkMagenta"
    let s:cA = "DarkBlue"
    let s:cB = "DarkGreen"
    let s:cC = "White"
    let s:cD = "LightGray"
    let s:cE = "DarkCyan"
    let s:cF = "DarkRed"
    let s:cR = "LightRed"
    let s:cG = "LightGreen"
endif

"}}}
" Formatting options and null values for passthrough effect "{{{
" ---------------------------------------------------------------------
    let s:none        = "NONE"
    let s:none        = "NONE"
    let s:t_none      = "NONE"
    let s:n           = "NONE"
    let s:b           = ",bold"
    let s:u           = ",underline"
    let s:c           = ",undercurl"
    let s:r           = ",reverse"
    let s:s           = ",standout"
"}}}
" Background value based on termtrans setting "{{{
" ---------------------------------------------------------------------
if has("gui_running")
    let s:back = s:c1
else
    let s:back = "NONE"
endif
"}}}
" Highlighting primitives"{{{
" ---------------------------------------------------------------------

exe "let s:bg_none = ' ".s:vmode."bg=".s:none   ."'"
exe "let s:bg_back = ' ".s:vmode."bg=".s:back   ."'"
exe "let s:bg_c0 = ' ".s:vmode."bg=".s:c0 ."'"
exe "let s:bg_c1 = ' ".s:vmode."bg=".s:c1 ."'"
exe "let s:bg_c2 = ' ".s:vmode."bg=".s:c2 ."'"
exe "let s:bg_c3 = ' ".s:vmode."bg=".s:c3 ."'"
exe "let s:bg_c4 = ' ".s:vmode."bg=".s:c4 ."'"
exe "let s:bg_c6 = ' ".s:vmode."bg=".s:c6 ."'"
exe "let s:bg_c7 = ' ".s:vmode."bg=".s:c7 ."'"
exe "let s:bg_c8 = ' ".s:vmode."bg=".s:c8 ."'"
exe "let s:bg_cA = ' ".s:vmode."bg=".s:cA ."'"
exe "let s:bg_cB = ' ".s:vmode."bg=".s:cB ."'"
exe "let s:bg_cC = ' ".s:vmode."bg=".s:cC ."'"
exe "let s:bg_cD = ' ".s:vmode."bg=".s:cD ."'"
exe "let s:bg_cE = ' ".s:vmode."bg=".s:cE ."'"
exe "let s:bg_cF = ' ".s:vmode."bg=".s:cF ."'"
exe "let s:bg_cR = ' ".s:vmode."bg=".s:cR ."'"
exe "let s:bg_cG = ' ".s:vmode."bg=".s:cG ."'"

exe "let s:fg_none = ' ".s:vmode."fg=".s:none   ."'"
exe "let s:fg_back = ' ".s:vmode."fg=".s:back   ."'"
exe "let s:fg_c0 = ' ".s:vmode."fg=".s:c0 ."'"
exe "let s:fg_c1 = ' ".s:vmode."fg=".s:c1 ."'"
exe "let s:fg_c2 = ' ".s:vmode."fg=".s:c2 ."'"
exe "let s:fg_c3 = ' ".s:vmode."fg=".s:c3 ."'"
exe "let s:fg_c4 = ' ".s:vmode."fg=".s:c4 ."'"
exe "let s:fg_c6 = ' ".s:vmode."fg=".s:c6 ."'"
exe "let s:fg_c7 = ' ".s:vmode."fg=".s:c7 ."'"
exe "let s:fg_c8 = ' ".s:vmode."fg=".s:c8 ."'"
exe "let s:fg_cA = ' ".s:vmode."fg=".s:cA ."'"
exe "let s:fg_cB = ' ".s:vmode."fg=".s:cB ."'"
exe "let s:fg_cC = ' ".s:vmode."fg=".s:cC ."'"
exe "let s:fg_cD = ' ".s:vmode."fg=".s:cD ."'"
exe "let s:fg_cE = ' ".s:vmode."fg=".s:cE ."'"
exe "let s:fg_cF = ' ".s:vmode."fg=".s:cF ."'"
exe "let s:fg_cR = ' ".s:vmode."fg=".s:cR ."'"
exe "let s:fg_cG = ' ".s:vmode."fg=".s:cG ."'"

exe "let s:fmt_none     = ' ".s:vmode."=NONE".          " term=NONE".    "'"
exe "let s:fmt_bold     = ' ".s:vmode."=NONE".s:b.      " term=NONE".s:b."'"
exe "let s:fmt_bldi     = ' ".s:vmode."=NONE".s:b.      " term=NONE".s:b."'"
exe "let s:fmt_undr     = ' ".s:vmode."=NONE".s:u.      " term=NONE".s:u."'"
exe "let s:fmt_undb     = ' ".s:vmode."=NONE".s:u.s:b.  " term=NONE".s:u.s:b."'"
exe "let s:fmt_undi     = ' ".s:vmode."=NONE".s:u.      " term=NONE".s:u."'"
exe "let s:fmt_curl     = ' ".s:vmode."=NONE".s:c.      " term=NONE".s:c."'"
exe "let s:fmt_stnd     = ' ".s:vmode."=NONE".s:s.      " term=NONE".s:s."'"
exe "let s:fmt_revr     = ' ".s:vmode."=NONE".s:r.      " term=NONE".s:r."'"
exe "let s:fmt_revb     = ' ".s:vmode."=NONE".s:r.s:b.  " term=NONE".s:r.s:b."'"

if has("gui_running")
    exe "let s:sp_none = ' guisp=".s:none ."'"
    exe "let s:sp_back = ' guisp=".s:back ."'"
    exe "let s:sp_c0 = ' guisp=".s:c0 ."'"
    exe "let s:sp_c1 = ' guisp=".s:c1 ."'"
    exe "let s:sp_c2 = ' guisp=".s:c2 ."'"
    exe "let s:sp_c3 = ' guisp=".s:c3 ."'"
    exe "let s:sp_c4 = ' guisp=".s:c4 ."'"
    exe "let s:sp_c6 = ' guisp=".s:c6 ."'"
    exe "let s:sp_c7 = ' guisp=".s:c7 ."'"
    exe "let s:sp_c8 = ' guisp=".s:c8 ."'"
    exe "let s:sp_cA = ' guisp=".s:cA ."'"
    exe "let s:sp_cB = ' guisp=".s:cB ."'"
    exe "let s:sp_cC = ' guisp=".s:cC ."'"
    exe "let s:sp_cD = ' guisp=".s:cD ."'"
    exe "let s:sp_cE = ' guisp=".s:cE ."'"
    exe "let s:sp_cF = ' guisp=".s:cF ."'"
    exe "let s:sp_cR = ' guisp=".s:cR ."'"
    exe "let s:sp_cG = ' guisp=".s:cG ."'"
else
    let s:sp_none = ""
    let s:sp_back = ""
    let s:sp_c0 = ""
    let s:sp_c1 = ""
    let s:sp_c2 = ""
    let s:sp_c3 = ""
    let s:sp_c4 = ""
    let s:sp_c6 = ""
    let s:sp_c7 = ""
    let s:sp_c8 = ""
    let s:sp_cA = ""
    let s:sp_cB = ""
    let s:sp_cC = ""
    let s:sp_cD = ""
    let s:sp_cE = ""
    let s:sp_cF = ""
    let s:sp_cR = ""
    let s:sp_cG = ""
endif

"}}}
" Basic highlighting"{{{
" ---------------------------------------------------------------------
" note that link syntax to avoid duplicate configuration doesn't work with the
" exe compiled formats

exe "hi! Normal"         .s:fmt_none   .s:fg_cD .s:bg_back

exe "hi! Comment"        .s:fmt_none   .s:fg_c6 .s:bg_none
"       *Comment         any comment

exe "hi! Constant"       .s:fmt_none   .s:fg_c8 .s:bg_none
"       *Constant        any constant
"        Character       a character constant: 'c', '\n'
"        Number          a number constant: 234, 0xff
"        Boolean         a boolean constant: TRUE, false
"        Float           a floating point constant: 2.3e10

exe "hi! String"         .s:fmt_none   .s:fg_c8 .s:bg_c0
"       *String          a string constant: "this is a string"

exe "hi! Identifier"     .s:fmt_none   .s:fg_cF .s:bg_none
"       *Identifier      any variable name
"        Function        function name (also: methods for classes)
"
exe "hi! Statement"      .s:fmt_bold   .s:fg_cC  .s:bg_none
"       *Statement       any statement
"        Conditional     if, then, else, endif, switch, etc.
"        Repeat          for, do, while, etc.
"        Operator        "sizeof", "+", "*", etc.
"        Label           case, default, etc.
"        Keyword         any other keyword
"        Exception       try, catch, throw

exe "hi! PreProc"        .s:fmt_none   .s:fg_cA .s:bg_c2
"       *PreProc         generic Preprocessor
"        Include         preprocessor #include
"        Define          preprocessor #define
"        Macro           same as Define
"        PreCondit       preprocessor #if, #else, #endif, etc.

exe "hi! Type"           .s:fmt_none   .s:fg_cB .s:bg_none
"       *Type            int, long, char, etc.
"        StorageClass    static, register, volatile, etc.
"        Structure       struct, union, enum, etc.
"        Typedef         A typedef

exe "hi! Special"        .s:fmt_bold   .s:fg_c6 .s:bg_none
"       *Special         any special symbol
"        SpecialChar     special character in a constant
"        Tag             you can use CTRL-] on this
"        SpecialComment  special things inside a comment
"        Debug           debugging statements

exe "hi! Delimiter"      .s:fmt_none   .s:fg_c7 .s:bg_none
"        Delimiter       some syntax files (Haskell) use this for parens, etc.

exe "hi! Underlined"     .s:fmt_undr   .s:fg_cD .s:bg_none
"       *Underlined      text that stands out, HTML links

exe "hi! Ignore"         .s:fmt_none   .s:fg_none .s:bg_none
"       *Ignore          left blank, hidden  |hl-Ignore|

exe "hi! Error"          .s:fmt_bold   .s:fg_cR .s:bg_none
"       *Error           any erroneous construct

exe "hi! Todo"           .s:fmt_undr   .s:fg_cF .s:bg_none
"       *Todo            anything that needs extra attention; mostly the
"                        keywords TODO FIXME and XXX
"
"}}}
" Extended highlighting "{{{
" ---------------------------------------------------------------------
exe "hi! SpecialKey"     .s:fmt_bold   .s:fg_cD .s:bg_c3
exe "hi! NonText"        .s:fmt_bold   .s:fg_cD .s:bg_none
exe "hi! StatusLine"     .s:fmt_none   .s:fg_cD .s:bg_c4
exe "hi! StatusLineNC"   .s:fmt_none   .s:fg_c8 .s:bg_c3
exe "hi! Visual"         .s:fmt_none   .s:fg_cG .s:bg_c3
exe "hi! Directory"      .s:fmt_none   .s:fg_cC .s:bg_none
exe "hi! ErrorMsg"       .s:fmt_revr   .s:fg_cR .s:bg_none
exe "hi! IncSearch"      .s:fmt_stnd   .s:fg_cG .s:bg_none
exe "hi! Search"         .s:fmt_revr   .s:fg_cG .s:bg_none
exe "hi! MoreMsg"        .s:fmt_none   .s:fg_cC .s:bg_none
exe "hi! ModeMsg"        .s:fmt_none   .s:fg_cA .s:bg_none
exe "hi! LineNr"         .s:fmt_none   .s:fg_c4 .s:bg_c0
exe "hi! Question"       .s:fmt_bold   .s:fg_cF .s:bg_none
exe "hi! VertSplit"      .s:fmt_none   .s:fg_c4 .s:bg_c3
exe "hi! Title"          .s:fmt_bold   .s:fg_cF  .s:bg_none
exe "hi! VisualNOS"      .s:fmt_stnd   .s:fg_none .s:bg_c4
exe "hi! WarningMsg"     .s:fmt_bold   .s:fg_cR  .s:bg_none
exe "hi! WildMenu"       .s:fmt_none   .s:fg_cD  .s:bg_c4
exe "hi! Folded"         .s:fmt_undb   .s:fg_c6  .s:bg_c0  .s:sp_c6
exe "hi! FoldColumn"     .s:fmt_none   .s:fg_c6  .s:bg_c0
if has("gui_running")
  exe "hi! DiffAdd"        .s:fmt_bold   .s:fg_cG .s:bg_c2 .s:sp_cG
  exe "hi! DiffChange"     .s:fmt_bold   .s:fg_cF .s:bg_c2 .s:sp_cF
  exe "hi! DiffDelete"     .s:fmt_bold   .s:fg_cR .s:bg_c2
  exe "hi! DiffText"       .s:fmt_bold   .s:fg_cD .s:bg_c2 .s:sp_cD
else
  exe "hi! DiffAdd"        .s:fmt_none   .s:fg_cG .s:bg_c2 .s:sp_cG
  exe "hi! DiffChange"     .s:fmt_none   .s:fg_cF .s:bg_c2 .s:sp_cF
  exe "hi! DiffDelete"     .s:fmt_none   .s:fg_cR .s:bg_c2
  exe "hi! DiffText"       .s:fmt_none   .s:fg_cD .s:bg_c2 .s:sp_cD
endif
exe "hi! SignColumn"     .s:fmt_none   .s:fg_cD
exe "hi! Conceal"        .s:fmt_none   .s:fg_c8   .s:bg_none
exe "hi! SpellBad"       .s:fmt_curl   .s:fg_none   .s:bg_none    .s:sp_cR
exe "hi! SpellCap"       .s:fmt_curl   .s:fg_none   .s:bg_none    .s:sp_cF
exe "hi! SpellRare"      .s:fmt_curl   .s:fg_none   .s:bg_none    .s:sp_c8
exe "hi! SpellLocal"     .s:fmt_curl   .s:fg_none   .s:bg_none    .s:sp_cG
exe "hi! Pmenu"          .s:fmt_none   .s:fg_cD .s:bg_c3
exe "hi! PmenuSel"       .s:fmt_none   .s:fg_cF .s:bg_c4
exe "hi! PmenuSbar"      .s:fmt_none   .s:fg_cF .s:bg_c4
exe "hi! PmenuThumb"     .s:fmt_none   .s:fg_cD .s:bg_c4
exe "hi! TabLine"        .s:fmt_undr   .s:fg_cD .s:bg_c3 .s:sp_cD
exe "hi! TabLineFill"    .s:fmt_undr   .s:fg_cD .s:bg_c3 .s:sp_cD
exe "hi! TabLineSel"     .s:fmt_undr   .s:fg_c8 .s:bg_cF .s:sp_cD
exe "hi! CursorColumn"   .s:fmt_none   .s:fg_none   .s:bg_c2
exe "hi! CursorLine"     .s:fmt_none   .s:fg_none   .s:bg_c2
exe "hi! ColorColumn"    .s:fmt_none   .s:fg_none   .s:bg_c2
exe "hi! Cursor"         .s:fmt_none   .s:fg_cG     .s:bg_c1
hi! link lCursor Cursor
exe "hi! MatchParen"     .s:fmt_bold   .s:fg_cG     .s:bg_none

"}}}

" TODO: Consider adding other Solarized color specifications back in

" vim:foldmethod=marker:foldlevel=0
