
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
 
:CX*:beakL::Send "(Balanced Effortless Advanced Keyboard Layout)"

:?*:pokę::{
	Send "@Pokétwo"
	Sleep 300
	Send "{tab}h{enter}"
	Sleep 300
	Send "@Pokétwo"
	Sleep 300
	Send "{tab}c "
}
;x::WinSetStyle "-0x595959", "A" ; 441, 256, "0x595959"

; Boosteria, eloking, myboosting.gg
:*:shapoba::chapeau bas ; 
:X*:elol::Run "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Riot Games\League of Legends.lnk"

:*:calca::{
	a := 2
	Msgbox "Twój wynik to jest: " a
}

:*:aaEhhi::{
	Loop {
	tyle := 1
	BlockInput 1 ; Bez BlockInput 0 NIE URUCHAMIAJ (na końcu skryptu)
	MouseGetPos &xpos, &ypos
	First := WinGetTitle("A")
	WinActivate("ahk_exe Discord.exe")
	Send "Test{Enter}"
	Sleep tyle
	WinActivate(First)
	MouseMove xpos, ypos
	BlockInput 0
	Sleep 110000
	}
}
nawache() {
	ile := InputBox("Ile wyścigów chcesz porobić?")
    if ile.result = "Cancel" { 
		MsgBox "Anulowałeś polecenie", , "T0.45"
		Return
	} 
	start := [A_Hour, A_Min, A_Sec]
	Loop {
		if (A_Index > ile.value) {
			Loop {
				if PixelSearch(&Px, &Py, 609, 449, 609, 450, 0x303343, 5) {
					odcinek := [A_Hour, A_Min, A_Sec]
					czas := odcinek[1] * 3600 + odcinek[2] * 60 + odcinek[3] - (start[1] * 3600 + start[2] * 60 + start[3])
					średnio := floor(czas / ile.value)
					if (czas > 60)
						czas := floor(czas / 60) ":" Format("{:02}", ceil(mod(czas, 60)))
					else czas := "0:" Format("{:02}", czas)
					if (średnio > 60)
						średnio := floor(średnio / 60) ":" Format("{:02}", ceil(mod(średnio, 60)))
					else średnio := "0:" Format("{:02}", średnio)
					MsgBox "Finalnie wykonałeś " ile.value " wyścigów. W sumie Ci to zajęło: " czas " minut, średnio na wyścig: " średnio " minut"
					return
				} } }
		licz := A_Index - 1
		Loop {
			if PixelSearch(&Px, &Py, 609, 449, 609, 450, 0x303343, 5) {
				;starcik(licz, ile.value, start)
				Sleep 25000
				break
} } } }
:*:testiii::{
	Coordmode "Mouse", "Screen"
	MouseGetPos &xpos, &ypos 
	Click 269, 18
	WinWait("OnTopReplica") 
	WinActivate("OnTopReplica")
	Coordmode "Mouse", "Window"
	Sleep 100
	poz := 50
	Click poz, poz, "Right"
	Sleep 100
	poz += 5 
	MouseMove poz, poz 
	;MouseMove xpos, ypos 
	X := 611 ; 
	Y := 437
	Width := 793 
	Height := 603

}

#MaxThreadsPerHotkey 2
:*:aa/::{ ; AutoClicker na przełącznik
	Static Toggle := false
	Toggle := !Toggle
	SetTimer(Click, Toggle ? 80 : 0)
}

