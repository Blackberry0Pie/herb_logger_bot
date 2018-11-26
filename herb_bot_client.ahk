#include RS_Functions2.ahk
/*
click import
click import ok
click play
click welcome ok

;click secateurs
click herb (location)
sleep
count herbs
check for seed
click logout (location)

click lobby ok
*/
sleep, 3000

loop ;main loop
{

RS_Find_Applet(W,H,W2,H2,1)
x1:=72+W
y1:=440+H
x2:=234+W
y2:=481+H
loop ;import loop
{
ImageSearch, X, Y, X1, Y1, X2, Y2, %A_WorkingDir%\herb_bot_resc\import.png
if (errorlevel=0)
{
RS_CM(x+10,y+10,10,10)
break
}
}

x1:=288+W
y1:=297+H
x2:=471+W
y2:=325+H
loop ;import ok loop
{
ImageSearch, X, Y, X1, Y1, X2, Y2, %A_WorkingDir%\herb_bot_resc\update_ok.png
if (errorlevel=0)
{
RS_CM(x+10,y+10,10,10)
break
}
}

x1:=246+W
y1:=435+H
x2:=515+W
y2:=480+H
loop ;play loop
{
ImageSearch, X, Y, X1, Y1, X2, Y2, %A_WorkingDir%\herb_bot_resc\play.png
if (errorlevel=0)
{
RS_CM(x+10,y+10,10,10)
break
}
}

x1:=321+W
y1:=391+H
x2:=443+W
y2:=421+H
loop ;welcome ok loop
{
ImageSearch, X, Y, X1, Y1, X2, Y2, %A_WorkingDir%\herb_bot_resc\welcome_ok.png
if (errorlevel=0)
{
RS_CM(x+10,y+10,10,10)
break
}
}

s:=ran_int(1000,250)
sleep, s
RS_Click_Inventory_Item(28, R=0, S=0) ;secateurs

s:=ran_int(2000,250)
sleep, s

RS_CM(284+W,142+H,12,12) ;herb (557,361)

sleep, 3000

x1:=46+W
y1:=2+H
x2:=137+W
y2:=28+H
loop ;harvest loop
{
ImageSearch, X, Y, X1, Y1, X2, Y2,*Trans0xFFFFFF *50 %A_WorkingDir%\herb_bot_resc\herb_patch.png
if (errorlevel=0)
{
break
}
}

sleep,1000

gosub,herbcount

RS_CM(755+W,10+H,10,10) ;click logout (1020,220)

x1:=558+W
y1:=342+H
x2:=723+W
y2:=380+H
loop ;lobby ok loop
{
ImageSearch, X, Y, X1, Y1, X2, Y2, %A_WorkingDir%\herb_bot_resc\lobby_ok.png
if (errorlevel=0)
{
RS_CM(x+10,y+10,10,10)
break
}
}

}

herbcount:
herbs=0
seed=0

img=\herb_bot_resc\GSc.png
if RS_Search_Inventory_Item(1,img)
{
herbs+=1
}
img=\herb_bot_resc\HSc.png
if RS_Search_Inventory_Item(1,img)
{
seed=1
}

img=\herb_bot_resc\GSc.png
if RS_Search_Inventory_Item(2,img)
{
herbs+=1
}
img=\herb_bot_resc\HSc.png
if RS_Search_Inventory_Item(2,img)
{
seed=1
}

img=\herb_bot_resc\GSc.png
if RS_Search_Inventory_Item(3,img)
{
herbs+=1
}
img=\herb_bot_resc\HSc.png
if RS_Search_Inventory_Item(3,img)
{
seed=1
}

img=\herb_bot_resc\GSc.png
if RS_Search_Inventory_Item(4,img)
{
herbs+=1
}
img=\herb_bot_resc\HSc.png
if RS_Search_Inventory_Item(4,img)
{
seed=1
}

img=\herb_bot_resc\GSc.png
if RS_Search_Inventory_Item(5,img)
{
herbs+=1
}
img=\herb_bot_resc\HSc.png
if RS_Search_Inventory_Item(5,img)
{
seed=1
}

img=\herb_bot_resc\GSc.png
if RS_Search_Inventory_Item(6,img)
{
herbs+=1
}
img=\herb_bot_resc\HSc.png
if RS_Search_Inventory_Item(6,img)
{
seed=1
}

img=\herb_bot_resc\GSc.png
if RS_Search_Inventory_Item(7,img)
{
herbs+=1
}
img=\herb_bot_resc\HSc.png
if RS_Search_Inventory_Item(7,img)
{
seed=1
}

img=\herb_bot_resc\GSc.png
if RS_Search_Inventory_Item(8,img)
{
herbs+=1
}
img=\herb_bot_resc\HSc.png
if RS_Search_Inventory_Item(8,img)
{
seed=1
}

img=\herb_bot_resc\GSc.png
if RS_Search_Inventory_Item(9,img)
{
herbs+=1
}
img=\herb_bot_resc\HSc.png
if RS_Search_Inventory_Item(9,img)
{
seed=1
}

