
; Pierwsze trzy zmienne są modyfikowane w zależności od komputera, należy również podmienić pierwszy #Include znajdujący się poniżej
; Przydałoby się stworzyć oddzielny skrypt do zmieniania poniższych #Includów, aby przebiegało to jak najszybciej (że jest zmienna i to podmienia)
#Hotstring * ; nie potrzeba dołączać * do każdego hotstringa, pamiętaj o tym
skrypt := "C:\Users\Nowe Konto 2\Desktop\ahk_scripts\win_wylaczony_v2\" ; tam znajdują się wszelkie utworzone skrypty
Edytor := "D:\Mati\Aplikacje\VSCode\Microsoft VS Code\Code.exe" ; zazwyczaj to będzie VSCode, ew. Notepad
Editor_window := "ahk_exe Code.exe" ; nazwa okna edytora na którym działasz (przeważnie VSCode)

win := A_ScriptFullPath
emotki := "emotki.ahk" 
Notipad := "Notipad.ahk"
Reszta := "Reszta.ahk" 
language := "language\" ; Tester1
AHK_Doc := skrypt "AutoHotkey.chm" ; AutoHotkey Documentation 

if (A_AhkVersion != "2.0.4")
    MsgBox "Uwaga - nie wykryłem wersji AHK v2.0.4. [8th August 2023] Miej się na baczności"

^k::^k
:X?:fulla::Send "{Ctrl}{F11}" 
:X?:ernts::Send "{Escape}"
::mnoh::{
    a := InputBox("Podaj pierwszą liczbę").value
    b := InputBox("Podaj drugą liczbę").value
    MsgBox a * b
} 
::dhiel::{  
    a := InputBox("Podaj pierwszą liczbę").value
    b := InputBox("Podaj drugą liczbę").value
    MsgBox Round(a / b, 2)
}
^Space::WinSetAlwaysOnTop(-1, "A") 

:*:data1::{
    Date := A_DD "." A_MM "." A_YYYY
    Liczba := InputBox()
    Send Liczba.value "WPM (" Date ")"   
}

#HotIf WinActive("ahk_exe GenshinImpact.exe")
#MaxThreadsPerHotkey 2 
Toggle := 0
z::{
    global Toggle
    Toggle := !Toggle
    While Toggle {
        Loop {
        Click 1200, 642 ; 1142, 674, "0xDFE0E1"
        Sleep 100
        if (Toggle = 0)
            break
        }
    }}

^k::^k

#HotIf WinActive("ahk_exe EXCEL.EXE")
,::.
    

#SingleInstance Force
#Hotstring EndChars `s
#Hotstring NoMouse
TraySetIcon "Shell32.dll", 199
#Requires AutoHotkey v2.0.0
#Include C:\Users\Nowe Konto 2\Desktop\ahk_scripts\win_wylaczony_v2\ ; tutaj podmień ścieżkę do folderu z skryptami w razie W
#Include emotki.ahk
#Include Notipad.ahk
#Include Reszta.ahk

/*
Technika światłowwodowa - go ff
Cyfrowe przetwarzanie sygnałów (Andrzej Kotyra) - męczyć go aby przepisał nam oceny
Instalacje elektryczne - warto chodzić
Sykut - przepisać prezentację

 