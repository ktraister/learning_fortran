program wargames
implicit none

character(len=120) :: text

print *, "Greetings Dr. Falken. Would you like to play a game?"
read (*, *) text
if (text .NE. "Yes") then
    print *, "Have a good day"
    stop !exit, please and thank you
end if

text = ""
print *, ""
print *, "What would you like to play"
print *, "Chess"
print *, "Checkers"
print *, "Global Thermonuclear War"
print *, ""
read (*, *) text

select case (text)
    case ("Chess")
        print *, "That sounds nice"
    case ("Checkers")
        print *, "That sounds nice"
    case ("Global Thermonuclear War")
        print *, ""
        print *, "Are you sure you don't want to play a nice game of chess?"
        text = ""
        read (*, *) text
        print *, ""
        if ( text .EQ. "Later. Let's play GTM") then 
            print *, "If you insist..."
            print *, "BOOM"
        else
            print *, "That's probably a good idea."
        end if 
end select 


end program wargames

