#SingleInstance Force
MyGui := Gui()
move := 50
ByNumber := 10
ChangeMove(number) {
    global move
    move := move + number
    if move < ByNumber
        move := ByNumber
    MyGui.Add("Text", "BackgroundTrans x15 y10", move) ; podaj nazwe skryptu
    MyGui.Show
}

Show() { ; 
global MyGui
MyGui := Gui()
MyGui.Opt("AlwaysOnTop ToolWindow")
MyGui.SetFont("s18") 
MyGui.Add("Text", "BackgroundTrans x15 y10", move) ; podaj nazwe skryptu
MyGui.BackColor := "0C5A0E" 
MyGui.Show
Times := 9 * 2
MyGui.Move(1500, 820, 60, 52)
WinSetStyle "-0xC00000", "A"
}
Show()
x:: ChangeMove(-ByNumber) ; 
o:: ChangeMove(ByNumber)
h::MouseMove -move, 0,, "R"
e::MouseMove move, 0,, "R"
i::MouseMove 0, move,, "R"
y::MouseMove 0, -move,, "R"
a::Click
f::Click "Right" ; 

A_ScriptName := StrReplace(A_ScriptName, ".ahk")
:?*:123::{
    Sleep 20
    MsgBox A_ScriptName " OFF",, "T0.3"
    ExitApp
}