
_LeerTeclado:

;TECLADOLCD.c,20 :: 		char LeerTeclado()
;TECLADOLCD.c,24 :: 		switch(Keypad_Key_Press())
	CALL       _Keypad_Key_Press+0
	GOTO       L_LeerTeclado0
;TECLADOLCD.c,26 :: 		case 1: return 79;
L_LeerTeclado2:
	MOVLW      79
	MOVWF      R0+0
	GOTO       L_end_LeerTeclado
;TECLADOLCD.c,27 :: 		case 2: return 48;
L_LeerTeclado3:
	MOVLW      48
	MOVWF      R0+0
	GOTO       L_end_LeerTeclado
;TECLADOLCD.c,28 :: 		case 3: return 61;
L_LeerTeclado4:
	MOVLW      61
	MOVWF      R0+0
	GOTO       L_end_LeerTeclado
;TECLADOLCD.c,29 :: 		case 4: return 43;
L_LeerTeclado5:
	MOVLW      43
	MOVWF      R0+0
	GOTO       L_end_LeerTeclado
;TECLADOLCD.c,30 :: 		case 5: return 49;
L_LeerTeclado6:
	MOVLW      49
	MOVWF      R0+0
	GOTO       L_end_LeerTeclado
;TECLADOLCD.c,31 :: 		case 6: return 50;
L_LeerTeclado7:
	MOVLW      50
	MOVWF      R0+0
	GOTO       L_end_LeerTeclado
;TECLADOLCD.c,32 :: 		case 7: return 51;
L_LeerTeclado8:
	MOVLW      51
	MOVWF      R0+0
	GOTO       L_end_LeerTeclado
;TECLADOLCD.c,33 :: 		case 8: return 45;
L_LeerTeclado9:
	MOVLW      45
	MOVWF      R0+0
	GOTO       L_end_LeerTeclado
;TECLADOLCD.c,34 :: 		case 9: return 52;
L_LeerTeclado10:
	MOVLW      52
	MOVWF      R0+0
	GOTO       L_end_LeerTeclado
;TECLADOLCD.c,35 :: 		case 10: return 53;
L_LeerTeclado11:
	MOVLW      53
	MOVWF      R0+0
	GOTO       L_end_LeerTeclado
;TECLADOLCD.c,36 :: 		case 11: return 54;
L_LeerTeclado12:
	MOVLW      54
	MOVWF      R0+0
	GOTO       L_end_LeerTeclado
;TECLADOLCD.c,37 :: 		case 12: return 42;
L_LeerTeclado13:
	MOVLW      42
	MOVWF      R0+0
	GOTO       L_end_LeerTeclado
;TECLADOLCD.c,38 :: 		case 13: return 55;
L_LeerTeclado14:
	MOVLW      55
	MOVWF      R0+0
	GOTO       L_end_LeerTeclado
;TECLADOLCD.c,39 :: 		case 14: return 56;
L_LeerTeclado15:
	MOVLW      56
	MOVWF      R0+0
	GOTO       L_end_LeerTeclado
;TECLADOLCD.c,40 :: 		case 15: return 57;
L_LeerTeclado16:
	MOVLW      57
	MOVWF      R0+0
	GOTO       L_end_LeerTeclado
;TECLADOLCD.c,41 :: 		case 16: return 47;
L_LeerTeclado17:
	MOVLW      47
	MOVWF      R0+0
	GOTO       L_end_LeerTeclado
;TECLADOLCD.c,42 :: 		default: return 0; //Tecla no pulsada.
L_LeerTeclado18:
	CLRF       R0+0
	GOTO       L_end_LeerTeclado
