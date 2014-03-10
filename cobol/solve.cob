        IDENTIFICATION DIVISION.
        PROGRAM-ID. caesar-solve.
        
        ENVIRONMENT DIVISION.
        
        DATA DIVISION.
        
        WORKING-STORAGE SECTION.
        01 inputString PIC x(99).
        01 tempInputString PIC x(99).
	01 numShift PIC 99.
	01 tempNumShift PIC 9(2).
	01 j PIC 9(3).
	01 i PIC 9(3).
	01 c PIC x(1).	
        PROCEDURE DIVISION.
		DISPLAY "Enter a string: " NO ADVANCING
    		ACCEPT inputString
		DISPLAY "Enter an integer: " NO ADVANCING
		ACCEPT numShift    
		MOVE Function Upper-case(inputString) to inputString
		
		PERFORM VARYING j FROM 0 BY 1 UNTIL j > numShift
			MOVE j to tempNumShift
			MOVE inputString to tempInputString
			IF tempNumShift >= 26
                     		MOVE FUNCTION MOD(tempNumShift, 26) to tempNumShift 
                	END-IF
			PERFORM VARYING i FROM 1 BY 1 UNTIL i > FUNCTION LENGTH(inputString)
	 		IF tempInputString(i:1) IS NOT EQUAL TO SPACE
				MOVE TempInputString (i:1) to c
				IF (FUNCTION ORD(c) - tempNumShift) < FUNCTION ORD("A")
					MOVE FUNCTION CHAR(FUNCTION ORD("Z")
                                        - ((tempNumShift - 1) - (FUNCTION ORD(c) - FUNCTION ORD("A")))) to tempInputString (i:1)
				else
					MOVE FUNCTION CHAR(FUNCTION ORD(c) - tempNumShift) to tempInputString (i:1)			
				END-IF
			END-IF
			END-PERFORM
			DISPLAY "Caesar " j ": " tempInputString
		END-PERFORM
		STOP RUN.
	END PROGRAM caesar-solve.
	
