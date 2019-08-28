* Written by: AbdulMuaz Aqeel (Software and Hardware Developer)
* Social    : https://www.facebook.com/AbdulMuaz.Aqeel.SSP
*
* HAVE FUN :)
*

START:
    * PC [PROGRAM COUNTER], MEMORY START ADDRESS
    ORG     $0000
    MOVE    #1,D2
    * PRINTING 'INPUT STRING'
    MOVE    #14,D0
    LEA     USR_IN,A1
    TRAP    #15
    * GETTING INTEGER FROM USER INPUT
    MOVE    #4,D0
    TRAP    #15
    * MOVING THE VALUE TO OTHER REGISTER & INCREMENT IT BY ONE
    MOVE    D1,D3
    ADD     #1,D3
    * (Optional Statment) JUMP TO LOOP FOR COUNTING...
    JMP     LOOP
    
LOOP:
    * SUBTRACT BY ONE, UNTIL N OF NUMBERS REACH 0
    SUB     D2,D3
    MOVE    D3,D1
    * CHECK IF WE REACH 0 OR NO, IF YES: JUMP TO [EXIT_LOOP], NO: KEEP..
    BEQ     EXIT_LOOP
    * PRINTING STRING & VALUE
    MOVE    #17,D0
    LEA     CURNT_VAL,A1
    TRAP    #15
    * JUST KEEP LOOP UNTIL [EXIT_LOOP] OR Z = 0
    BRA     LOOP
    
EXIT_LOOP:
    * PRINTS 'DONE' CONST WHEN Z = 0
    MOVE    #13,D0
    LEA     DONE,A1
    TRAP    #15
    
    SIMHALT         * HALTING THE PROGRAM.

* CONSTANTS
DONE        DC.B        CR,LF,'Done',0
CURNT_VAL   DC.B        CR,LF,'Value is: ',0
USR_IN      DC.B        'KeyBoard Input [(0-9)*] : ',0

* DIFINITIONS
CR          EQU         $0D
LF          EQU         $0A
    END    START





*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
