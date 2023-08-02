#SingleInstance Force
#InputLevel 1
A_ScriptName := StrReplace(A_ScriptName, ".ahk")
ScriptLong := StrLen(A_ScriptName)

goBack := WinActive("A")

MyGui := Gui()
MyGui.Opt("AlwaysOnTop ToolWindow")
MyGui.SetFont("s18") 
MyGui.Add("Text", "BackgroundTrans x15 y10", A_ScriptName) ; podaj nazwe skryptu
MyGui.BackColor := "0C5A0E" 
MyGui.Show
Times := 9 * 2
MyGui.Move(1580-ScriptLong*Times, 820, ScriptLong*Times, 52)
WinSetStyle "-0xC00000", "A"

Sleep 30
WinActivate(goBack)

:*:pkill::{
    Sleep 20
    MsgBox A_ScriptName " OFF",, "T0.3"
    ExitApp
}