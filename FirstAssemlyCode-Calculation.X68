* Written by: AbdulMuaz Aqeel (Software and Hardware Developer)
* Social    : https://www.facebook.com/AbdulMuaz.Aqeel.SSP
*
* HAVE FUN :)
*

START:
    ORG     $0
    * Printing out a string
    MOVE    #14,D0
    LEA     STRING,A1
    TRAP    #15
    
    * Getting number 1 from user
    MOVE    #4,D0
    TRAP    #15
    MOVE    D1,D2
    
    * Printing out a string
    MOVE    #14,D0
    LEA     STRING,A1
    TRAP    #15
    
    * Getting number 2 from user
    MOVE    #4,D0
    TRAP    #15
    
    
    * Do math a prints result
    ADD     D2,D1
    MOVE    #3,D0
    TRAP    #15
    SIMHALT
    
STRING   DC.B    'Enter a number: ',0

    END    START


*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
