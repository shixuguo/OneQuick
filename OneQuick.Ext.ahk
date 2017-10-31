

;--------------------- 快捷键转义--------------------
appskey::mbutton ;用于surface 没有鼠标中键的情况

#w::send +#m
#d::send #m
; 增强win+d显示桌面的功能

!Media_Prev::send !{F4} 
; 适用于thinkpad蓝牙键盘没有fn锁的情况


;这是必要的 否则单独按下esc不起作用

^b::
{
clipboard=
sleep,200
send,^c
clipwait,2
Loop
{
    StringReplace, clipboard,clipboard, `r`n,%A_SPACE%, UseErrorLevel
    if ErrorLevel = 0  ;ȫ���滻�꣬�˳�ѭ��
        break
}
Loop
{
    StringReplace, clipboard,clipboard, %A_SPACE%%A_SPACE%, %A_SPACE%, UseErrorLevel ;�滻�����ո�Ϊһ���ո�
    if ErrorLevel = 0  
        break
}
return
}

^\::Send {、}

; ------------------缩写转义-----------------------
::ahk::autohotkey
::tc::thermal conductivity
::thr::thermal resistance
::wmk::
(
W\cdot m^{-1}K^{-1}
)
::ttm::
(
T-type method
)
::txk::T型法
::3w::
(
$3\omega$
)











; ------------------待废弃的代码-------------------


; esc & g::
; run C:\Users\shixuguo\Desktop\Groove.lnk
; sleep,2000
; send {Media_Play_Pause}
; return



; esc & f::run I:\���\����������\flowstate_�Զ����\index.html


capslock::
SetCapsLockState ,OFF
return




; ----------------------快捷启动程序-----------------------

esc & l::run C:\Program Files (x86)\TeXstudio\texstudio.exe
WinActivate 
return


esc & t::run C:\totalcmd\TOTALCMD64.exe

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

printscreen::run C:\WINDOWS\system32\SnippingTool.exe

; -------------------快捷切换输入法
esc & e:: run totalcmd64.exe 
esc & z::SwitchIME(00000804)

; esc:: 
; {
; 	send {esc}
; 	SwitchIME(0x04090409)
; 	Return
; }




; ====================================

esc::
if esc_presses > 0 ; SetTimer 已经启动, 所以我们记录键击.
{
    esc_presses += 1
    return
}
; 否则, 这是新开始系列中的首次按下. 把次数设为 1 并启动
; 计时器：
esc_presses = 1
SetTimer, KeyEsc, 400 ; 在 400 毫秒内等待更多的键击.
return

KeyEsc:
SetTimer, KeyEsc, off
if esc_presses = 1 ; 此键按下了一次.
{
	send {esc}
}
else if esc_presses = 2 ; 此键按下了两次.
{
	send {esc}
	SwitchIME(0x04090409)
}
else if esc_presses > 2
{
    SwitchIME(00000804)
}
; 不论触发了上面的哪个动作, 都对 count 进行重置
; 为下一个系列的按下做准备:
esc_presses = 0
return

; =============================================


; RShift UP::SwitchIME(00000804)

~LCtrl UP::
    if (A_ThisHotkey = A_PriorHotkey && A_TimeSincePriorHotkey < 500)
	{
	SwitchIME(0x04090409)
	}


	if (A_ThisHotkey != A_PriorHotkey)
	{
		Send {A_ThisHotkey}
		; Send {Shift}
		; SwitchIME(0x04090409)
	}
return

; ~RShift UP::SwitchIME(00000804)

; ~LShift UP::
;     if (A_ThisHotkey = A_PriorHotkey && A_TimeSincePriorHotkey < 500)
;         SwitchIME(0x04090409)
; return

~RShift UP::
    if (A_ThisHotkey = A_PriorHotkey && A_TimeSincePriorHotkey < 500)
	{
	SwitchIME(0x04090409)
    SwitchIME(00000804)
	}
return


SwitchIME(dwLayout){
    
HKL:=DllCall("LoadKeyboardLayout", Str, dwLayout, UInt, 1)
    
ControlGetFocus,ctl,A
    
SendMessage,0x50,0,HKL,%ctl%,A

}


esc & a::
; run C:\Program Files (x86)\lspcieee_ahk-master\IME.ahk
run C:\Users\shixuguo\Documents\GitHub\WindowPadX\windowpadx.ahk
; run C:\Program Files\Listary\Listary.exe
; run C:\Program Files (x86)\Microsoft Bing Dictionary\BingDict.exe
; run C:\Users\shixuguo\AppData\Local\Pomotodo\pomotodo.exe
return



esc & q::run C:\Program Files (x86)\Tencent\WeChat\wechat.exe
WinActivate 
return


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

