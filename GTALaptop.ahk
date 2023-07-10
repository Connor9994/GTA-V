#InstallKeybdHook
#MaxThreadsPerHotkey, 2
#SingleInstance, force
#EscapeChar `
#MenuMaskKey vk07
SetTitleMatchMode, 2
#IfWinActive, ahk_class grcWindow ;If GTA is 
#include Gdip.ahk  

;Unpress all keys
KeyList := "Alt|Control|Shift|a|b|c|d|e|f|g|h|i|j|k|l|m|n|o|p|q|r|s|t|u|v|w|x|y|z|LWin|RWin"
Loop, Parse, KeyList, |
{
    If GetKeystate(A_Loopfield, "P")
        Send % "{" A_Loopfield " Up}"
}

;Delays
UpOpenDelay=500
UpDelay=50
MDelay=100
EscOpenDelay=500
EscMenuDelay=200

;Hogtrainpoop1

;Start Mission
F5::
{
keywait,F5
Tooltip,Afking,0,0
SetKeyDelay,100
sleep 100
loop
{
NothingMatched := 1
pToken := Gdip_Startup()
pBitmap := Gdip_BitmapFromScreen() 
Gdip_SaveBitmapToFile(pBitmap, outfile)

1stLobby := Gdip_GetPixel(pBitmap, round(0.8151041666666667*A_ScreenWidth),round(0.2962962962962963*A_ScreenHeight))
1stLobby := format("{1:X}", 1stLobby)
StringTrimLeft, 1stLobby, 1stLobby, 2
;4ECD58

2ndLobby := Gdip_GetPixel(pBitmap, round(0.7421875*A_ScreenWidth),round(0.2407407407407407*A_ScreenHeight))
2ndLobby := format("{1:X}", 2ndLobby)
StringTrimLeft, 2ndLobby, 2ndLobby, 2
;2D6EB9

3rdLobby := Gdip_GetPixel(pBitmap, round(0.4989583333333333*A_ScreenWidth),round(0.7166666666666667*A_ScreenHeight))
3rdLobby := format("{1:X}", 3rdLobby)
StringTrimLeft, 3rdLobby, 3rdLobby, 2
;E03232

3rdLobbyReady := Gdip_GetPixel(pBitmap, round(0.4989583333333333*A_ScreenWidth),round(0.7166666666666667*A_ScreenHeight))
3rdLobbyReady := format("{1:X}", 3rdLobbyReady)
StringTrimLeft, 3rdLobbyReady, 3rdLobbyReady, 2
;72CC72 

RoundOver := Gdip_GetPixel(pBitmap, round(0.8046875*A_ScreenWidth),round(0.1212962962962963*A_ScreenHeight))
RoundOver := format("{1:X}", RoundOver)
StringTrimLeft, RoundOver, RoundOver, 2
;FFFFFF

PickALobby := Gdip_GetPixel(pBitmap, round(0.5869791666666667*A_ScreenWidth),round(0.462962962962963*A_ScreenHeight))
PickALobby := format("{1:X}", PickALobby)
StringTrimLeft, PickALobby, PickALobby, 2
;4ECD58

Gdip_DisposeImage(pBitmap)
Gdip_Shutdown(pToken)

if (3rdLobby = "E03232")
{
Tooltip,3rdLobbyNotReady,0,0
Sleep 1000
MouseClick,left,round(0.2604166666666667*A_ScreenWidth),round(0.2314814814814815*A_ScreenHeight),2,10
Sleep 500
MouseClick,left,round(0.2604166666666667*A_ScreenWidth),round(0.2314814814814815*A_ScreenHeight),2,10
Sleep 200
Send {Blind}{Up}
Sleep 200
Send {Blind}{Enter}
NothingMatched := 0
Sleep 2000
}

if (3rdLobbyReady = "72CC72")
{
Tooltip,3rdLobbyReady,0,0
loop
{
sleep 500
pToken := Gdip_Startup()
pBitmap := Gdip_BitmapFromScreen() 
Gdip_SaveBitmapToFile(pBitmap, outfile)
3rdLobby := Gdip_GetPixel(pBitmap, round(0.4989583333333333*A_ScreenWidth),round(0.7166666666666667*A_ScreenHeight))
3rdLobby := format("{1:X}", 3rdLobby)
StringTrimLeft, 3rdLobby, 3rdLobby, 2
Gdip_DisposeImage(pBitmap)
Gdip_Shutdown(pToken)
if (3rdLobbyReady != "E03232")
{
break
}
}
NothingMatched := 0
}

if (RoundOver = "FFFFFF")
{
Tooltip,RoundOver,0,0
Send {Blind}{Enter}
Sleep 200
Send {Blind}{Enter}
Sleep 10000
NothingMatched := 0
loop
{
pToken := Gdip_Startup()
pBitmap := Gdip_BitmapFromScreen() 
Gdip_SaveBitmapToFile(pBitmap, outfile)
RoundOver := Gdip_GetPixel(pBitmap, round(0.8046875*A_ScreenWidth),round(0.1212962962962963*A_ScreenHeight))
RoundOver := format("{1:X}", RoundOver)
StringTrimLeft, RoundOver, RoundOver, 2
Gdip_DisposeImage(pBitmap)
Gdip_Shutdown(pToken)
if (RoundOver != "FFFFFF")
{
Sleep 5000
break
}
}
}

if (PickALobby = "4ECD58")
{
Tooltip,PickALobby,0,0
Send {Blind}{Up}
Sleep 1000
Send {Blind}{Enter}
loop
{
pToken := Gdip_Startup()
pBitmap := Gdip_BitmapFromScreen() 
Gdip_SaveBitmapToFile(pBitmap, outfile)
PickALobby := Gdip_GetPixel(pBitmap, round(0.5869791666666667*A_ScreenWidth),round(0.462962962962963*A_ScreenHeight))
PickALobby := format("{1:X}", PickALobby)
StringTrimLeft, PickALobby, PickALobby, 2
Gdip_DisposeImage(pBitmap)
Gdip_Shutdown(pToken)
if (PickALobby != "4ECD58")
{
break
}
}
NothingMatched := 0
}

if (GetKeyState("F6")) 
{
Send {Blind}{f up}
Send {Blind}{Enter}
SetTimer, RemoveToolTip, 0
break
}

if (NothingMatched = 1)
{
Send {Blind}{w down}
Send {Blind}{f down}
sleep 2550
Send {Blind}{f up}
Send {Blind}{w up}
}
}
Return
}

F7::
{
Send {Blind}{w down}
Send {Blind}{d down}
Sleep 2000
}

RemoveToolTip()
{
SetTimer, RemoveToolTip, Off
ToolTip
Return
}

#if
^r::
{
Reload
Return
}