        IDENTIFICATION DIVISION.
        PROGRAM-ID. caesar.
        
        ENVIRONMENT DIVISION.
        
        DATA DIVISION.
        
        WORKING-STORAGE SECTION.
        01 inputString PIC x(99).
        01 numShift PIC 99.
	
        PROCEDURE DIVISION.
		DISPLAY "Enter a string: " NO ADVANCING
    		ACCEPT inputString
		DISPLAY "Enter an integer: " NO ADVANCING
		ACCEPT numShift    
		MOVE Function Upper-case(inputString) to inputString
		STOP RUN.
	
	encrypt.
	
