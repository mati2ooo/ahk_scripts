#Include "%A_ScriptDir%"
#Include ZLANGhelp.ahk
x::ц
y::ы
o::о
u::у
'::ь
v::ш
g::г
l::л
p::п
q::я

/*
  ц ы о у ь  ш г л п я ; =
  х и е а ж  д с т н р -  
  з . , к /  в ч м б й   
  */
h::х
i::и
e::е
a::а
f::ж
d::д
s::с
t::т
n::н
r::р

z::з
k::к
w::в
c::ч
m::м
b::б
j::й

^o::ю
^e::ё
^g::щ
^v::щ
^'::ъ
^z::э
^i::я
^f::ф

:*:123::{
    Sleep 20
    MsgBox A_ScriptName " OFF",, "T0.3"
    ExitApp
}
:*:пкилл::{ 
    Sleep 20
    MsgBox A_ScriptName " OFF",, "T0.3"
    ExitApp
}