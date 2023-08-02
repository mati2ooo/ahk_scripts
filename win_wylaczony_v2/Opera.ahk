strona(aa) {	; całkowicie czyści clipboard, ale za to działa bardzo szybko!
	Send "^n"
	Sleep 100
	Send aa "{Enter}"
}
#HotIf WinActive("ahk_exe opera.exe")
:X?*:nowou:: Send "^y^'"
:X?*:nowoy:: Send "^'"
:?*:nitro:: {
	MouseGetPos &xpos, &ypos
	strona("nitrotype.com/login")
	Loop {
		wait := PixelGetColor(1033, 357)
		if (wait == "0x1C98F2") {
			SendText "matimontfa@gmail.com"
			mof(1069, 710)
			SendText haselko	; jest w bezpiecznym miejscu ;3
			mof(1080, 800)
			Sleep 1000
			MsgBox "Logowanie zakończyło się sukcesem", , "T1.5"
			MouseMove xpos, ypos
			break
		}
	}
}
#HotIf WinActive("Szybkie wybieranie – Opera")
:X?*:monki:: strona("monkeytype.com")
:X*:gm:: strona("gmail.com")
:XB0*:you:: Send "tube.com{enter}"

#HotIf WinActive("Monkeytype – Opera")
Ctrl & Shift:: return

#HotIf WinActive("Race Now - 100% Free | Nitro Type – Opera")
nadol() {
	Loop {
		Sleep 500
		wdol := PixelGetColor(1432, 604)
		if (wdol == "0x1D1E23") {
			MouseMove 1911, 567
			Click "Down"
			MouseMove 1913, 911
			Click "Up"
			MouseMove 620, 443
			break
		} } }
starcik(licz := 0, ile := 0, start := 0) {
	Send "{Enter}"
	Sleep 100
	odcinek := [A_Hour, A_Min, A_Sec]
	Sleep 20
	czas := odcinek[1] * 3600 + odcinek[2] * 60 + odcinek[3] - (start[1] * 3600 + start[2] * 60 + start[3])
	Sleep 20
	if (licz = 0)
		średnio := floor(czas)
	else średnio := floor(czas / licz)
	Sleep 20
	if (czas > 60)
		czas := floor(czas / 60) ":" Format("{:02}", ceil(mod(czas, 60)))
	else czas := "0:" Format("{:02}", czas)
	if (średnio > 60)
		średnio := floor(średnio / 60) ":" Format("{:02}", ceil(mod(średnio, 60)))
	else średnio := "0:" Format("{:02}", średnio)
	Sleep 20
	MsgBox "Postęp: " licz " / " ile ", Czas: " czas " minut, Średnio: " średnio " minut", , "T5"
	Sleep 2500
	nadol()
	Shifto()
}
nawache() {
	ile := InputBox("Ile wyścigów chcesz porobić?").value
	start := [A_Hour, A_Min, A_Sec]
	Loop {
		if (A_Index > ile) {
			Loop {
				if PixelSearch(&Px, &Py, 637, 281, 815, 373, 0x2F3343, 5) {
					odcinek := [A_Hour, A_Min, A_Sec]
					czas := odcinek[1] * 3600 + odcinek[2] * 60 + odcinek[3] - (start[1] * 3600 + start[2] * 60 + start[3])
					średnio := floor(czas / ile)
					if (czas > 60)
						czas := floor(czas / 60) ":" Format("{:02}", ceil(mod(czas, 60)))
					else czas := "0:" Format("{:02}", czas)
					if (średnio > 60)
						średnio := floor(średnio / 60) ":" Format("{:02}", ceil(mod(średnio, 60)))
					else średnio := "0:" Format("{:02}", średnio)
					MsgBox "Finalnie wykonałeś " ile " wyścigów. W sumie Ci to zajęło: " czas " minut, średnio na wyścig: " średnio " minut"
					return
				} } }
		licz := A_Index - 1
		Loop {
			if PixelSearch(&Px, &Py, 637, 281, 815, 373, 0x2F3343, 5) {
				starcik(licz, ile, start)
				Sleep 20000
				break
			} } } }
:X?*:123:: lmof(1527, 187)	; do zalogowania się jak wrzuca Cię na testowy wyścig
pokaz := 0
:*?:pokaz:: {
	global pokaz
	if (pokaz = 1)
		pokaz := 0
	else pokaz := 1
	MsgBox pokaz " (0 onzacza, że nie będzie pokazywał statów)", , "T1"
}
:X?*:/:: starcik()
:X*:zyou:: nawache()
:X?*:tims:: lmof(1276, 186)
#HotIf WinActive("Garage - Show Off Your Cars | Nitro Type – Opera")
:X*:klir:: lmof(1563, 229)
:?*:/:: {
	lmof(653, 545)
	nadol()
	Shifto()
}
:*:zyou:: {
	lmof(654, 545)
	nawache()
}
#HotIf WinActive("Teams - Racing Is Better Together | Nitro Type – Opera")
:?*:/:: {
	lmof(605, 270)
	nadol()
	Shifto()
}
#HotIf WinActive("Nitro Type | Competitive Typing Game | Race Your Friends – Opera")
:X?*:la:: lmof(1520, 175)
#HotIf WinActive("Log into your Nitro Type account – Opera")
:?*:logina:: {
	mof(1072, 599)
	SendText "matimontfa@gmail.com"	; działa dla strony na wielkości 110%
	mof(1069, 710)
	Sleep 200
	SendText haselko	; jest w bezpiecznym miejscu ;3
	mof(1080, 800)
}
#HotIf WinActive("Shop - Buy New Gear For Your Collection | Nitro Type – Opera")
:*:haslo:: {
	SendText haselko	; jest w bezpiecznym miejscu ;3
	mof(1232, 794)
	mof(1438, 784, 1000)
}