;SAYI1 > SAYI2 ISE A PORTUNUN 0.BITINI YAKAN 
;DEGILSE B PORTUNUN 1.BITINI YAKAN PROG.
    
list p	=  p16f877;
#include<p16f877a.inc>
    
    ORG 0X00
    
    DEG1 EQU 0X21
    DEG2 EQU 0X22
 
    MOVLW D'29'
    MOVWF DEG1
    
    MOVLW D'34'
    MOVWF DEG2
    
    ;OTHER CODES
    
    MOVFW DEG2
    BSF STATUS,C
    SUBWF DEG1,F
    BTFSS STATUS,C
    GOTO SAYI2BUYUK
    GOTO SAYI1BUYUK
    
    
    SAYI2BUYUK
	BANKSEL TRISB
	CLRF TRISB
	BANKSEL PORTB
	MOVLW B'00000010'
	MOVWF PORTB
	GOTO SONLAN
	
    SAYI1BUYUK
	BANKSEL TRISA
	CLRF TRISA
	BANKSEL PORTA
	MOVLW B'00000001'
	MOVWF PORTA
	
    SONLAN
	END
