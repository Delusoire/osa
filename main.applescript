set dirname to POSIX path of (path to me)
set binary to dirname & "/Contents/MacOS/bin/spicetify"

on open location input
	do shell script binary & " protocol " & quoted form of input
end open location

on run
	tell application "Terminal"
		activate
		do script binary
	end tell
end run
