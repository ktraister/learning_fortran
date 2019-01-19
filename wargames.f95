program wargames
implicit none

character(len=120) :: text
integer            :: flag

print *, "Greetings Dr. Falken. Would you like to play a game?"
read (*, *) text
if (text .NE. "Yes") then
    print *, "Have a good day"
    stop !exit, please and thank you
end if

flag = 1
do
    if (flag == 0) then
        stop
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
            flag = 0
            cycle
        case ("Checkers")
            print *, "That sounds nice"
            flag = 0
            cycle
        case ("Global Thermonuclear War")
            print *, "Are you sure you don't want to play a nice game of chess?"
            text = ""
            read (*, *) text
            print *, ""
            if ( text .EQ. "Later. Let's play GTM") then 
                print *, "If you insist..."
                print *, "BOOM"
                flag = 0
                cycle
            else
                print *, "That's probably a good idea."
                flag = 0
                cycle
            end if 
        case default 
            print *, "Unrecognized option"
    end select 
end do


end program wargames

