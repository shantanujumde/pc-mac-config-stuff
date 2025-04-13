#Requires AutoHotkey v2.0
; Key Map
; win = options
; ctrl = ctrl
; alt = cmd
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

; Word Navigation (Option/Alt + Arrow)
; In Windows, Ctrl+Arrow moves by word, so Win key (Mac's Option) maps to Ctrl for this
#Left::Send "^{Left}"     ; Option+Left = Move cursor one word left
#Right::Send "^{Right}"   ; Option+Right = Move cursor one word right
; Word Selection (Option/Alt + Shift + Arrow)
#+Left::Send "^+{Left}"   ; Option+Shift+Left = Select one word left
#+Right::Send "^+{Right}" ; Option+Shift+Right = Select one word right

; Delete word and line shortcuts
#BS::Send "^{BS}"         ; Option+Backspace = Delete word to the left
!BS::Send "^{BS}"         ; Cmd+Backspace = Delete word to the left (alternative)
!Delete::Send "{Home}+{End}{Delete}" ; Cmd+Delete = Delete whole line

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

; VSCode Specific Shortcuts
!d::Send "^d"   ; Cmd+D = Add Next Occurrence (Multi-cursor)
!+l::Send "^+l" ; Cmd+Shift+L = Select All Occurrences
!+r::Send "^+r" ; Cmd+Shift+R = Replace in Files
; Cmd+Click Functionality (Open in New Tab/Window)
!LButton::Send "^{LButton}"  ; Cmd+Click = Ctrl+Click (Open in New Tab)

; ADDITIONAL ARROW KEY SHORTCUTS

; Basic Arrow Navigation (already covered by default Windows behavior)
; Left, Right, Up, Down arrows work the same on both Mac and Windows

; Shift + Arrow Keys (Select characters)
; These also work the same by default on both Mac and Windows
; +Left::Send "+{Left}"    ; Shift+Left = Select one character left
; +Right::Send "+{Right}"  ; Shift+Right = Select one character right
; +Up::Send "+{Up}"        ; Shift+Up = Select one line up
; +Down::Send "+{Down}"    ; Shift+Down = Select one line down

; Ctrl modifier (Cmd on Mac) for paragraph navigation
^Up::Send "{PgUp}"         ; Ctrl+Up = Page Up (similar to Mac's Cmd+Up in some contexts)
^Down::Send "{PgDn}"       ; Ctrl+Down = Page Down (similar to Mac's Cmd+Down in some contexts)

; Ctrl+Shift modifier for paragraph selection
^+Up::Send "+{PgUp}"       ; Ctrl+Shift+Up = Select to Page Up
^+Down::Send "+{PgDn}"     ; Ctrl+Shift+Down = Select to Page Down

; Option+Shift+Up/Down (Mac) for extended line selection
#+Up::Send "+{Up}"         ; Option+Shift+Up = Extend selection upward
#+Down::Send "+{Down}"     ; Option+Shift+Down = Extend selection downward

; Document Start/End (Mac shortcut variations)
^Home::Send "^{Home}"      ; Ctrl+Home = Beginning of document
^End::Send "^{End}"        ; Ctrl+End = End of document

; Paragraph movement (Option+Up/Down on Mac)
#Up::Send "^{Up}"          ; Option+Up = Move to beginning of paragraph/code block
#Down::Send "^{Down}"      ; Option+Down = Move to end of paragraph/code block

; Prevent default Windows shortcuts from interfering
#HotIf