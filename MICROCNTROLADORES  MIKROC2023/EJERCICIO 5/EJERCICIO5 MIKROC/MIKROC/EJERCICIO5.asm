
_main:

;EJERCICIO5.c,3 :: 		void main()
;EJERCICIO5.c,5 :: 		TRISA = 0b00001;
	MOVLW      1
	MOVWF      TRISA+0
;EJERCICIO5.c,6 :: 		trisb = 0;
	CLRF       TRISB+0
;EJERCICIO5.c,7 :: 		portb = 0;
	CLRF       PORTB+0
;EJERCICIO5.c,9 :: 		while(1)
L_main0:
;EJERCICIO5.c,10 :: 		{      if(porta.f0 == 1 && aux == 0)
	BTFSS      PORTA+0, 0
	GOTO       L_main4
	MOVLW      0
	XORWF      _aux+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main27
	MOVLW      0
	XORWF      _aux+0, 0
L__main27:
	BTFSS      STATUS+0, 2
	GOTO       L_main4
L__main25:
;EJERCICIO5.c,12 :: 		delay_ms(40);
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
;EJERCICIO5.c,13 :: 		while(porta.f0 == 1);
L_main6:
	BTFSS      PORTA+0, 0
	GOTO       L_main7
	GOTO       L_main6
L_main7:
;EJERCICIO5.c,14 :: 		aux = 1;
	MOVLW      1
	MOVWF      _aux+0
	MOVLW      0
	MOVWF      _aux+1
;EJERCICIO5.c,15 :: 		contadora = 1;
	MOVLW      1
	MOVWF      _contadora+0
	MOVLW      0
	MOVWF      _contadora+1
;EJERCICIO5.c,16 :: 		contadord = 256;
	MOVLW      0
	MOVWF      _contadord+0
	MOVLW      1
	MOVWF      _contadord+1
;EJERCICIO5.c,17 :: 		portb = contadora;
	MOVLW      1
	MOVWF      PORTB+0
;EJERCICIO5.c,18 :: 		}
L_main4:
;EJERCICIO5.c,19 :: 		if(porta.f0 == 1 && aux == 1)
	BTFSS      PORTA+0, 0
	GOTO       L_main10
	MOVLW      0
	XORWF      _aux+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main28
	MOVLW      1
	XORWF      _aux+0, 0
L__main28:
	BTFSS      STATUS+0, 2
	GOTO       L_main10
L__main24:
;EJERCICIO5.c,21 :: 		delay_ms(40);
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
;EJERCICIO5.c,22 :: 		while(porta.f0 == 1);
L_main12:
	BTFSS      PORTA+0, 0
	GOTO       L_main13
	GOTO       L_main12
L_main13:
;EJERCICIO5.c,23 :: 		aux = 0;
	CLRF       _aux+0
	CLRF       _aux+1
;EJERCICIO5.c,24 :: 		}
L_main10:
;EJERCICIO5.c,25 :: 		if(aux == 1)
	MOVLW      0
	XORWF      _aux+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main29
	MOVLW      1
	XORWF      _aux+0, 0
L__main29:
	BTFSS      STATUS+0, 2
	GOTO       L_main14
;EJERCICIO5.c,27 :: 		if (contadora >= 1 && contadora <256)
	MOVLW      0
	SUBWF      _contadora+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main30
	MOVLW      1
	SUBWF      _contadora+0, 0
L__main30:
	BTFSS      STATUS+0, 0
	GOTO       L_main17
	MOVLW      1
	SUBWF      _contadora+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main31
	MOVLW      0
	SUBWF      _contadora+0, 0
L__main31:
	BTFSC      STATUS+0, 0
	GOTO       L_main17
L__main23:
;EJERCICIO5.c,29 :: 		portb = contadora;
	MOVF       _contadora+0, 0
	MOVWF      PORTB+0
;EJERCICIO5.c,30 :: 		contadora = contadora*2;
	RLF        _contadora+0, 1
	RLF        _contadora+1, 1
	BCF        _contadora+0, 0
;EJERCICIO5.c,31 :: 		delay_ms(100);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_main18:
	DECFSZ     R13+0, 1
	GOTO       L_main18
	DECFSZ     R12+0, 1
	GOTO       L_main18
	NOP
	NOP
;EJERCICIO5.c,32 :: 		if(contadora == 256)
	MOVF       _contadora+1, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L__main32
	MOVLW      0
	XORWF      _contadora+0, 0
L__main32:
	BTFSS      STATUS+0, 2
	GOTO       L_main19
;EJERCICIO5.c,33 :: 		contadord = 256;
	MOVLW      0
	MOVWF      _contadord+0
	MOVLW      1
	MOVWF      _contadord+1
L_main19:
;EJERCICIO5.c,34 :: 		}
	GOTO       L_main20
L_main17:
;EJERCICIO5.c,36 :: 		contadord = contadord/2;
	MOVF       _contadord+0, 0
	MOVWF      R0+0
	MOVF       _contadord+1, 0
	MOVWF      R0+1
	RRF        R0+1, 1
	RRF        R0+0, 1
	BCF        R0+1, 7
	MOVF       R0+0, 0
	MOVWF      _contadord+0
	MOVF       R0+1, 0
	MOVWF      _contadord+1
;EJERCICIO5.c,37 :: 		portb = contadord;
	MOVF       R0+0, 0
	MOVWF      PORTB+0
;EJERCICIO5.c,38 :: 		delay_ms(100);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_main21:
	DECFSZ     R13+0, 1
	GOTO       L_main21
	DECFSZ     R12+0, 1
	GOTO       L_main21
	NOP
	NOP
;EJERCICIO5.c,39 :: 		if(contadord == 1)
	MOVLW      0
	XORWF      _contadord+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main33
	MOVLW      1
	XORWF      _contadord+0, 0
L__main33:
	BTFSS      STATUS+0, 2
	GOTO       L_main22
;EJERCICIO5.c,40 :: 		contadora = 1;
	MOVLW      1
	MOVWF      _contadora+0
	MOVLW      0
	MOVWF      _contadora+1
L_main22:
;EJERCICIO5.c,41 :: 		}
L_main20:
;EJERCICIO5.c,42 :: 		}
L_main14:
;EJERCICIO5.c,43 :: 		}
	GOTO       L_main0
;EJERCICIO5.c,44 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
