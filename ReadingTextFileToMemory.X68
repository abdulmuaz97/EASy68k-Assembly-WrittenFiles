* Written by: AbdulMuaz Aqeel (Software and Hardware Developer)
* Social    : https://www.facebook.com/AbdulMuaz.Aqeel.SSP
*
* HAVE FUN :)
*

START:
	ORG     $0000
	MOVE    #14,D0
	LEA     STR,A1
	TRAP    #15
	LEA     ASK,A1
	TRAP    #15
	LEA     IN,A1
	TRAP    #15
	MOVE    #2,D0
	TRAP    #15
    MOVE    #0,D1
    LEA     TITLE,A1
	LEA     EXT_LST,A2
	LEA     FILE_PATH,A3
	MOVE    #58,D0
	TRAP    #15
	
    MOVE    #14,D0
    LEA     OUT,A1
	TRAP    #15
	MOVE    A3,A1
	MOVE    #13,D0
	TRAP    #15
EXIT:
    NOP
    	SIMHALT
STR	        DC.B	'Welcome, Do you want to play a Game?',LF,CR,0
ASK         DC.B    'Choose (Y) if Yes, (N) for No',LF,CR,0
OUT         DC.B    CR,LF,HT,'Selected: ',0
IN          DC.B    FD,FD,FD,SP,0
TITLE       DC.B    'Open Text File...',0
EXT_LST     DC.B    '*.txt;*.rtf',0
FILE_PATH   DC.B    'C:\main.txt',0
BUFFER      DC.W    255

BS	    EQU	    $08
HT	    EQU	    $09
LF	    EQU	    $0A
VT	    EQU	    $0B
CR	    EQU	    $0D
FD      EQU     $3E
SP      EQU     $20
    END    START

*~Font name~Courier New~
*~Font size~8~
*~Tab type~1~
*~Tab size~4~
