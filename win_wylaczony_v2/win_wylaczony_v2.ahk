; Pierwsze trzy zmienne są modyfikowane w zależności od komputera, należy również podmienić pierwszy #Include znajdujący się poniżej
; Przydałoby się stworzyć oddzielny skrypt do zmieniania poniższych #Includów, aby przebiegało to jak najszybciej (że jest zmienna i to podmienia)
skrypt := "C:\Users\Nowe Konto 2\Desktop\ahk_scripts\win_wylaczony_v2\" ; tam znajdują się wszelkie utworzone skrypty
Edytor := "D:\Mati\Aplikacje\VSCode\Microsoft VS Code\Code.exe" ; zazwyczaj to będzie VSCode, ew. Notepad
Editor_window := "ahk_exe Code.exe" ; nazwa okna edytora na którym działasz (przeważnie VSCode)

win := A_ScriptFullPath
emotki := "emotki.ahk" 
Notipad := "Notipad.ahk"
Reszta := "Reszta.ahk" 
language := "language\"
AHK_Doc := skrypt "AutoHotkey.chm" ; AutoHotkey Documentation 

if (A_AhkVersion != "2.0.4")
    MsgBox "Uwaga - nie wykryłem wersji AHK v2.0.4. [8th August 2023] Miej się na baczności"

:X*:godouu::Run "D:\Mati\Aplikacje\GODOT\Godot_v4.1.1-stable_win64.exe"

;czas()
version() {
	MyGui := Gui()
	MyGui.Opt("+AlwaysOnTop -Caption +ToolWindow")  ; +ToolWindow avoids a taskbar button and an alt-tab menu item.
	MyGui.BackColor := "FAFA00"  ; Can be any RGB color (it will be made transparent below).
	MyGui.SetFont("s50")  ; Set a large font size (32-point).
	CoordText3 := MyGui.Add("Text", "cYellow", "XXXXXXXXXXXXXX YY")  ; XX & YY serve to auto-size the window.
	CoordText3.Value := " win_w " A_Hour ":" A_Min
	; Make all pixels of this color transparent and make the text itself translucent (150):
	WinSetTransColor(MyGui.BackColor " 230", MyGui)
	MyGui.Show("x01450 y50 NoActivate")  ; NoActivate avoids deactivating the currently active window, pierwsze dwie zmienne to są koordynaty gdzie jest umieszczony tekst
}
FillLeft(Text, Width, Character) {
    Length := StrLen(Text)
    Loop Width - Length
    Text := Character Text
    Return Text
}
czas() {
	MyGui := Gui()
	MyGui.Opt("+AlwaysOnTop -Caption +ToolWindow +Disabled")  ; +ToolWindow avoids a taskbar button and an alt-tab menu item.
	MyGui.BackColor := "16AD1A"  ; Can be any RGB color (it will be made transparent below).
	MyGui.SetFont("s50", "Consolas")  ; Set a large font size (32-point).
    CzasDzien := A_DD "." A_MM " " A_DDDD
    MaxChar := 18
    CzasDzien := FillLeft(CzasDzien, MaxChar, A_Space)
    CzasTrwaniaValue := floor(A_TickCount / 1000 / 3600) ":" Format("{:02}", round(mod(A_TickCount / 1000 / 60, 60), 0)) " godziny"
    CzasTrwaniaValue := FillLeft(CzasTrwaniaValue, MaxChar, A_Space)
	KolorTekstu := "c05ff22 Right"
    CzasTrwania := MyGui.Add("Text", KolorTekstu, CzasTrwaniaValue)  ; XX & YY serve to auto-size the window.
    DzienPokaż := MyGui.Add("Text", KolorTekstu, CzasDzien)  ; XX & YY serve to auto-size the window.
    ;AktualnyCzas := MyGui.Add("Text", "cLime", "XXXXXXXXXXXXXX YY")  ; XX & YY serve to auto-size the window.
	; Make all pixels of this color transparent and make the text itself translucent (150):
	WinSetTransColor(MyGui.BackColor " 150", MyGui)
	SetTimer(UpdateOSD, 1000)
	UpdateOSD()  ; Make the first update immediate rather than waiting for the timer.
    MyGui.Title := "CzasDzien" 
	MyGui.Show("x01150 y800 AutoSize NA")  ; NoActivate avoids deactivating the currently active window, pierwsze dwie zmienne to są koordynaty gdzie jest umieszczony tekst
UpdateOSD(*) 
{
	godzinas := "" A_Hour ":" A_Min ":" A_Sec
	CzasTrwania.Value := floor(A_TickCount / 1000 / 3600) ":" Format("{:02}", round(mod(A_TickCount / 1000 / 60, 60), 0)) " godziny"
	;Dzien.Value := A_DD "." A_MM " " A_DDDD
    ;AktualnyCzas.Value := "          " godzinas
}
}

Toogle := 0
#MaxThreadsPerHotkey 2
;vke2::Shift
vke2::{
	global Toogle
	Toogle := !Toogle
	while Toogle {
		Click 1400, 644
		Sleep 100
	}
}

:X*:genshina::Run "D:\Mati\Gry\Epic Games\GenshinImpact\launcher.exe"
:X*:soundup::SoundSetVolume "+3" 

text := 
(
"
OK_LayoutBegin
Name:BEAKL422RU
1234567890[]
цыоуьшглпя;=
хиеаждстнр-
з.,к/вчмбй––
<>#$%^&*(){}
ЦЫОУЬШГЛПЯ:+
ХИЕАЖДСТНР
З.,К/ВЧМБЙ––
x
x
x
x
1234567890[]
цыюуъщщлпя;=
хиёафдстнр-
э.,к/вчмбй––
OK_Layout_End
"
)
:*:aaaeaee::{
	global text
	A_Clipboard := RegExReplace(Text, " ", "") ; RegExReplace
}

#SingleInstance Force
#Hotstring EndChars `n
#Hotstring NoMouse 
TraySetIcon "Shell32.dll", 199
#Requires AutoHotkey v2.0.0
#Include C:\Users\Nowe Konto 2\Desktop\ahk_scripts\win_wylaczony_v2\
#Include emotki.ahk
#Include Notipad.ahk
#Include Reszta.ahk