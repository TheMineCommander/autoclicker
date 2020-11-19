TrayTip, Welcome to AutoClicker!, You should receive a ToolTip at your mouse!`rHave fun!
InputBox, clickInterval, Click Interval, What interval should I click at? (milliseconds), SHOW, 200, 250, 150, 150
if clickInterval not between 0 and 20000
	SoundPlay *-1
if clickInterval not between 0 and 20000
	MsgBox, !ERROR! Can't start AutoClicker because var clickInterval is set to %clickInterval% and is not between 0 and 20000. To reenter your number, reset the script. INPORTANT: The number should be a simple number with no spaces, letters, special characters, etc. Just a number between 0 and 20000
if clickInterval not between 0 and 20000
	exit 1
sleep 5000
ToolTip, AutoClicker by TheMineCommander!`rHave fun!`r(Hit F10 to toggle on/off)
sleep 3000
ToolTip
SoundBeep 750 1000
Pause On
if clickInterval between 0 and 20000
	Loop
{
	ToolTip, AutoClicker activated`rF10 to toggle
	click
	sleep, %clickInterval%
}
~F10 up::ToolTip
F10::Pause