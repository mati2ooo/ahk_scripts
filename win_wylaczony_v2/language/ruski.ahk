#Include "%A_ScriptDir%"
#Include ZLANGhelp.ahk
x::ц
y::ы
o::о
u::у
'::ч
v::ш
g::г
l::л
p::п
q::я

/*
  ц ы о у ч  ш г л п я ; =
  х и е а ж  д с т н р -  
  з . , к /  в ь м б й   

  ц ы ю у ч  щ щ л п я ; =
  х я ё а ф  д с т н р -  
  э . , к /  в ъ м б й  
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
c::ь
m::м
b::б
j::й

^o::ю
^e::ё
^v::щ
^g::щ
^c::ъ
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