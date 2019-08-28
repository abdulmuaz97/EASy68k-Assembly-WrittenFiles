* Written by: AbdulMuaz Aqeel (Software and Hardware Developer)
* Social    : https://www.facebook.com/AbdulMuaz.Aqeel.SSP
*
* HAVE FUN :)
*

START:
	* START ADDRESS IN MEMORY, PC
	ORG     $0000
	
	
	MOVE    #14,D0
	LEA     USR_IN,A1
    TRAP    #15             
	
    MOVE    #2,D0
    TRAP    #15             * [TRAP EXECUTION] Implementing 'scanf' in C
    MOVE    A1,A2
    
    MOVE    #14,D0
    LEA     USR_OUT,A1
    TRAP    #15
    
    MOVE    A2,A1
    MOVE    #14,D0
    TRAP    #15
	
    	SIMHALT

* CONSTANTS
STR         DC.B	'Welcome',0
USR_IN      DC.B    'String Input [(Aa-Zz)*]: ',0
USR_OUT     DC.B    CR,LF,'String Output: ',0

* DIFINITIONS
BS      EQU 	$08
HT      EQU	    $09
LF      EQU	    $0A
VT	    EQU	    $0B
CR	    EQU 	$0D

    END    START

*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
