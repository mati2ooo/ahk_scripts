; Pierwsze trzy zmienne są modyfikowane w zależności od komputera, należy również podmienić pierwszy #Include znajdujący się poniżej
; Przydałoby się stworzyć oddzielny skrypt do zmieniania poniższych #Includów, aby przebiegało to jak najszybciej (że jest zmienna i to podmienia)
skrypt := "F:\ahk\v2" ; tam znajdują się wszelkie utworzone skrypty
Edytor := "C:\Mati\Aplikacje\VSCode\Microsoft VS Code\Code.exe" ; zazwyczaj to będzie VSCode, ew. Notepad
Editor_window := "ahk_exe Code.exe" ; nazwa okna edytora na którym działasz

win := A_ScriptFullPath
emotki := "emotki.ahk" 
Notipad := "Notipad.ahk"
Reszta := "Reszta.ahk"
language := "language\"
AHK_Doc := skrypt "AutoHotkey.chm" ; AutoHotkey Documentation

if (A_AhkVersion != "2.0.2")
    MsgBox "Uwaga - nie wykryłem wersji AHK v2.0.2. Miej się na baczności"


#HotIf WinActive("ahk_exe msedge.exe")
Ctrl & Shift::Return
:X*:monkye::Send "onkeytype.com{Enter}"
:X*:notki::Run "https://app.clickup.com/9005089362/home"

#SingleInstance Force
#Hotstring EndChars `n
#Hotstring NoMouse
TraySetIcon "Shell32.dll", 170
#Requires AutoHotkey v2.0.0
#Include C:\Users\Grzegorz\Desktop\MATI\v2
#Include emotki.ahk
#Include Notipad.ahk
#Include Reszta.ahk