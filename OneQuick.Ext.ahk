;whatever1111
#IfWinActive ahk_exe Code.exe

#IfWinActive
; \:: ;用于python写注释
; send {\}
; SwitchIME(0x04090409)
; return

; dollar_press=0
; $::
; if dollar_press = 0
; {
; 	send {$}
; 	SwitchIME(0x04090409)
; 	dollar_press =1
; }
; else
; {
; 	send {$}
; 	SwitchIME(00000804)
; 	dollar_press =0
; }
; return

~, UP::
    if (A_ThisHotkey = A_PriorHotkey && A_TimeSincePriorHotkey < 1000)
	{
	send {Backspace}
	send {Backspace}
	send {，}
	}
return
~. UP::
    if (A_ThisHotkey = A_PriorHotkey && A_TimeSincePriorHotkey < 1000)
	{
	send {Backspace}
	send {Backspace}
	send {。}
	}
return
~? UP::
    if (A_ThisHotkey = A_PriorHotkey && A_TimeSincePriorHotkey < 1000)
	{
	send {Backspace}
	send {Backspace}
	send {？}
	}
return
~: UP::
    if (A_ThisHotkey = A_PriorHotkey && A_TimeSincePriorHotkey < 1000)
	{
	send {Backspace}
	send {Backspace}
	send {：}
	}
return
~; UP::
    if (A_ThisHotkey = A_PriorHotkey && A_TimeSincePriorHotkey < 1000)
	{
	send {Backspace}
	send {Backspace}
	send {；}
	}
return
~< UP::
    if (A_ThisHotkey = A_PriorHotkey && A_TimeSincePriorHotkey < 1000)
	{
	send {Backspace}
	send {Backspace}
	send {《}
	}
return
~> UP::
    if (A_ThisHotkey = A_PriorHotkey && A_TimeSincePriorHotkey < 1000)
	{
	send {Backspace}
	send {Backspace}
	send {》}
	}
return
~/ UP::
    if (A_ThisHotkey = A_PriorHotkey && A_TimeSincePriorHotkey < 1000)
	{
	send {Backspace}
	send {Backspace}
	send {、}
	}
return
~^ UP::
    if (A_ThisHotkey = A_PriorHotkey && A_TimeSincePriorHotkey < 1000)
	{
	send {Backspace}
	send {Backspace}
	send {…}
	}
return
~! UP::
    if (A_ThisHotkey = A_PriorHotkey && A_TimeSincePriorHotkey < 1000)
	{
	send {Backspace}
	send {Backspace}
	send {！}
	}
return
~( UP::
    if (A_ThisHotkey = A_PriorHotkey && A_TimeSincePriorHotkey < 1000)
	{
	send {Backspace}
	send {Backspace}
	send {（}
	}
return
~) UP::
    if (A_ThisHotkey = A_PriorHotkey && A_TimeSincePriorHotkey < 1000)
	{
	send {Backspace}
	send {Backspace}
	send {）}
	}
return



; #IfWinActive ahk_exe wechat.exe
; ~LControl UP::
; 	if !InStr(A_Priorkey,"LControl")
; 	return
; 	SwitchIME(0x04090409)
; return
; #IfWinActive

; ~esc UP::
; 	if !InStr(A_Priorkey,"esc")
; 	return
; 	SwitchIME(0x04090409)
; return

+Backspace::
send {Shift Down}{Home}{Shift Up}
send {Backspace}
return
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
#d::run explorer C:\Users\shixuguo\Desktop
; 增强win+d显示桌面的功能

; ::---::- [ ]  





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
::wmk::
(
W\cdot m^{-1}K^{-1}
)
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


Capslock & F1:: run,C:\Users\shixuguo\AppData\Local\Programs\Microsoft VS Code\code.exe C:\Users\shixuguo\Desktop\timelogging\0.main.code-workspace
Capslock  & F2:: run,C:\Users\shixuguo\AppData\Local\Programs\Microsoft VS Code\code.exe C:\Users\shixuguo\Dropbox\todo\todo.code-workspace
Capslock  & F3:: run,C:\Users\shixuguo\Desktop\手动记账
;Capslock  & F4:: run,C:\Users\shixuguo\AppData\Local\Programs\Microsoft VS Code\code.exe C:\Users\shixuguo\Dropbox\writing-edge\main.code-workspace



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
send {esc}
return




; ----------------------快捷启动程序-----------------------

Capslock  & l::run C:\Program Files (x86)\TeXstudio\texstudio.exe
WinActivate 
return


Capslock  & t::run c:\Users\shixuguo\Documents\GitHub\GTD\0.工作篮.adoc

Capslock  & r::run C:\Windows\System32\Taskmgr.exe

Capslock  & o::run C:\Program Files (x86)\Microsoft Office\root\Office16\ONENOTE.exe

Capslock  & b::
run C:\Program Files\JabRef\jabref.exe
WinActivate 
return

Capslock  & s::Run calc.exe

Capslock  & p::Run powerpnt.exe
WinActivate 
return

Capslock  & w::Run winword.exe
WinActivate 
return

~Alt UP::
    if (A_ThisHotkey = A_PriorHotkey && A_TimeSincePriorHotkey < 500)
	{
	run C:\Users\shixuguo\AppData\Local\youdao\dict\Application\YoudaoDict.exe
	}
return

Capslock  & a::
; run C:\Program Files (x86)\lspcieee_ahk-master\IME.ahk
run C:\Users\shixuguo\Documents\GitHub\WindowPadX\windowpadx.ahk
; run C:\Program Files\Listary\Listary.exe
return

Capslock  & q::run C:\Program Files (x86)\Tencent\WeChat\wechat.exe
WinActivate 
return

Capslock  & d::run C:\Users\shixuguo\Documents\GitHub\Ghoster\Ghoster.ahk

printscreen::run C:\WINDOWS\system32\SnippingTool.exe

Capslock  & x::run C:\Program Files\Microvirt\MEmu\MEmuConsole.exe

; -------------------快捷切换输入法
Capslock  & e:: run totalcmd64.exe 
; esc & z::SwitchIME(00000804)

; esc::
; send {esc}
; send {esc}
; return



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

