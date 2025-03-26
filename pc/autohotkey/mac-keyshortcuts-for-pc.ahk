#Requires AutoHotkey v2.0

; Modifier Key Mapping
; Comprehensive Mac-like Shortcut Mapping for Windows

; Copy, Cut, Paste, Select All
!c::^c
!x::^x
!v::^v
!a::^a

; Save, New, Open, Close
!s::^s
!n::^n
!o::^o
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

; Application Management
!q::Send "!{F4}"        ; Quit application
!h::Send "^m"           ; Minimize window
!f::Send "^f"           ; Find

; Browser and Tab Management
!t::Send "^t"           ; New tab
!+t::Send "^+t"         ; Reopen last closed tab (Cmd+Shift+T)
!r::Send "^r"           ; Refresh
!l::Send "^l"           ; Focus address bar
!]::Send "^{Tab}"       ; Next tab
![::Send "^+{Tab}"      ; Previous tab

; Screenshots
!+3::Send "#+s"         ; Screenshot
!+4::Send "#+s"         ; Screenshot

; Window Switching
LAlt & Tab::AltTab

; Spotlight/Search Equivalent
!Space::Send "^{Space}"

; Prevent default Windows shortcuts from interfering
#HotIf