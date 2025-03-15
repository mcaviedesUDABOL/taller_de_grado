
_main:

;EJERCICIO4.c,2 :: 		void main()
;EJERCICIO4.c,4 :: 		TRISA = 0b00001;
	MOVLW      1
	MOVWF      TRISA+0
;EJERCICIO4.c,5 :: 		trisb = 0;
	CLRF       TRISB+0
;EJERCICIO4.c,6 :: 		portb = 0;
	CLRF       PORTB+0
;EJERCICIO4.c,8 :: 		while(1)
L_main0:
;EJERCICIO4.c,9 :: 		{      if(porta.f0 == 1 && aux == 0)
	BTFSS      PORTA+0, 0
	GOTO       L_main4
	MOVLW      0
	XORWF      _aux+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main17
	MOVLW      0
	XORWF      _aux+0, 0
L__main17:
	BTFSS      STATUS+0, 2
	GOTO       L_main4
L__main15:
;EJERCICIO4.c,11 :: 		portb.f0 = 1;
	BSF        PORTB+0, 0
;EJERCICIO4.c,12 :: 		delay_ms(40);
	MOVLW      52
	MOVWF      R12+0
	MOVLW      241
	MOVWF      R13+0
L_main5:
	DECFSZ     R13+0, 1
	GOTO       L_main5
	DECFSZ     R12+0, 1
	GOTO       L_main5
	NOP
	NOP
;EJERCICIO4.c,13 :: 		while(porta.f0 == 1);
L_main6:
	BTFSS      PORTA+0, 0
	GOTO       L_main7
	GOTO       L_main6
L_main7:
;EJERCICIO4.c,14 :: 		aux = 1;
	MOVLW      1
	MOVWF      _aux+0
	MOVLW      0
	MOVWF      _aux+1
;EJERCICIO4.c,15 :: 		}
L_main4:
;EJERCICIO4.c,16 :: 		if(porta.f0 == 1 && aux == 1)
	BTFSS      PORTA+0, 0
	GOTO       L_main10
	MOVLW      0
	XORWF      _aux+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main18
	MOVLW      1
	XORWF      _aux+0, 0
L__main18:
	BTFSS      STATUS+0, 2
	GOTO       L_main10
L__main14:
;EJERCICIO4.c,18 :: 		portb.f0 = 0;
	BCF        PORTB+0, 0
;EJERCICIO4.c,19 :: 		delay_ms(40);
	MOVLW      52
	MOVWF      R12+0
	MOVLW      241
	MOVWF      R13+0
L_main11:
	DECFSZ     R13+0, 1
	GOTO       L_main11
	DECFSZ     R12+0, 1
	GOTO       L_main11
	NOP
	NOP
;EJERCICIO4.c,20 :: 		while(porta.f0 == 1);
L_main12:
	BTFSS      PORTA+0, 0
	GOTO       L_main13
	GOTO       L_main12
L_main13:
;EJERCICIO4.c,21 :: 		aux = 0;
	CLRF       _aux+0
	CLRF       _aux+1
;EJERCICIO4.c,22 :: 		}
L_main10:
;EJERCICIO4.c,23 :: 		}
	GOTO       L_main0
;EJERCICIO4.c,24 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
