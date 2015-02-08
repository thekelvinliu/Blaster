on run {input, parameters}
	set num to first item of input
	set person to second item of input
	set msg to third item of input

	tell application "Messages"
		set msg_service to id of first service whose service type is iMessage
		set bud to buddy person of service id msg_service

		repeat num times
			send msg to bud
		end repeat

	end tell

end run
