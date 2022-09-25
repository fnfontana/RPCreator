; Code by Fernando Fontana
; Under the MIT License
; Feel free to use and modify this code as you wish, but keep this header.
; -------------------------------------------------------------------------------------
#NoEnv ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir% ; Ensures a consistent starting directory.
;---------------------------------------
SetTitleMatchMode 2
#SingleInstance ignore
#NoTrayIcon
;---------------------------------------

;Right: Win + Alt + Ctrl + P
>^>!>#P::
    MsgBox, 0x81124, Sistema Resiliente, Deseja criar um Ponto de Restauracao do Sistema?, 30
    ifMsgBox Yes
    Run %ComSpec% /c "C:\MySysAuto\custom_system-routines\restore_system\create_manual_restore_point.bat" && timeout /t 20
    ifMsgBox No
return