:*:ffy::{
	CoordMode("Mouse", "Screen")
	MouseGetPos &xpos, &ypos
	Click 270, 20
	zzz := 500
	oo := 1.4
	WinWait("OnTopReplica")
	WinMove 458, 140, 790 * oo, 596 * oo, "OnTopReplica"
	pos := [540, 380]
	Click pos[1], pos[2], "Right"
	Sleep zzz
	MouseMove pos[1] + 10, pos[2] + 10
	Sleep zzz
	MouseMove pos[1] + 200, pos[2] + 40
	Sleep zzz
	Click pos[1] + 630, pos[2] + 70
	Sleep zzz
	Click pos[1], pos[2], "Right"
	Sleep zzz
	Click pos[1] + 10, pos[2] + 160
	Sleep zzz
	Click
	Sleep zzz/5
	Click 405, 304
}
:X*:iiif::WinMove 458, 180, 790 * 1.4, 596 * 1.4, "OnTopReplica"
StartRace() {
	if PixelSearch(&Px, &Py, 417, 376, 417, 376, 0x303343, 0) {
		Send "{Enter}"
		Shifto()
	}
}
#HotIf WinActive("Race Now - 100% Free | Nitro Type — LibreWolf")
wyscigi(show, average, count){
	ScriptLong := StrLen(A_ScriptName)
	goBack := WinActive("A")
	Times := 18
	MyGui := Gui()
	MyGui.Opt("AlwaysOnTop ToolWindow")
	MyGui.SetFont("s18")
	Message1 := "Time of the race: " show " seconds; Average: " average " seconds; " 
	Message2 := count " races in total"
	MyGui.Add("Text", "BackgroundTrans x15 y10 R2", Message1) ; podaj nazwe skryptu
	MyGui.Add("Text", "BackgroundTrans x15 y40 R2", Message2) ; podaj nazwe skryptu
	MyGui.BackColor := "0x086315"
	MyGui.Show
	MyGui.Move(700, 500, 700, 104)
	WinSetStyle "-0xC00000", "A"
	WinSetTransparent 120, "A"
	Sleep 30
	WinActivate(goBack)
	Sleep 5000
	MyGui.Destroy()
	}
:*:iixxf::{
	CoordMode("Pixel", "Screen")
	count := 0
	total := 0
	start := A_TickCount - 40000 ; 41, 74, "0x1C99F4"
	Cord := [469, 192, 1551, 1021]
	Kolor := [0x1C99F4, 0xD62F3A]
	Loop { 
	blue1 := PixelSearch(&Px, &Py, Cord[1], Cord[2], Cord[3], Cord[4], Kolor[1], 0)
	red1 := PixelSearch(&Px, &Py, Cord[1], Cord[2], Cord[3], Cord[4], Kolor[2], 0)
	Sleep 200
	blue2 := PixelSearch(&Px, &Py, Cord[1], Cord[2], Cord[3], Cord[4], Kolor[1], 0)
	red2 := PixelSearch(&Px, &Py, Cord[1], Cord[2], Cord[3], Cord[4], Kolor[2], 0)
	Sleep 200
	
	end := A_TickCount
	if blue1 = 0 && red1 = 0 && blue2 = 0 && red2 = 0 {
		count += 1
		Send "{Ctrl down}{U down}{U up}{Ctrl up}" 
		show := Round((end - start)/ 1000, 3)
		total += show
		average := Round(total / count, 3) 
		start := A_TickCount ; 34, 377, "0x086315"
		;MsgBox "Time of the race: " show " seconds; Average: " average " seconds; " count " races in total",, "4096 T5"
		wyscigi(show, average, count)
		Shifto()
		Sleep 23000
	}}}

#HotIf WinActive("ahk_exe msedge.exe") 
~a::StartRace()
~e::StartRace()
~space::StartRace() 
#HotIf WinActive("Vampire Survivors") 
z::Click 800, 573
.::Click 800, 477
,::Click 800, 311
a::Click 800, 759 
k::Click 800, 711
x::Escape

#SingleInstance Force
#Hotstring EndChars `n
#Hotstring NoMouse 
TraySetIcon "Shell32.dll", 199
#Requires AutoHotkey v2.0.0
#Include C:\Users\Nowe Konto 2\Desktop\ahk_scripts\win_wylaczony_v2\ ; tutaj podmienić ścieżkę do folderu z skryptami
#Include emotki.ahk
#Include Notipad.ahk
#Include Reszta.ahk