#Requires AutoHotkey v2.0

; -------------------------------
; Global Mac-like Shortcut Mapping
; -------------------------------

; Copy, Cut, Paste, Select All
!c::^c                     ; Cmd+C = Copy
!x::^x                     ; Cmd+X = Cut
!v::^v                     ; Cmd+V = Paste
!a::^a                     ; Cmd+A = Select All

; Save, New, Open, Close, Print
!s::^s                     ; Cmd+S = Save
!n::^n                     ; Cmd+N = New
!o::^o                     ; Cmd+O = Open
!p::^p                     ; Cmd+P = Print
!w::^w                     ; Cmd+W = Close Window/Tab

; Undo, Redo
!z::^z                     ; Cmd+Z = Undo
!+z::^y                    ; Cmd+Shift+Z = Redo

; Text Navigation
!Left::Send "{Home}"       ; Cmd+Left = Move to start of line
!Right::Send "{End}"       ; Cmd+Right = Move to end of line
!Up::Send "^{Home}"        ; Cmd+Up = Move to start of document
!Down::Send "^{End}"       ; Cmd+Down = Move to end of document

; Text Selection
!+Left::Send "+{Home}"     ; Cmd+Shift+Left = Select to start of line
!+Right::Send "+{End}"     ; Cmd+Shift+Right = Select to end of line
!+Up::Send "^+{Home}"      ; Cmd+Shift+Up = Select to start of document
!+Down::Send "^+{End}"     ; Cmd+Shift+Down = Select to end of document

; Word Navigation with Option/Alt
#Left::Send "^{Left}"      ; Option+Left = Move one word left
#Right::Send "^{Right}"    ; Option+Right = Move one word right
#+Left::Send "^+{Left}"    ; Option+Shift+Left = Select one word left
#+Right::Send "^+{Right}"  ; Option+Shift+Right = Select one word right

; Delete word and line
#BS::Send "^{BS}"                      ; Option+Backspace = Delete previous word
!BS::Send "^{BS}"                      ; Cmd+Backspace = Delete previous word
!Delete::Send "{Home}+{End}{Delete}"  ; Cmd+Delete = Delete entire line

; Text Formatting
!b::^b                     ; Cmd+B = Bold
!i::^i                     ; Cmd+I = Italic
!u::^u                     ; Cmd+U = Underline

; Application Management
!q::Send "!{F4}"           ; Cmd+Q = Quit app
!h::Send "^m"              ; Cmd+H = Minimize window
!f::Send "^f"              ; Cmd+F = Find
!+f::Send "^+f"            ; Cmd+Shift+F = Advanced find / Find in files

; Browser / Tab Management
!t::Send "^t"              ; Cmd+T = New tab
!+t::Send "^+t"            ; Cmd+Shift+T = Reopen last closed tab
!r::Send "^r"              ; Cmd+R = Refresh
!l::Send "^l"              ; Cmd+L = Focus address bar
!]::Send "^{Tab}"          ; Cmd+] = Next tab
![::Send "^+{Tab}"         ; Cmd+[ = Previous tab
!+]::Send "^{PgDn}"        ; Cmd+Shift+] = Next tab (some apps)
!+[::Send "^{PgUp}"        ; Cmd+Shift+[ = Previous tab (some apps)

; Screenshots
!+4::Send "#+s"            ; Cmd+Shift+4 = Screenshot (Windows Snip tool)

; Window Switching
LAlt & Tab::AltTab         ; Alt+Tab = App switcher (keep native behavior)

; Spotlight / App Search
!Space::Send "#s"          ; Cmd+Space = Windows Search (similar to Spotlight)

; Developer Tools
!+i::Send "^+i"            ; Cmd+Shift+I = Open DevTools
!+c::Send "^+c"            ; Cmd+Shift+C = Inspect Element

; VS Code Style Multi-cursor
!d::Send "^d"              ; Cmd+D = Select next match (multi-cursor)
!+l::Send "^+l"            ; Cmd+Shift+L = Select all matches
!+r::Send "^+r"            ; Cmd+Shift+R = Replace in files
!LButton::Send "^{LButton}" ; Cmd+Click = Ctrl+Click

; Page / Paragraph Navigation
^Up::Send "{PgUp}"         ; Ctrl+Up = Page Up
^Down::Send "{PgDn}"       ; Ctrl+Down = Page Down
^+Up::Send "+{PgUp}"       ; Ctrl+Shift+Up = Select Page Up
^+Down::Send "+{PgDn}"     ; Ctrl+Shift+Down = Select Page Down
; Text selection (global)
#+Up::Send "+{Up}"         ; Option+Shift+Up = Extend selection up (REMOVED - conflicts with VS Code)
#+Down::Send "+{Down}"     ; Option+Shift+Down = Extend selection down (REMOVED - conflicts with VS Code)
^Home::Send "^{Home}"      ; Ctrl+Home = Start of document
^End::Send "^{End}"        ; Ctrl+End = End of document
#Up::Send "^{Up}"          ; Option+Up = Jump paragraph up
#Down::Send "^{Down}"      ; Option+Down = Jump paragraph down

; -------------------------------
; VS Code + Cursor IDE Shortcuts
; -------------------------------
#HotIf WinActive("ahk_exe Code.exe") || WinActive("ahk_exe Cursor.exe")

!+p::Send "^+p"            ; Cmd+Shift+P = Command Palette
!`::Send "^``"             ; Cmd+` = Toggle Terminal
!b::Send "^b"              ; Cmd+B = Toggle sidebar
!e::Send "^e"              ; Cmd+E = Quick Open/Find (fixed)
!+e::Send "^+e"            ; Cmd+Shift+E = Explorer (fixed)

!/:: {
    Send "^/"              ; Cmd+/ = Toggle line comment
    return
}

; Fixed duplicate line shortcuts
!+Down::Send "^+d"         ; Cmd+Shift+Down = Duplicate line down
!+Up::Send "^+d"           ; Cmd+Shift+Up = Duplicate line up (same as down in VS Code)

; VS Code specific Option+Arrow for moving lines
#Up::Send "!{Up}"          ; Option+Up = Move line up
#Down::Send "!{Down}"      ; Option+Down = Move line down

; VS Code specific Option+Shift+Arrow for duplicating lines
#+Down::Send "!+{Down}"    ; Option+Shift+Down = Duplicate line down
#+Up::Send "!+{Up}"        ; Option+Shift+Up = Duplicate line up

+!g::Send "^+g"            ; Cmd+Shift+G = Source Control
!+a::Send "^+a"            ; Cmd+Shift+A = Toggle block comment

!p::Send "^p"              ; Cmd+P = Quick Open
+!o::Send "^+o"            ; Cmd+Shift+O = Go to symbol in file

!Enter::Send "{F12}"       ; Cmd+Enter = Go to Definition
!k::Send "^k ^{F12}"       ; Cmd+K = Peek Definition

!r::Send "{F2}"            ; Cmd+R = Rename Symbol

!+f::Send "^+f"            ; Cmd+Shift+F = Find in Files
!+d::Send "^+d"            ; Cmd+Shift+D = Duplicate selection

; Format Document
!+i::Send "^+i"            ; Cmd+Shift+I = Format Document

!\::Send "^\\"             ; Cmd+\ = Split Editor
!1::Send "^1"              ; Cmd+1 = Focus first editor group
!2::Send "^2"
!3::Send "^3"

!m::Send "^+["             ; Cmd+M = Fold
!+m::Send "^+]"            ; Cmd+Shift+M = Unfold

!j::Send "^+m"             ; Cmd+J = Problems Panel
!g::Send "^g"              ; Cmd+G = Go to Line

#HotIf