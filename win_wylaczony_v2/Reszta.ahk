#HotIf
Appskey:: return	; to jest praktycznie OG
SetCapsLockState "AlwaysOff"
`::Escape
:X*:riload:: riload()
OnExit Failsafey 
Failsafe() { 
	Run "C:\Users\Nowe Konto 2\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup"
	;Gui +LastFound +OwnDialogs +AlwaysOnTop
	MsgBox "Wyłączyłeś Appskey :: Return !!! v2 tho `;)", , "4096 T1.5"
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
	Global Edytor
	if not WinExist("ahk_exe Code.exe") {
	Sleep 30
	Run '"' Edytor '" "' win '"' 
	MsgBox "Przyjąłem",, "T1.5" 
	} else Run '"' Edytor '" "' win '"' 
}
OdpalEdytor(plik) {
	Global Edytor, skrypt
	Run '"' Edytor '" "' skrypt plik ".ahk" '"'  ; TEGO TRZEBA PILNOWAĆ, TO DLA NAS ZŁOTO
} 
:XC*:winw:: wina() 
:XC*:wniw:: wina() 
:C*:nsln::{  ; winw for QWERTY
	wina()
	MsgBox "Ten, Qwerty masz włączone",, "4096 T3"  
}  
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
:X*:ppol:: LaunchLang("polen")
:X*:pdun:: LaunchLang("dunski")
:X*:pwlos::LaunchLang("wloski")
:X*:pger:: LaunchLang("german")
:X*:ppor:: LaunchLang("portu")
:X*:pgre:: LaunchLang("greek")
:X*:prou:: LaunchLang("ruski")
:X*:pruss::LaunchLang("ruski")
:X*:pfre::LaunchLang("french") 
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
^q:: MsgBox "Current AHK v2 version: " A_AhkVersion
\:: {	; służy do pozyskiwania pozycji kursora oraz koloru piksela
	CoordMode "Mouse", "Window" ; bazowo jest na okno (Window) "Screen"
	MouseGetPos &xpos, &ypos
	Kolorek := PixelGetColor(xpos, ypos)
	A_Clipboard := xpos ", " ypos ", " '"' Kolorek '"'  ; tam średnik jest, pamiętaj o nim
	CoordMode "Mouse", "Window"
	if not WinExist(Editor_window) {
		wina()
		WinWait Editor_window
		WinActivate Editor_window
	} else WinActivate Editor_window 
	Sleep 100
	MouseMove 350, 590	; przemieszcza kursor na edytorze
}

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
:X?*:dyskgoogle::Send "https://drive.google.com/drive/u/0/my-drive?hl=pl{enter}"
:X*:volium::MsgBox "Master volume is at " Round(SoundGetVolume(), 0) " percent." 
:X*:dataa::Send "[" A_DD "." A_MM ", godz. " A_Hour ":" A_Min "]"

:*:podai::{
    folder := InputBox("Wklej ścieżkę foldera, do którego chcesz przejść")
    if folder != "" 
    Run folder.value 
}

wyscigii(show, average, count){
	ScriptLong := StrLen(A_ScriptName)
	goBack := WinActive("A")
	Times := 18
	MyGui := Gui()
	MyGui.Opt("AlwaysOnTop ToolWindow")
	MyGui.SetFont("s18")
	Message := "Time of the race: " show " seconds; Average: " average " seconds; " count " races in total"
	MyGui.Add("Text", "BackgroundTrans x15 y10 R2", Message) ; podaj nazwe skryptu
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
/*
Shifto(tool := 0) {
	CoordMode "ToolTip", "Screen"
	If (tool = 0)
		ToolTip "Shift ON", 690, 545
	Send "{Shift down}"
	key := InputHook("L1, *")
	key.Start()
	key.Wait()
	Send key.Input
	ToolTip
	Send "{Shift up}"
}
*/
Shifto(tool := 0) {
	If (tool = 0) {
		goBack := WinActive("A")
		MyGui := Gui()
		MyGui.Opt("AlwaysOnTop ToolWindow")
		MyGui.SetFont("s18")
		MyGui.Add("Text", "x15 y10", "Shifto") ; 
		WinSetStyle "-0xC00000", MyGui
		MyGui.BackColor := "0x086315"
		WinSetTransColor(" 120", MyGui)
		MyGui.Show
		MyGui.Move(700, 500, 90, 50)
		WinActivate(goBack)
	}
	Send "{Shift down}"
	key := InputHook("L1, *")
	key.Start()
	key.Wait()
	Send key.Input
	 if (tool = 0)
	MyGui.Destroy()
	Send "{Shift up}"
}
ShiftoT() {
	CoordMode "ToolTip", "Screen"
	ToolTip "Shift ON", 690, 545
	Send "{Shift down}"
	key := InputHook("L1, *")
	key.Start()
	key.Wait()
	Send key.Input
	ToolTip
	Send "{Shift up}"
}
#MaxThreadsPerHotkey 2 
RShift:: ShiftoT()
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
:X*:metyping::Run "https://youtu.be/Y1UNHgDRFaA?si=eJPRv8gS0llUA4-W"
:X*:notkii::Run "https://app.clickup.com/9005089362/home" 
#HotIf WinActive("ahk_exe msedge.exe")
Ctrl & Shift::Return 
:X*:monkye::Send "monkeytype.com{Enter}"

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
	KolorTekstu2 := "c110429 Right" 
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

vke2::Shift


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
:*:aaaeaeeii::{
	global text
	A_Clipboard := RegExReplace(text, " ", "") ; RegExReplace, służy do usuwania spacji
}


#HotIf WinActive("Roblox")
XButton1::y
XButton2::y

	

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
  x y o u '  v g l p q ; =
  h i e a f  d s t n r -
  z . , k /  w c m b j   
  
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
*/