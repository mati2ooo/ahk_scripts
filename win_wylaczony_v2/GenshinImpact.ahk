#HotIf WinActive("ahk_exe GenshinImpact.exe")
:*:1234::{
Send "!{F4}"
MsgBox "Wyłączam Genshina 1234",, "T2"
}
XButton1:: ; do szybkiego tpania na mapie, dolny boczny guzik myszki
{
MouseGetPos &xpos, &ypos
Sleep 220
mof(xpos, ypos)
Sleep 220
mof(1302, 842)
Sleep 20
MouseMove xpos, ypos
}
#MaxThreadsPerHotkey 2
XButton2:: ; do sprintowania, górny boczny przycisk myszki
{
global Sprint 
Sprint += 1
Send "{y down}"
    While (Sprint == 1)
	{
	Click "Right" 
    Sleep 850
    }
if (Sprint == 2) 
{
	Sprint := 0
}}
#MaxThreadsPerHotkey 2
/:: ; do skipowania dialogów
{
global SkipDialogue
SkipDialogue += 1
    While (SkipDialogue == 1)
	{
	Click 1137, 646 ; idealna pozycja klikania gdzie pojawia się opcja kontynuacji dialogu
    Sleep 100
    }
if (SkipDialogue == 2) 
{
	SkipDialogue := 0
}}
Collector := 0
x::
{
global Collector
Collector += 1
    While (Collector == 1)
	{
	Send ","
	Sleep 50
    }
if (Collector == 2) 
{
	Collector := 0
}}
:*:odb::
{
Loop 4
{
mof(1408, 849)
mof(885, 754, 1800)
Sleep 100
}}
:*:daj::
{
mof(340, 241)
Sleep 20
Loop 4
{
MouseMove 1305, 559
Loop 5
{
Click
Sleep 11
}
mof(1407, 838, 25)
Sleep 30
}}
:*:9::
{
mof(1381, 643)
mof(1348, 855)
mof(887, 695, 3000)
}
:*:0::{ ; to do Dispatchowania postaci, IN PROGRESS
MouseGetPos &xpos, &ypos
;mof(148, 137) ; Mondstadt
;mof(615, 450) ; Bennett
;mof(934, 376) ; Amber
;mof(975, 503) ; Noelle
;mof(483, 675) ; Yamazaki
mof(792, 313) ; Kaeya
mof(1380, 851, 200) ; potrójne kliknięcie przy odbiorze/wyborze postaci
mof(1380, 851, 200)
mof(1380, 851, 200)
mof(548, 221, 300) ; Noelle_2
mof(572, 308, 300) ; Kaeya_2 
mof(554, 133, 300) ; wybór danej postaci
MouseMove xpos, ypos
}