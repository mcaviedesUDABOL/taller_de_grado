
_main:

;EJERCICIO3.c,1 :: 		void main()
;EJERCICIO3.c,2 :: 		{ trisa = 0b00001;
	MOVLW      1
	MOVWF      TRISA+0
;EJERCICIO3.c,3 :: 		trisb = 0;
	CLRF       TRISB+0
;EJERCICIO3.c,4 :: 		portb = 0;
	CLRF       PORTB+0
;EJERCICIO3.c,6 :: 		while(1)
L_main0:
;EJERCICIO3.c,7 :: 		{    if(porta.f0 == 1)
	BTFSS      PORTA+0, 0
	GOTO       L_main2
;EJERCICIO3.c,9 :: 		portb.f0 = 1;
	BSF        PORTB+0, 0
;EJERCICIO3.c,10 :: 		delay_ms(40);
	MOVLW      13
	MOVWF      R12+0
	MOVLW      251
	MOVWF      R13+0
L_main3:
	DECFSZ     R13+0, 1
	GOTO       L_main3
	DECFSZ     R12+0, 1
	GOTO       L_main3
	NOP
	NOP
;EJERCICIO3.c,11 :: 		}
	GOTO       L_main4
L_main2:
;EJERCICIO3.c,14 :: 		portb.f0 = 0;
	BCF        PORTB+0, 0
;EJERCICIO3.c,15 :: 		delay_ms(40);
	MOVLW      13
	MOVWF      R12+0
	MOVLW      251
	MOVWF      R13+0
L_main5:
	DECFSZ     R13+0, 1
	GOTO       L_main5
	DECFSZ     R12+0, 1
	GOTO       L_main5
	NOP
	NOP
;EJERCICIO3.c,16 :: 		}
L_main4:
;EJERCICIO3.c,17 :: 		}
	GOTO       L_main0
;EJERCICIO3.c,18 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
