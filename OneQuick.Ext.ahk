

;--------------------- 快捷键转义--------------------
appskey::mbutton ;用于surface 没有鼠标中键的情况

#w::send +#m
#d::send #m
; 增强win+d显示桌面的功能

!Media_Prev::send !{F4} 
; 适用于thinkpad蓝牙键盘没有fn锁的情况


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
esc:: send {esc}

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

~LShift UP::SwitchIME(0x04090409)
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
    Else SwitchIME(00000804)
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