img=\herb_bot_resc\GSc.png
if RS_Search_Inventory_Item(10,img)
{
herbs+=1
}
img=\herb_bot_resc\HSc.png
if RS_Search_Inventory_Item(10,img)
{
seed=1
}

img=\herb_bot_resc\GSc.png
if RS_Search_Inventory_Item(11,img)
{
herbs+=1
}
img=\herb_bot_resc\HSc.png
if RS_Search_Inventory_Item(11,img)
{
seed=1
}

img=\herb_bot_resc\GSc.png
if RS_Search_Inventory_Item(12,img)
{
herbs+=1
}
img=\herb_bot_resc\HSc.png
if RS_Search_Inventory_Item(12,img)
{
seed=1
}

img=\herb_bot_resc\GSc.png
if RS_Search_Inventory_Item(13,img)
{
herbs+=1
}
img=\herb_bot_resc\HSc.png
if RS_Search_Inventory_Item(13,img)
{
seed=1
}

img=\herb_bot_resc\GSc.png
if RS_Search_Inventory_Item(14,img)
{
herbs+=1
}
img=\herb_bot_resc\HSc.png
if RS_Search_Inventory_Item(14,img)
{
seed=1
}

img=\herb_bot_resc\GSc.png
if RS_Search_Inventory_Item(15,img)
{
herbs+=1
}
img=\herb_bot_resc\HSc.png
if RS_Search_Inventory_Item(15,img)
{
seed=1
}

img=\herb_bot_resc\GSc.png
if RS_Search_Inventory_Item(16,img)
{
herbs+=1
}
img=\herb_bot_resc\HSc.png
if RS_Search_Inventory_Item(16,img)
{
seed=1
}

img=\herb_bot_resc\GSc.png
if RS_Search_Inventory_Item(17,img)
{
herbs+=1
}
img=\herb_bot_resc\HSc.png
if RS_Search_Inventory_Item(17,img)
{
seed=1
}

img=\herb_bot_resc\GSc.png
if RS_Search_Inventory_Item(18,img)
{
herbs+=1
}
img=\herb_bot_resc\HSc.png
if RS_Search_Inventory_Item(18,img)
{
seed=1
}

img=\herb_bot_resc\GSc.png
if RS_Search_Inventory_Item(19,img)
{
herbs+=1
}
img=\herb_bot_resc\HSc.png
if RS_Search_Inventory_Item(19,img)
{
seed=1
}

img=\herb_bot_resc\GSc.png
if RS_Search_Inventory_Item(20,img)
{
herbs+=1
}
img=\herb_bot_resc\HSc.png
if RS_Search_Inventory_Item(20,img)
{
seed=1
}

img=\herb_bot_resc\GSc.png
if RS_Search_Inventory_Item(21,img)
{
herbs+=1
}
img=\herb_bot_resc\HSc.png
if RS_Search_Inventory_Item(21,img)
{
seed=1
}

img=\herb_bot_resc\GSc.png
if RS_Search_Inventory_Item(22,img)
{
herbs+=1
}
img=\herb_bot_resc\HSc.png
if RS_Search_Inventory_Item(22,img)
{
seed=1
}

img=\herb_bot_resc\GSc.png
if RS_Search_Inventory_Item(23,img)
{
herbs+=1
}
img=\herb_bot_resc\HSc.png
if RS_Search_Inventory_Item(23,img)
{
seed=1
}

img=\herb_bot_resc\GSc.png
if RS_Search_Inventory_Item(24,img)
{
herbs+=1
}
img=\herb_bot_resc\HSc.png
if RS_Search_Inventory_Item(24,img)
{
seed=1
}

img=\herb_bot_resc\GSc.png
if RS_Search_Inventory_Item(25,img)
{
herbs+=1
}
img=\herb_bot_resc\HSc.png
if RS_Search_Inventory_Item(25,img)
{
seed=1
}

img=\herb_bot_resc\GSc.png
if RS_Search_Inventory_Item(26,img)
{
herbs+=1
}
img=\herb_bot_resc\HSc.png
if RS_Search_Inventory_Item(26,img)
{
seed=1
}

img=\herb_bot_resc\GSc.png
if RS_Search_Inventory_Item(27,img)
{
herbs+=1
}
img=\herb_bot_resc\HSc.png
if RS_Search_Inventory_Item(27,img)
{
seed=1
}

img=\herb_bot_resc\GSc.png
if RS_Search_Inventory_Item(28,img)
{
herbs+=1
}
img=\herb_bot_resc\HSc.png
if RS_Search_Inventory_Item(28,img)
{
seed=1
}

if(seed=1)
{
sb=Snapdragon
}
else
{
sb=
}
time=%A_Hour%:%A_Min%:%A_Sec%,%A_MM%/%A_DD%/%A_YYYY%
Fileappend, Trollheim`,Snapdragon`,%herbs%`,`,`,%herbs%`,%sb%`,%time%`n, HerbBot.txt
;if(herbs>=11)
;{
;loop
;{
;SoundPlay,alarm3.wav,wait
;}
;}
return