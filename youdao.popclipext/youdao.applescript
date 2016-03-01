set appName to "有道词典"
set testword to "{popclip text}"

if application appName is running then
	tell application appName
		activate

		tell application "System Events"
			perform action "AXRaise" of window 1 of process appName
			tell process appName
				keystroke tab
				set value of text field 1 of window "有道词典" of application process "有道词典" of application "System Events" to testword
				click button "查词" of toolbar 1 of window "有道词典" of application process "有道词典" of application "System Events"


			end tell
		end tell
	end tell
else
	tell application appName
		launch
		activate
	end tell
	tell application "System Events"
		perform action "AXRaise" of window 1 of process appName
		tell process appName
			keystroke tab
			set value of text field 1 of window "有道词典" of application process "有道词典" of application "System Events" to testword
			click button "查词" of toolbar 1 of window "有道词典" of application process "有道词典" of application "System Events"


		end tell

	end tell

end if
