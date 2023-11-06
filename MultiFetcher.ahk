;SALVE O MACRO NA MESMA PASTA QUE O FLASHPLAYER TA INSTALADO
;APERTE Q PARA COMECAR E ABRIR 2 INSTANCES
;APERTE 1 E 2 PARA COMECAR AS DUAS INSTANCES
;USE 1 E 2 PARA RESETAR CADA UMA




q:: ; TECLA PARA ABRIR AS INSTANCES, NAO ABRA ELAS MANUALMENTE
Loop,1
{
	Run, flashplayer_32_sa.exe,,, vPID
	Run, flashplayer_32_sa.exe,,, vPID2
	Run, flashplayer_32_sa.exe,,, vPID3
	WinWait, % "ahk_class ShockwaveFlash ahk_pid " vPID
	WinWait, % "ahk_class ShockwaveFlash ahk_pid " vPID2
	WinWait, % "ahk_class ShockwaveFlash ahk_pid " vPID3
	WinGet, hWnd%A_Index%, ID, % "ahk_class ShockwaveFlash ahk_pid " vPID
	WinGet, hWnd%A_Index%, ID, % "ahk_class ShockwaveFlash ahk_pid " vPID2
	WinGet, hWnd%A_Index%, ID, % "ahk_class ShockwaveFlash ahk_pid " vPID3
}
return

1:: ;TECLA PARA RESETAR A INSTANCE 1
WinGet, hWnd, List, ahk_class ShockwaveFlash
WinActivate, % "ahk_pid " vPID 
sleep, 10
Send, {LControl Down}
Sleep, 20
Send, {o Down}
Sleep, 20
Send, {o Up}
Sleep, 20
Send, {LControl Up}
Sleep, 20
Send, {LControl Down}
Sleep, 20
Send, {v Down}
Sleep, 20 
Send, {v Up}
Sleep, 20
Send, {LControl Up}
Sleep, 20
Send, {Enter Down}
Sleep, 20
Send, {Enter Up}
Sleep, 20
SendRaw, x
return

2:: ;TECLA PARA RESETAR A INSTANCE 2
WinActivate, % "ahk_pid " vPID2
sleep, 10
Send, {LControl Down}
Sleep, 20
Send, {o Down}
Sleep, 20
Send, {o Up}
Sleep, 20
Send, {LControl Up}
Sleep, 20
Send, {LControl Down}
Sleep, 20
Send, {v Down}
Sleep, 20
Send, {v Up}
Sleep, 20
Send, {LControl Up}
Sleep, 20
Send, {Enter Down}
Sleep, 20
Send, {Enter Up}
Sleep, 20
SendRaw, x
return

3:: ;TECLA PARA RESETAR A INSTANCE 2
WinActivate, % "ahk_pid " vPID3
sleep, 10
Send, {LControl Down}
Sleep, 20
Send, {o Down}
Sleep, 20
Send, {o Up}
Sleep, 20
Send, {LControl Up}
Sleep, 20
Send, {LControl Down}
Sleep, 20
Send, {v Down}
Sleep, 20
Send, {v Up}
Sleep, 20
Send, {LControl Up}
Sleep, 20
Send, {Enter Down}
Sleep, 20
Send, {Enter Up}
Sleep, 20
SendRaw, x
return