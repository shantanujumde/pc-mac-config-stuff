#Requires AutoHotkey v2.0

; Comprehensive Mac-like Shortcut Mapping for Windows

; Copy, Cut, Paste, Select All
!c::^c
!x::^x
!v::^v
!a::^a

; Save, New, Open, Close, Print
!s::^s
!n::^n
!o::^o
!p::^p
!w::^w

; Undo, Redo
!z::^z
!+z::^y

; Text Navigation
!Left::Send "{Home}"
!Right::Send "{End}"
!Up::Send "^{Home}"
!Down::Send "^{End}"

; Text Selection
!+Left::Send "+{Home}"
!+Right::Send "+{End}"
!+Up::Send "^+{Home}"
!+Down::Send "^+{End}"

; Text Formatting
!b::^b  ; Bold
!i::^i  ; Italic
!u::^u  ; Underline

; Application Management
!q::Send "!{F4}"        ; Quit application
!h::Send "^m"           ; Minimize window
!f::Send "^f"           ; Find
!+f::Send "^+f"         ; Find in page/advanced find (Cmd+Shift+F)

; Browser and Tab Management
!t::Send "^t"           ; New tab
!+t::Send "^+t"         ; Reopen last closed tab
!r::Send "^r"           ; Refresh
!l::Send "^l"           ; Focus address bar
!]::Send "^{Tab}"       ; Next tab
![::Send "^+{Tab}"      ; Previous tab

; Screenshots
!+3::Send "#+s"         ; Screenshot

; Window Switching
LAlt & Tab::AltTab

; Spotlight/Search Equivalent
!Space::Send "^{Space}"

; Additional Browser/App Shortcuts
!+]::Send "^{PgDn}"     ; Next Tab in some apps
!+[::Send "^{PgUp}"     ; Previous Tab in some apps

; Developer Tools
!+i::Send "^+i"         ; Open Developer Tools
!+c::Send "^+c"         ; Inspect Element

; Prevent default Windows shortcuts from interfering
#HotIf