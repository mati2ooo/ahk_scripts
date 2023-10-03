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

:Xb0*:BEAKL::Send " (Balanced Effortless Advanced Keyboard Layout)"
start := [A_Hour, A_Min, A_Sec]
~z::{
	global start
	if PixelSearch(&Px, &Py, 670, 410, 670, 460, 0x303343, 3) {
		odcinek := [A_Hour, A_Min, A_Sec]
		start2 := [A_Hour, A_Min, A_Sec]
		czas := odcinek[1] * 3600 + odcinek[2] * 60 + odcinek[3] - (start[1] * 3600 + start[2] * 60 + start[3])
		if (czas > 60)
			czas := floor(czas / 60) ":" Format("{:02}", ceil(mod(czas, 60)))
		else czas := "0:" Format("{:02}", czas)
		Send "{Enter}"
		MsgBox czas,, "T3"
		Shifto()
		start := start2
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

#SingleInstance Force
#Hotstring EndChars `n
#Hotstring NoMouse 
TraySetIcon "Shell32.dll", 199
#Requires AutoHotkey v2.0.0
#Include C:\Users\Nowe Konto 2\Desktop\ahk_scripts\win_wylaczony_v2\
#Include emotki.ahk
#Include Notipad.ahk
#Include Reszta.ahk