;TECLADOLCD.c,43 :: 		}
L_LeerTeclado0:
	MOVF       R0+0, 0
	XORLW      1
	BTFSC      STATUS+0, 2
	GOTO       L_LeerTeclado2
	MOVF       R0+0, 0
	XORLW      2
	BTFSC      STATUS+0, 2
	GOTO       L_LeerTeclado3
	MOVF       R0+0, 0
	XORLW      3
	BTFSC      STATUS+0, 2
	GOTO       L_LeerTeclado4
	MOVF       R0+0, 0
	XORLW      4
	BTFSC      STATUS+0, 2
	GOTO       L_LeerTeclado5
	MOVF       R0+0, 0
	XORLW      5
	BTFSC      STATUS+0, 2
	GOTO       L_LeerTeclado6
	MOVF       R0+0, 0
	XORLW      6
	BTFSC      STATUS+0, 2
	GOTO       L_LeerTeclado7
	MOVF       R0+0, 0
	XORLW      7
	BTFSC      STATUS+0, 2
	GOTO       L_LeerTeclado8
	MOVF       R0+0, 0
	XORLW      8
	BTFSC      STATUS+0, 2
	GOTO       L_LeerTeclado9
	MOVF       R0+0, 0
	XORLW      9
	BTFSC      STATUS+0, 2
	GOTO       L_LeerTeclado10
	MOVF       R0+0, 0
	XORLW      10
	BTFSC      STATUS+0, 2
	GOTO       L_LeerTeclado11
	MOVF       R0+0, 0
	XORLW      11
	BTFSC      STATUS+0, 2
	GOTO       L_LeerTeclado12
	MOVF       R0+0, 0
	XORLW      12
	BTFSC      STATUS+0, 2
	GOTO       L_LeerTeclado13
	MOVF       R0+0, 0
	XORLW      13
	BTFSC      STATUS+0, 2
	GOTO       L_LeerTeclado14
	MOVF       R0+0, 0
	XORLW      14
	BTFSC      STATUS+0, 2
	GOTO       L_LeerTeclado15
	MOVF       R0+0, 0
	XORLW      15
	BTFSC      STATUS+0, 2
	GOTO       L_LeerTeclado16
	MOVF       R0+0, 0
	XORLW      16
	BTFSC      STATUS+0, 2
	GOTO       L_LeerTeclado17
	GOTO       L_LeerTeclado18
;TECLADOLCD.c,44 :: 		}
L_end_LeerTeclado:
	RETURN
; end of _LeerTeclado

_main:

;TECLADOLCD.c,46 :: 		void main() {
;TECLADOLCD.c,51 :: 		Lcd_Init(); //Inicializa el LCD.
	CALL       _Lcd_Init+0
;TECLADOLCD.c,52 :: 		Lcd_Cmd(_LCD_CURSOR_OFF); //Se apaga el cursor.
	MOVLW      12
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;TECLADOLCD.c,53 :: 		Lcd_Out(1, 1,"Tecla:"); //Se imprime texto.
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr1_TECLADOLCD+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;TECLADOLCD.c,54 :: 		while(1)//Bucle infinito.
L_main19:
;TECLADOLCD.c,55 :: 		{   do {
L_main21:
;TECLADOLCD.c,56 :: 		Tecla = LeerTeclado();
	CALL       _LeerTeclado+0
	MOVF       R0+0, 0
	MOVWF      main_Tecla_L0+0
;TECLADOLCD.c,57 :: 		delay_ms(40);
	MOVLW      52
	MOVWF      R12+0
	MOVLW      241
	MOVWF      R13+0
L_main24:
	DECFSZ     R13+0, 1
	GOTO       L_main24
	DECFSZ     R12+0, 1
	GOTO       L_main24
	NOP
	NOP
;TECLADOLCD.c,59 :: 		while(!Tecla); //Se lee el teclado y su resultado se guarda en Tecla.
	MOVF       main_Tecla_L0+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_main21
;TECLADOLCD.c,60 :: 		Lcd_Chr(2,1,Tecla);
	MOVLW      2
	MOVWF      FARG_Lcd_Chr_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Chr_column+0
	MOVF       main_Tecla_L0+0, 0
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;TECLADOLCD.c,61 :: 		delay_ms(40); //Visualización el valor retornado por el teclado.
	MOVLW      52
	MOVWF      R12+0
	MOVLW      241
	MOVWF      R13+0
L_main25:
	DECFSZ     R13+0, 1
	GOTO       L_main25
	DECFSZ     R12+0, 1
	GOTO       L_main25
	NOP
	NOP
;TECLADOLCD.c,62 :: 		}
	GOTO       L_main19
;TECLADOLCD.c,63 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
