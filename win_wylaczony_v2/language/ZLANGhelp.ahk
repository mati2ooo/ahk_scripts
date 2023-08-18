#SingleInstance Force
#InputLevel 1
A_ScriptName := StrReplace(A_ScriptName, ".ahk")
ScriptLong := StrLen(A_ScriptName)

goBack := WinActive("A")

MyGui := Gui()
MyGui.Opt("AlwaysOnTop ToolWindow")
MyGui.SetFont("s18") 
MyGui.Add("Text", "BackgroundTrans x15 y10", A_ScriptName) ; podaj nazwe skryptu
MyGui.BackColor := "c3e7e40" 
MyGui.Show
Times := 9 * 2
MyGui.Move(1900-ScriptLong*Times, 790, ScriptLong*Times, 52)
WinSetStyle "-0xC00000", "A"

Sleep 30
WinActivate(goBack)

:*:pkill::{
    Sleep 20
    MsgBox A_ScriptName " OFF",, "T0.3"
    ExitApp
}