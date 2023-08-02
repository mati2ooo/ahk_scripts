#HotIf WinActive(Editor_window) 
;`:: WinClose ; dotyczy Mizara
~^i:: riload()
~^s:: riload()
riload() { 
	Sleep 10 
	MsgBox "Reload of win_v2",, "T0.45"
	Reload
}

XButton1:: Send "^," ; dalszy boczny guzik myszy
mysz_poz := 0    ; dla funkcji „mpos”
:*:mpos::{
	global mysz_poz
	if (mysz_poz = 0)
	{
		SendText "MouseGetPos &xpos, &ypos"
		mysz_poz += 1
	}
	else if (mysz_poz = 1)
	{
		SendText "MouseMove xpos, ypos"
		mysz_poz := 0
	} }
:*C:mof:: {
	dane_myszki := StrSplit(A_Clipboard, ",")
	wsp_myszki := "Click " dane_myszki[1] "," dane_myszki[2]
	Send wsp_myszki
}
:*b0C:muf:: {
	dane_myszki := StrSplit(A_Clipboard, ",")
	wsp_myszki := "(" dane_myszki[1] "," dane_myszki[2] ")"
	Send wsp_myszki "{Enter}"
}
muf(x, y, z := 20) {	; MUF, głównie stosowany w Robloxie
	Click x, y	; Pozycja kursora (natychmiastowo klika)
	Click x+1, y
	Sleep z
}
:*b0C:lmof:: {
	dane_myszki := StrSplit(A_Clipboard, ",")
	wsp_myszki := "(" dane_myszki[1] "," dane_myszki[2] ")"
	Send wsp_myszki
}
lmof(x, y, z := 20) {	; funkcja MOF, bardzo użyteczna ;)
	MouseGetPos &xpos, &ypos
	Click x, y	; Pozycja kursora (natychmiastowo klika)
	Sleep z
	MouseMove xpos, ypos
} 
:X*:mmof:: Send "MouseMove " A_Clipboard

:X*:github:: Run "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Microsoft Edge.lnk https://github.com/Wutus/ff" 
:*:mess:: { 
	Tresc := InputBox("Podaj treść MsgBoxa", , "w100 h100").Value
	Czas := InputBox("Podaj ile ma trwać sekund; Kliknij enter, jeśli ma się nie zamykać", , "w100 h130",).Value
	If (Czas != "") {
		Send "MsgBox `"" Tresc "`",, `"T" Czas "`""
		Sleep 40
	} else Send "MsgBox `"" Tresc "`""
}
:X*:acli:: Send A_Clipboard
:*:editor::{
    Sleep 20
    Nazwa := InputBox("Podaj nazwę pliku ahk jaki chcesz dodać do uruchamiania").value
    SendText "Edytor_" Nazwa " := '`"' Edytor '`" `"' skrypt " Nazwa " '`"'"
}
:*:testxx::{
    FileObj := FileOpen(skrypt Reszta, "r")
    FileObj.Seek(1000)  
    TextLine := FileObj.Length 
    MsgBox TextLine 
} 

:*:nahk:: { 
    plik_ahk := InputBox("Podaj nazwę nowego skryptu (bez .ahk)")
	if plik_ahk.Result = "Cancel" { 
	MsgBox "Anulowałeś polecenie", , "T0.45"
	Return 
} else 
    plik_ahk := skrypt plik_ahk.value ".ahk"  
    MsgBox plik_ahk
    FileAppend "`n", plik_ahk  
}

:X*:ilesys::MsgBox round(A_TickCount / 1000 / 3600, 0) ":" Format("{:02}", round(mod(A_TickCount / 1000 / 60, 60), 0)) " godziny"

/*
:*b0:kolorek:: {
	dane_koloru := StrSplit(A_Clipboard, ",")
	;k := Integer(dane_koloru[3])
    ;MsgBox 
	wsp_koloru := "(" dane_koloru[1] "," dane_koloru[2] "," StrReplace(dane_koloru[3], "`"", "") ")"
	Send wsp_koloru
}
:*:koloreu:: {
	dane_koloru := StrSplit(A_Clipboard, ",")
	;k := Integer(dane_koloru[3])
    ;MsgBox 
	wsp_koloru := "koloreku(" dane_koloru[1] "," dane_koloru[2] "," StrReplace(dane_koloru[3], "`"", "") ")"
	Send wsp_koloru
}
kolorek(xpos, ypos, Kolor) {
	Loop {
		Sleep 100
		if PixelSearch(&Px, &Py, xpos, ypos, xpos + 100, ypos + 100, Kolor, 3)
			;MsgBox Current_Color,, "T0.6"
		{
			Click xpos, ypos	;  a tu jaką ma wykonać czynność
			Current_Color := ""
			Break
		} } }
koloreku(xpos, ypos, Kolor) {
	Loop {
		Sleep 100
		if PixelSearch(&Px, &Py, xpos, ypos, xpos + 100, ypos + 100, Kolor, 3)
			;MsgBox Current_Color,, "T0.6"
		{
			Sleep 300
			MouseMove xpos, ypos ;  a tu jaką ma wykonać czynność
			Click xpos + 1, ypos - 1
			Current_Color := ""
			Break
		} } } 