#MaxThreadsPerHotkey 2
#SingleInstance Force

; Keybind is control shift M

; Config
delay := 10
button := "Left"

Toggle := false

^+M::{
    global Toggle := !Toggle
    
    While Toggle
    {
        MouseClick(button)
        Sleep(delay)
    }
    return
}
