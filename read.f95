OPEN (1, file = 'file.txt') 
DO 
    read (1, *, iostat=io) line
    IF (io/=0) EXIT
    print *, line
END DO 
10 CLOSE (1) 

end
