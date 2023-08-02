#HotIf
Appskey:: return	; to jest praktycznie OG
SetCapsLockState "AlwaysOff"
`::Escape
:X*:riload:: riload()
OnExit Failsafey 
Failsafe() {
	Run "C:\Users\Nowe Konto 2\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup"
	;Gui +LastFound +OwnDialogs +AlwaysOnTop
	MsgBox "Wyłączyłeś Appskey :: Return !!! v2 tho `;)", , "T1.5"
	ExitApp
}
Failsafey(ExitReason, ExitCode)
{
	if (ExitReason != "Reload") and (ExitReason != "Exit") {
	Run "C:\Users\Nowe Konto 2\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup"
	;Gui +LastFound +OwnDialogs +AlwaysOnTop
	MsgBox "Skrypt win_wylaczony_v2.ahk został nagle wyłączony!", , "T2.5"
	return 0
}}
^+1:: Failsafe() 
^1:: Failsafe() 
vke2::Shift
wina(){ ; TU JEST WINEK JAK COŚ, POLECAM SIĘ 🤣
	if not WinExist("ahk_exe Code.exe") {
	Sleep 30
	Run A_ScriptFullPath
	MsgBox "Przyjąłem, cierpliwości...",, "T1.5" 
	} else Run A_ScriptFullPath
}
OdpalEdytor(plik) {
	Global Edytor, skrypt
	Run '"' Edytor '" "' skrypt plik ".ahk" '"'  ; TEGO TRZEBA PILNOWAĆ, TO DLA NAS ZŁOTO
}
OdpalWina() {
	Global Edytor
	Run '"' Edytor '" "' win '"' 
} 
:XC*:winw:: OdpalWina()
:XC*:wniw:: OdpalWina()
:XC*:nsln:: OdpalWina()  ; winw for QWERTY
:X*:emota:: OdpalEdytor("emotki") 
:X*:reshta:: OdpalEdytor("Reszta")
:X*:notipad:: OdpalEdytor("Notipad")
:X*:plove:: OdpalEdytor("polen")
:X*:pmas:: OdpalEdytor("mouse") 
LaunchApp(app) {
	Run skrypt app ".ahk"
}
:X*:spyy::LaunchApp("WindowSpy")
:X*:kspy::WinClose "Window Spy for AHKv2"
:X?*:maus::LaunchApp("mouse") 
LaunchLang(jezyk1) {
	Run skrypt language jezyk1 ".ahk"
}
:X*:ppol::LaunchLang("polen")
:X*:pdun::LaunchLang("dunski")
:X*:pwlos::LaunchLang("wloski")
:X*:pger::LaunchLang("german")
:X*:ppor::LaunchLang("portu")
:X*:pgre::LaunchLang("greek")
:X*:pross::LaunchLang("ruski")
:X*:pruss::LaunchLang("ruski")
:X*:pzdun::Run '"' Edytor '" "' skrypt language "ZLANGhelp.ahk" '"' 

:X*:cmda:: Run "cmd.exe"
TekstCMD(Tekst, Time := 0) {
	Sleep Time
	SendText Tekst
	Send "{enter}"
}
:*:sendcmd::{ 
	CommitMessage := InputBox("Podaj wiadomość do commita",, "W150 H100")
	if CommitMessage.Result = "Cancel" 
		MsgBox "Anulowałeś polecenie", , "T0.45"
	else {
		Run "cmd.exe"
		TekstCMD("cd ..", 500)
		TekstCMD('git commit -am "' CommitMessage.Value '"', 1000)
		TekstCMD("git push", 500)
		TekstCMD("exit", 500)
	} 
}
:*:rnts::{
	Run skrypt 
	WinWait "win_wylaczony_v2" 
	WinRestore "win_wylaczony_v2" 
	WinMove(850, 100,,, "win_wylaczony_v2")
}

