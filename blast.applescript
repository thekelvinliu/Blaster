set person to ""
repeat while person = ""
  display dialog "Who do you want to blast?" with title "Blaster" default answer "" buttons {"Cancel", "Next"} default button 2
  set person to the text returned of result
end repeat
set msg to ""
repeat while msg = ""
  display dialog "What do you want to blast?" with title "Blaster" default answer "" buttons {"Cancel", "Next"} default button 2
  set msg to the text returned of result
end repeat
set num to ""
repeat while num = ""
  display dialog "How many times do you want it blasted?" with title "Blaster" default answer "1" buttons {"Cancel", "Blast"} default button 2
  set num to the text returned of result as integer
end repeat

tell application "Messages"
  set msg_service to id of first service whose service type is iMessage
  set bud to buddy person of service id msg_service

  repeat num times
    send msg to bud
  end repeat

end tell
