﻿
#IfWinActive ahk_exe Code.exe
esc::
send {esc}
SwitchIME(0x04090409)
return
#IfWinActive



#IfWinActive ahk_exe wechat.exe
~LControl UP::
	if !InStr(A_Priorkey,"LControl")
	return
	SwitchIME(0x04090409)
return
#IfWinActive

;--------------------- 快捷键转义--------------------
; +Delete::Numpad1
; +End::Numpad2
; +PgDn::Numpad3
; +Insert::Numpad4
; +Home::Numpad5
; +PgUp::Numpad6
; +PrintScreen::Numpad7
; +ScrollLock::Numpad8
; +Pause::Numpad9

appskey::mbutton ;用于surface 没有鼠标中键的情况

#w::send +#m
#d::send #m
; 增强win+d显示桌面的功能

; ::---::- [ ]  

!Media_Prev::send !{F4} 
; 适用于thinkpad蓝牙键盘没有fn锁的情况



; ^b::
; {
; clipboard=
; sleep,200
; send,^c
; clipwait,2
; Loop
; {
;     StringReplace, clipboard,clipboard, `r`n,%A_SPACE%, UseErrorLevel
;     if ErrorLevel = 0  ;ȫ���滻�꣬�˳�ѭ��
;         break
; }
; Loop
; {
;     StringReplace, clipboard,clipboard, %A_SPACE%, , UseErrorLevel ;�滻�����ո�Ϊһ���ո�
;     if ErrorLevel = 0  
;         break
; }
; return
; }

; ^\::Send {、}

; ------------------缩写转义-----------------------
; ::ahk::autohotkey
; ::tc::thermal conductivity
; ::thr::thermal resistance
; ::wmk::
; (
; W\cdot m^{-1}K^{-1}
; )
; ::ttm::
; (
; T-type method
; )
; ::txk::T型法
; ::3w::
; (
; $3\omega$
; )

; ------------------------------------------------------------
; esc & {F1}:: "C:\Program Files\Microsoft VS Code\Code.exe"
; esc & F1:: run gvim C:\Users\shixuguo\Documents\Todotxt\@Inbox工作篮\Inbox工作篮.txt
; esc & F2:: run gvim C:\Users\shixuguo\todo.txt


esc & F1:: run,C:\Program Files\Microsoft VS Code\code.exe C:\Users\shixuguo\Dropbox\Todotxt\@Inbox工作篮\Inbox工作篮.txt
esc & F2:: run "C:\Program Files (x86)\Hughesoft\todotxt.net\todotxt.exe"
esc & F3:: run,C:\Program Files\Microsoft VS Code\code.exe C:\Users\shixuguo\Dropbox\Todotxt\todo.txt


; ------------------------------------------------------------


; ------------------待废弃的代码-------------------


; esc & g::
; run C:\Users\shixuguo\Desktop\Groove.lnk
; sleep,2000
; send {Media_Play_Pause}
; return

; esc::
; if esc_presses > 0 ; SetTimer 已经启动, 所以我们记录键击.
; {
;     esc_presses += 1
;     return
; }
; ; 否则, 这是新开始系列中的首次按下. 把次数设为 1 并启动
; ; 计时器：
; esc_presses = 1
; SetTimer, KeyEsc, 200 ; 在 400 毫秒内等待更多的键击.
; return

; KeyEsc:
; SetTimer, KeyEsc, off
; if esc_presses = 1 ; 此键按下了一次.
; {
; 	send {esc}
; 	; SwitchIME(0x04090409)
; }
; else if esc_presses = 2 ; 此键按下了两次.
; {
; 	send {esc}
; 	; SwitchIME(0x04090409)
; 	send {esc}
; }
; else if esc_presses > 2
; {
;     SwitchIME(00000804)
; }
; ; 不论触发了上面的哪个动作, 都对 count 进行重置
; ; 为下一个系列的按下做准备:
; esc_presses = 0
; return

; ------------------------------------------------------------

; esc & f::run I:\���\����������\flowstate_�Զ����\index.html


capslock::
SetCapsLockState ,OFF
return




; ----------------------快捷启动程序-----------------------

esc & l::run C:\Program Files (x86)\TeXstudio\texstudio.exe
WinActivate 
return


esc & t::run c:\Users\shixuguo\Documents\GitHub\GTD\0.工作篮.adoc

esc & r::run C:\Windows\System32\Taskmgr.exe

esc & o::run C:\Program Files (x86)\Microsoft Office\root\Office16\ONENOTE.exe

esc & b::
run C:\Program Files\JabRef\jabref.exe
WinActivate 
return

esc & s::Run calc.exe

esc & p::Run powerpnt.exe
WinActivate 
return

esc & w::Run winword.exe
WinActivate 
return

~Alt UP::
    if (A_ThisHotkey = A_PriorHotkey && A_TimeSincePriorHotkey < 500)
	{
	run C:\Program Files (x86)\Microsoft Bing Dictionary\BingDict.exe
	}
return

esc & a::
; run C:\Program Files (x86)\lspcieee_ahk-master\IME.ahk
run C:\Users\shixuguo\Documents\GitHub\WindowPadX\windowpadx.ahk
; run C:\Program Files\Listary\Listary.exe
return

esc & q::run C:\Program Files (x86)\Tencent\WeChat\wechat.exe
WinActivate 
return

esc & d::run C:\Users\shixuguo\Documents\GitHub\Ghoster\Ghoster.ahk

printscreen::run C:\WINDOWS\system32\SnippingTool.exe

; -------------------快捷切换输入法
esc & e:: run totalcmd64.exe 
; esc & z::SwitchIME(00000804)

esc::
send {esc}
send {esc}
return



; =============================================


; RShift UP::SwitchIME(00000804)

; ~LShift UP::
    ; if (A_ThisHotkey = A_PriorHotkey && A_TimeSincePriorHotkey < 200)
	; {
	; SwitchIME(0x04090409)
	; }
; return

; ~RShift UP::SwitchIME(00000804)

; ~LShift UP::
;     if (A_ThisHotkey = A_PriorHotkey && A_TimeSincePriorHotkey < 500)
;         SwitchIME(0x04090409)
; return

; ~RShift UP::
	; if (A_ThisHotkey = A_PriorHotkey && A_TimeSincePriorHotkey < 200)
	; {
	; SwitchIME(0x04090409)
    ; SwitchIME(00000804)
	; }
; return


~RShift UP::
	if !InStr(A_Priorkey,"RShift")
	return

    SwitchIME(00000804)
return


; ~LControl UP::
; 	if !InStr(A_Priorkey,"LControl")
; 	return

; 	send {esc}
; 	send {esc}
; 	SwitchIME(0x04090409)
; return

~LShift UP::
	if !InStr(A_Priorkey,"LShift")
	return

	SwitchIME(0x04090409)
return

SwitchIME(dwLayout){
	HKL:=DllCall("LoadKeyboardLayout", Str, dwLayout, UInt, 1)
	ControlGetFocus,ctl,A
	SendMessage,0x50,0,HKL,%ctl%,A
}








class User_N808_SUGAR
{
	Ini()
	{

	}
}


class User_SUGAR
{
	Ini()
	{

	}
}