:X*:diz::Run "C:\Users\Grzegorz\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Discord Inc\Discord.lnk"
:X*:dajtytul:: A_Clipboard := "#HotIf WinActive(`"" WinGetTitle("A") "`")"

launch_time := A_Hour ":" A_Min ; e.g "via BEAKL at 15:49"
^p:: MsgBox "via BEAKL at " launch_time
^o:: MsgBox "via QWERTY at " launch_time
/* 
\:: {	; służy do pozyskiwania pozycji kursora oraz koloru piksela
	;CoordMode "Mouse", "Screen" ; bazowo jest na okno
	MouseGetPos &xpos, &ypos
	Kolorek := PixelGetColor(xpos, ypos)
	;A_Clipboard := xpos ", " ypos ", " '"' Kolorek '"'
	A_Clipboard := xpos ", " ypos
	CoordMode "Mouse", "Window"
	if not WinExist(Editor_window) {
		Run win
		WinWait Editor_window
		WinActivate Editor_window
	} else WinActivate Editor_window 
	Sleep 100
	MouseMove 350, 590	; przemieszcza kursor na edytorze
}
*/

:*:hiea:: {  
	if not WinExist("ahk_class HH Parent") {
		Run AHK_Doc 
		WinWait "ahk_class HH Parent"
		WinRestore "A" 
		WinMove(700, 80,,, "ahk_class HH Parent")
		Sleep 50 
		Click 213, 22 
	}
	Sleep 50
	WinActivate "ahk_class HH Parent"
	Sleep 80
	Click 233, 67
	Sleep 100
}
:*:zoff::{
    Sleep 50
    Run "C:\Users\Grzegorz\Desktop\LCD_Off.exe" 
    WinWait "ahk_exe LCD_Off.exe"
    Sleep 1000
    Winclose "ahk_exe LCD_Off.exe"
}

CzyKomputer(tekst, numer){
	Sleep 50
	Result := MsgBox(tekst " komputer?",, "1")
	if Result = "OK" 
	Shutdown numer
}
:X*:porahie::CzyKomputer("Wyłączamy", 12) 
:X*:porapie::CzyKomputer("Ponownie uruchomić", 6) 
:*:poranie:: { 
	Sleep 50 
	Result := MsgBox("Usypiamy komputer?",, "1")
	if Result = "OK"
	DllCall("PowrProf\SetSuspendState", "Int", 0, "Int", 0, "Int", 0)
} 
gemail(cyfra) {
	Sleep 20
    Send "https://mail.google.com/mail/u/" cyfra "/#inbox{enter}"
}
:X?*:gl1::gemail(0)
:X?*:gl2::gemail(1) 
:X?*:gl3::gemail(2)
:X?*:gl4::Send "https://poczta.interia.pl/next/?uid=8e3cc46797dec2ba#/folder{enter}"
:X?*:messaa::Send "https://www.facebook.com/messages/t/100011857920384{enter}"
:X*:heker::Send "``````ahk{enter 2}``````{Up}" 
:X*:vv:: Send "^k"	; robi Ctrl + V (wersja Beakl) 
:X*:klipi::Msgbox A_Clipboard, "What's in Clipboard"  
:T?b0*:matimon::tfa@gmail.com 
:T?b0*:mat.k::luczyk@gmail.com
:X*:volium::MsgBox "Master volume is at " Round(SoundGetVolume(), 0) " percent." 
:X*:dataa::Send "[" A_DD "." A_MM ", godz. " A_Hour ":" A_Min "]"

:*:podai::{
    folder := InputBox("Wklej ścieżkę foldera, do którego chcesz przejść")
    if folder != "" 
    Run folder.value 
}

Shifto(tool := 0) {
	CoordMode "ToolTip", "Screen"
	If (tool = 0)
		ToolTip "Shift ON", 690, 460
	Send "{Shift down}"
	key := InputHook("L1, *")
	key.Start()
	key.Wait()
	Send key.Input
	ToolTip
	Send "{Shift up}"
}
vke2::Shift
#MaxThreadsPerHotkey 2 
RShift:: Shifto()
:XB0*?:. ::Shifto(1)
:*:––:: —   ; tak zwana pauza

:*:edh::{
    if not WinExist("ahk_exe msedge.exe")
    Run "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Microsoft Edge.lnk"
    else WinActivate "ahk_exe msedge.exe"
}

~MButton & LButton:: 
EWD_MoveWindow(*) 
{
    CoordMode "Mouse"  ; Switch to screen/absolute coordinates. A_DD
    MouseGetPos &EWD_MouseStartX, &EWD_MouseStartY, &EWD_MouseWin
    WinGetPos &EWD_OriginalPosX, &EWD_OriginalPosY,,, EWD_MouseWin
    if !WinGetMinMax(EWD_MouseWin)  ; Only if the window isn't maximized 
        SetTimer EWD_WatchMouse, 10 ; Track the mouse as the user drags it.

    EWD_WatchMouse()
    {
        if !GetKeyState("LButton", "P")  ; Button has been released, so drag is complete.
        {
            SetTimer , 0
            return
        }
        if GetKeyState("Escape", "P")  ; Escape has been pressed, so drag is cancelled.
        {
            SetTimer , 0
            WinMove EWD_OriginalPosX, EWD_OriginalPosY,,, EWD_MouseWin
            return
        }
        ; Otherwise, reposition the window to match the change in mouse coordinates
        ; caused by the user having dragged the mouse:
        CoordMode "Mouse"
        MouseGetPos &EWD_MouseX, &EWD_MouseY
        WinGetPos &EWD_WinX, &EWD_WinY,,, EWD_MouseWin
        SetWinDelay -1   ; Makes the below move faster/smoother.
        WinMove EWD_WinX + EWD_MouseX - EWD_MouseStartX, EWD_WinY + EWD_MouseY - EWD_MouseStartY,,, EWD_MouseWin
        EWD_MouseStartX := EWD_MouseX  ; Update for the next timer-call to this subroutine.
        EWD_MouseStartY := EWD_MouseY
    }
}
:X*:notki::Run "https://app.clickup.com/9005089362/home" 
#HotIf WinActive("ahk_exe msedge.exe")
Ctrl & Shift::Return
:X*:monkye::Send "monkeytype.com{Enter}"

/*
#HotIf WinActive("Minecraft 1.20.1 - Multiplayer (3rd-party Server)")
MouseMof(x, y) {
	;Send "{RButton Down}"
    Sleep 100
    DllCall("mouse_event", "UInt", 0x01, "UInt", x, "UInt", y)
    Sleep 100
	;Send "{RButton Up}"
}
s::MouseMof(-300, 0)
t::MouseMof(0, 300)
n::MouseMof(300, 0) 
l::MouseMof(0, -300)
,::Send "{LButton Down}"
.::Send "{LButton Up}" 
u::{
    Send "'"
    Sleep 100
    Send "/sellall{enter}"
}
*/