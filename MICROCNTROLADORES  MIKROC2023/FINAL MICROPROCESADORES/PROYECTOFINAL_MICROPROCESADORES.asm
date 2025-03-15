
_keypadpress:

;PROYECTOFINAL_MICROPROCESADORES.c,22 :: 		char keypadpress(char kpr)
;PROYECTOFINAL_MICROPROCESADORES.c,24 :: 		char c = kpr;
	MOVF       FARG_keypadpress_kpr+0, 0
	MOVWF      R1+0
;PROYECTOFINAL_MICROPROCESADORES.c,25 :: 		switch(c)
	GOTO       L_keypadpress0
;PROYECTOFINAL_MICROPROCESADORES.c,27 :: 		case 1: return 79;
L_keypadpress2:
	MOVLW      79
	MOVWF      R0+0
	GOTO       L_end_keypadpress
;PROYECTOFINAL_MICROPROCESADORES.c,28 :: 		case 2: return 48;
L_keypadpress3:
	MOVLW      48
	MOVWF      R0+0
	GOTO       L_end_keypadpress
;PROYECTOFINAL_MICROPROCESADORES.c,29 :: 		case 3: return 61;
L_keypadpress4:
	MOVLW      61
	MOVWF      R0+0
	GOTO       L_end_keypadpress
;PROYECTOFINAL_MICROPROCESADORES.c,30 :: 		case 4: return 43;
L_keypadpress5:
	MOVLW      43
	MOVWF      R0+0
	GOTO       L_end_keypadpress
;PROYECTOFINAL_MICROPROCESADORES.c,31 :: 		case 5: return 49;
L_keypadpress6:
	MOVLW      49
	MOVWF      R0+0
	GOTO       L_end_keypadpress
;PROYECTOFINAL_MICROPROCESADORES.c,32 :: 		case 6: return 50;
L_keypadpress7:
	MOVLW      50
	MOVWF      R0+0
	GOTO       L_end_keypadpress
;PROYECTOFINAL_MICROPROCESADORES.c,33 :: 		case 7: return 51;
L_keypadpress8:
	MOVLW      51
	MOVWF      R0+0
	GOTO       L_end_keypadpress
;PROYECTOFINAL_MICROPROCESADORES.c,34 :: 		case 8: return 45;
L_keypadpress9:
	MOVLW      45
	MOVWF      R0+0
	GOTO       L_end_keypadpress
;PROYECTOFINAL_MICROPROCESADORES.c,35 :: 		case 9: return 52;
L_keypadpress10:
	MOVLW      52
	MOVWF      R0+0
	GOTO       L_end_keypadpress
;PROYECTOFINAL_MICROPROCESADORES.c,36 :: 		case 10: return 53;
L_keypadpress11:
	MOVLW      53
	MOVWF      R0+0
	GOTO       L_end_keypadpress
;PROYECTOFINAL_MICROPROCESADORES.c,37 :: 		case 11: return 54;
L_keypadpress12:
	MOVLW      54
	MOVWF      R0+0
	GOTO       L_end_keypadpress
;PROYECTOFINAL_MICROPROCESADORES.c,38 :: 		case 12: return 42;
L_keypadpress13:
	MOVLW      42
	MOVWF      R0+0
	GOTO       L_end_keypadpress
;PROYECTOFINAL_MICROPROCESADORES.c,39 :: 		case 13: return 55;
L_keypadpress14:
	MOVLW      55
	MOVWF      R0+0
	GOTO       L_end_keypadpress
;PROYECTOFINAL_MICROPROCESADORES.c,40 :: 		case 14: return 56;
L_keypadpress15:
	MOVLW      56
	MOVWF      R0+0
	GOTO       L_end_keypadpress
;PROYECTOFINAL_MICROPROCESADORES.c,41 :: 		case 15: return 57;
L_keypadpress16:
	MOVLW      57
	MOVWF      R0+0
	GOTO       L_end_keypadpress
;PROYECTOFINAL_MICROPROCESADORES.c,42 :: 		case 16: return 47;
L_keypadpress17:
	MOVLW      47
	MOVWF      R0+0
	GOTO       L_end_keypadpress
;PROYECTOFINAL_MICROPROCESADORES.c,59 :: 		*/}
L_keypadpress0:
	MOVF       R1+0, 0
	XORLW      1
	BTFSC      STATUS+0, 2
	GOTO       L_keypadpress2
	MOVF       R1+0, 0
	XORLW      2
	BTFSC      STATUS+0, 2
	GOTO       L_keypadpress3
	MOVF       R1+0, 0
	XORLW      3
	BTFSC      STATUS+0, 2
	GOTO       L_keypadpress4
	MOVF       R1+0, 0
	XORLW      4
	BTFSC      STATUS+0, 2
	GOTO       L_keypadpress5
	MOVF       R1+0, 0
	XORLW      5
	BTFSC      STATUS+0, 2
	GOTO       L_keypadpress6
	MOVF       R1+0, 0
	XORLW      6
	BTFSC      STATUS+0, 2
	GOTO       L_keypadpress7
	MOVF       R1+0, 0
	XORLW      7
	BTFSC      STATUS+0, 2
	GOTO       L_keypadpress8
	MOVF       R1+0, 0
	XORLW      8
	BTFSC      STATUS+0, 2
	GOTO       L_keypadpress9
	MOVF       R1+0, 0
	XORLW      9
	BTFSC      STATUS+0, 2
	GOTO       L_keypadpress10
	MOVF       R1+0, 0
	XORLW      10
	BTFSC      STATUS+0, 2
	GOTO       L_keypadpress11
	MOVF       R1+0, 0
	XORLW      11
	BTFSC      STATUS+0, 2
	GOTO       L_keypadpress12
	MOVF       R1+0, 0
	XORLW      12
	BTFSC      STATUS+0, 2
	GOTO       L_keypadpress13
	MOVF       R1+0, 0
	XORLW      13
	BTFSC      STATUS+0, 2
	GOTO       L_keypadpress14
	MOVF       R1+0, 0
	XORLW      14
	BTFSC      STATUS+0, 2
	GOTO       L_keypadpress15
	MOVF       R1+0, 0
	XORLW      15
	BTFSC      STATUS+0, 2
	GOTO       L_keypadpress16
	MOVF       R1+0, 0
	XORLW      16
	BTFSC      STATUS+0, 2
	GOTO       L_keypadpress17
;PROYECTOFINAL_MICROPROCESADORES.c,61 :: 		}
L_end_keypadpress:
	RETURN
; end of _keypadpress

_main:

;PROYECTOFINAL_MICROPROCESADORES.c,63 :: 		void main()
;PROYECTOFINAL_MICROPROCESADORES.c,65 :: 		TRISB0_bit = 1;
	BSF        TRISB0_bit+0, BitPos(TRISB0_bit+0)
;PROYECTOFINAL_MICROPROCESADORES.c,66 :: 		TRISB7_bit = 0;
	BCF        TRISB7_bit+0, BitPos(TRISB7_bit+0)
;PROYECTOFINAL_MICROPROCESADORES.c,67 :: 		TRISE = 0b11111;
	MOVLW      31
	MOVWF      TRISE+0
;PROYECTOFINAL_MICROPROCESADORES.c,68 :: 		Keypad_Init();
	CALL       _Keypad_Init+0
;PROYECTOFINAL_MICROPROCESADORES.c,69 :: 		Lcd_Init();
	CALL       _Lcd_Init+0
;PROYECTOFINAL_MICROPROCESADORES.c,70 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;PROYECTOFINAL_MICROPROCESADORES.c,71 :: 		Lcd_Cmd(_LCD_CURSOR_OFF);
	MOVLW      12
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;PROYECTOFINAL_MICROPROCESADORES.c,72 :: 		EEPROM_Write(0,49);
	CLRF       FARG_EEPROM_Write_Address+0
	MOVLW      49
	MOVWF      FARG_EEPROM_Write_data_+0
	CALL       _EEPROM_Write+0
;PROYECTOFINAL_MICROPROCESADORES.c,73 :: 		EEPROM_Write(1,57);
	MOVLW      1
	MOVWF      FARG_EEPROM_Write_Address+0
	MOVLW      57
	MOVWF      FARG_EEPROM_Write_data_+0
	CALL       _EEPROM_Write+0
;PROYECTOFINAL_MICROPROCESADORES.c,74 :: 		EEPROM_Write(2,55);
	MOVLW      2
	MOVWF      FARG_EEPROM_Write_Address+0
	MOVLW      55
	MOVWF      FARG_EEPROM_Write_data_+0
	CALL       _EEPROM_Write+0
;PROYECTOFINAL_MICROPROCESADORES.c,75 :: 		EEPROM_Write(3,50);
	MOVLW      3
	MOVWF      FARG_EEPROM_Write_Address+0
	MOVLW      50
	MOVWF      FARG_EEPROM_Write_data_+0
	CALL       _EEPROM_Write+0
;PROYECTOFINAL_MICROPROCESADORES.c,78 :: 		estado = 0;
	CLRF       _estado+0
	CLRF       _estado+1
;PROYECTOFINAL_MICROPROCESADORES.c,79 :: 		Lcd_Out(1, 1, "SIS SIN ARMAR");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr1_PROYECTOFINAL_MICROPROCESADORES+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;PROYECTOFINAL_MICROPROCESADORES.c,80 :: 		while(1){
L_main18:
;PROYECTOFINAL_MICROPROCESADORES.c,83 :: 		do {
L_main20:
;PROYECTOFINAL_MICROPROCESADORES.c,84 :: 		kp = Keypad_Key_Press();
	CALL       _Keypad_Key_Press+0
	MOVF       R0+0, 0
	MOVWF      _kp+0
;PROYECTOFINAL_MICROPROCESADORES.c,85 :: 		Delay_ms(200);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      4
	MOVWF      R12+0
	MOVLW      186
	MOVWF      R13+0
L_main23:
	DECFSZ     R13+0, 1
	GOTO       L_main23
	DECFSZ     R12+0, 1
	GOTO       L_main23
	DECFSZ     R11+0, 1
	GOTO       L_main23
	NOP
;PROYECTOFINAL_MICROPROCESADORES.c,88 :: 		while(!kp);
	MOVF       _kp+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_main20
;PROYECTOFINAL_MICROPROCESADORES.c,90 :: 		kp =  keypadpress(kp);
	MOVF       _kp+0, 0
	MOVWF      FARG_keypadpress_kpr+0
	CALL       _keypadpress+0
	MOVF       R0+0, 0
	MOVWF      _kp+0
;PROYECTOFINAL_MICROPROCESADORES.c,91 :: 		Lcd_Chr(2, 14, kp);
	MOVLW      2
	MOVWF      FARG_Lcd_Chr_row+0
	MOVLW      14
	MOVWF      FARG_Lcd_Chr_column+0
	MOVF       R0+0, 0
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;PROYECTOFINAL_MICROPROCESADORES.c,92 :: 		if(kp == 79 || kp == 61 || kp == 43 || kp == 42 || kp == 45 || kp == 47 )
	MOVF       _kp+0, 0
	XORLW      79
	BTFSC      STATUS+0, 2
	GOTO       L__main101
	MOVF       _kp+0, 0
	XORLW      61
	BTFSC      STATUS+0, 2
	GOTO       L__main101
	MOVF       _kp+0, 0
	XORLW      43
	BTFSC      STATUS+0, 2
	GOTO       L__main101
	MOVF       _kp+0, 0
	XORLW      42
	BTFSC      STATUS+0, 2
	GOTO       L__main101
	MOVF       _kp+0, 0
	XORLW      45
	BTFSC      STATUS+0, 2
	GOTO       L__main101
	MOVF       _kp+0, 0
	XORLW      47
	BTFSC      STATUS+0, 2
	GOTO       L__main101
	GOTO       L_main26
L__main101:
;PROYECTOFINAL_MICROPROCESADORES.c,94 :: 		if(kp == 79 && estado == 0)
	MOVF       _kp+0, 0
	XORLW      79
	BTFSS      STATUS+0, 2
	GOTO       L_main29
	MOVLW      0
	XORWF      _estado+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main104
	MOVLW      0
	XORWF      _estado+0, 0
L__main104:
	BTFSS      STATUS+0, 2
	GOTO       L_main29
L__main100:
;PROYECTOFINAL_MICROPROCESADORES.c,95 :: 		{  Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;PROYECTOFINAL_MICROPROCESADORES.c,96 :: 		Lcd_Out(1, 1, "INTRO NEW P:");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr2_PROYECTOFINAL_MICROPROCESADORES+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;PROYECTOFINAL_MICROPROCESADORES.c,97 :: 		mcontador = 0;
	CLRF       _mcontador+0
	CLRF       _mcontador+1
;PROYECTOFINAL_MICROPROCESADORES.c,98 :: 		while(mcontador>= 0 && mcontador < 4)
L_main30:
	MOVLW      128
	XORWF      _mcontador+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main105
	MOVLW      0
	SUBWF      _mcontador+0, 0
L__main105:
	BTFSS      STATUS+0, 0
	GOTO       L_main31
	MOVLW      128
	XORWF      _mcontador+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main106
	MOVLW      4
	SUBWF      _mcontador+0, 0
L__main106:
	BTFSC      STATUS+0, 0
	GOTO       L_main31
L__main99:
;PROYECTOFINAL_MICROPROCESADORES.c,100 :: 		do{
L_main34:
;PROYECTOFINAL_MICROPROCESADORES.c,101 :: 		kpm = Keypad_Key_Press();
	CALL       _Keypad_Key_Press+0
	MOVF       R0+0, 0
	MOVWF      _kpm+0
;PROYECTOFINAL_MICROPROCESADORES.c,102 :: 		Delay_ms(200);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      4
	MOVWF      R12+0
	MOVLW      186
	MOVWF      R13+0
L_main37:
	DECFSZ     R13+0, 1
	GOTO       L_main37
	DECFSZ     R12+0, 1
	GOTO       L_main37
	DECFSZ     R11+0, 1
	GOTO       L_main37
	NOP
;PROYECTOFINAL_MICROPROCESADORES.c,104 :: 		while(!kpm);
	MOVF       _kpm+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_main34
;PROYECTOFINAL_MICROPROCESADORES.c,105 :: 		kpm = keypadpress(kpm);
	MOVF       _kpm+0, 0
	MOVWF      FARG_keypadpress_kpr+0
	CALL       _keypadpress+0
	MOVF       R0+0, 0
	MOVWF      _kpm+0
;PROYECTOFINAL_MICROPROCESADORES.c,106 :: 		switch(mcontador)
	GOTO       L_main38
;PROYECTOFINAL_MICROPROCESADORES.c,107 :: 		{    case 0:  Lcd_Chr(2, 1, kpm);
L_main40:
	MOVLW      2
	MOVWF      FARG_Lcd_Chr_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Chr_column+0
	MOVF       _kpm+0, 0
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;PROYECTOFINAL_MICROPROCESADORES.c,108 :: 		umil = kpm;
	MOVF       _kpm+0, 0
	MOVWF      _umil+0
;PROYECTOFINAL_MICROPROCESADORES.c,109 :: 		break;
	GOTO       L_main39
;PROYECTOFINAL_MICROPROCESADORES.c,110 :: 		case 1:  Lcd_Chr(2, 2, kpm);
L_main41:
	MOVLW      2
	MOVWF      FARG_Lcd_Chr_row+0
	MOVLW      2
	MOVWF      FARG_Lcd_Chr_column+0
	MOVF       _kpm+0, 0
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;PROYECTOFINAL_MICROPROCESADORES.c,111 :: 		ucent = kpm;
	MOVF       _kpm+0, 0
	MOVWF      _ucent+0
;PROYECTOFINAL_MICROPROCESADORES.c,112 :: 		break;
	GOTO       L_main39
;PROYECTOFINAL_MICROPROCESADORES.c,113 :: 		case 2:  Lcd_Chr(2, 3, kpm);
L_main42:
	MOVLW      2
	MOVWF      FARG_Lcd_Chr_row+0
	MOVLW      3
	MOVWF      FARG_Lcd_Chr_column+0
	MOVF       _kpm+0, 0
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;PROYECTOFINAL_MICROPROCESADORES.c,114 :: 		udec = kpm;
	MOVF       _kpm+0, 0
	MOVWF      _udec+0
;PROYECTOFINAL_MICROPROCESADORES.c,115 :: 		break;
	GOTO       L_main39
;PROYECTOFINAL_MICROPROCESADORES.c,116 :: 		case 3:  Lcd_Chr(2, 4, kpm);
L_main43:
	MOVLW      2
	MOVWF      FARG_Lcd_Chr_row+0
	MOVLW      4
	MOVWF      FARG_Lcd_Chr_column+0
	MOVF       _kpm+0, 0
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;PROYECTOFINAL_MICROPROCESADORES.c,117 :: 		unid = kpm;
	MOVF       _kpm+0, 0
	MOVWF      _unid+0
;PROYECTOFINAL_MICROPROCESADORES.c,118 :: 		break;
	GOTO       L_main39
;PROYECTOFINAL_MICROPROCESADORES.c,119 :: 		}
L_main38:
	MOVLW      0
	XORWF      _mcontador+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main107
	MOVLW      0
	XORWF      _mcontador+0, 0
L__main107:
	BTFSC      STATUS+0, 2
	GOTO       L_main40
	MOVLW      0
	XORWF      _mcontador+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main108
	MOVLW      1
	XORWF      _mcontador+0, 0
L__main108:
	BTFSC      STATUS+0, 2
	GOTO       L_main41
	MOVLW      0
	XORWF      _mcontador+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main109
	MOVLW      2
	XORWF      _mcontador+0, 0
L__main109:
	BTFSC      STATUS+0, 2
	GOTO       L_main42
	MOVLW      0
	XORWF      _mcontador+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main110
	MOVLW      3
	XORWF      _mcontador+0, 0
L__main110:
	BTFSC      STATUS+0, 2
	GOTO       L_main43
L_main39:
;PROYECTOFINAL_MICROPROCESADORES.c,120 :: 		mcontador++;
	INCF       _mcontador+0, 1
	BTFSC      STATUS+0, 2
	INCF       _mcontador+1, 1
;PROYECTOFINAL_MICROPROCESADORES.c,121 :: 		}
	GOTO       L_main30
L_main31:
;PROYECTOFINAL_MICROPROCESADORES.c,122 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;PROYECTOFINAL_MICROPROCESADORES.c,123 :: 		Lcd_Out(1, 1, "INTRO NEW OVEZ:");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr3_PROYECTOFINAL_MICROPROCESADORES+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;PROYECTOFINAL_MICROPROCESADORES.c,124 :: 		mcontador = 0;
	CLRF       _mcontador+0
	CLRF       _mcontador+1
;PROYECTOFINAL_MICROPROCESADORES.c,125 :: 		while(mcontador>= 0 && mcontador < 4)
L_main44:
	MOVLW      128
	XORWF      _mcontador+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main111
	MOVLW      0
	SUBWF      _mcontador+0, 0
L__main111:
	BTFSS      STATUS+0, 0
	GOTO       L_main45
	MOVLW      128
	XORWF      _mcontador+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main112
	MOVLW      4
	SUBWF      _mcontador+0, 0
L__main112:
	BTFSC      STATUS+0, 0
	GOTO       L_main45
L__main98:
;PROYECTOFINAL_MICROPROCESADORES.c,127 :: 		do{
L_main48:
;PROYECTOFINAL_MICROPROCESADORES.c,128 :: 		kpm = Keypad_Key_Press();
	CALL       _Keypad_Key_Press+0
	MOVF       R0+0, 0
	MOVWF      _kpm+0
;PROYECTOFINAL_MICROPROCESADORES.c,129 :: 		Delay_ms(200);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      4
	MOVWF      R12+0
	MOVLW      186
	MOVWF      R13+0
L_main51:
	DECFSZ     R13+0, 1
	GOTO       L_main51
	DECFSZ     R12+0, 1
	GOTO       L_main51
	DECFSZ     R11+0, 1
	GOTO       L_main51
	NOP
;PROYECTOFINAL_MICROPROCESADORES.c,131 :: 		while(!kpm);
	MOVF       _kpm+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_main48
;PROYECTOFINAL_MICROPROCESADORES.c,132 :: 		kpm = keypadpress(kpm);
	MOVF       _kpm+0, 0
	MOVWF      FARG_keypadpress_kpr+0
	CALL       _keypadpress+0
	MOVF       R0+0, 0
	MOVWF      _kpm+0
;PROYECTOFINAL_MICROPROCESADORES.c,133 :: 		switch(mcontador)
	GOTO       L_main52
;PROYECTOFINAL_MICROPROCESADORES.c,134 :: 		{    case 0:  Lcd_Chr(2, 1, kpm);
L_main54:
	MOVLW      2
	MOVWF      FARG_Lcd_Chr_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Chr_column+0
	MOVF       _kpm+0, 0
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;PROYECTOFINAL_MICROPROCESADORES.c,135 :: 		passwordc[0] = kpm;
	MOVF       _kpm+0, 0
	MOVWF      _passwordc+0
;PROYECTOFINAL_MICROPROCESADORES.c,136 :: 		break;
	GOTO       L_main53
;PROYECTOFINAL_MICROPROCESADORES.c,137 :: 		case 1:  Lcd_Chr(2, 2, kpm);
L_main55:
	MOVLW      2
	MOVWF      FARG_Lcd_Chr_row+0
	MOVLW      2
	MOVWF      FARG_Lcd_Chr_column+0
	MOVF       _kpm+0, 0
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;PROYECTOFINAL_MICROPROCESADORES.c,138 :: 		passwordc[1] = kpm;
	MOVF       _kpm+0, 0
	MOVWF      _passwordc+1
;PROYECTOFINAL_MICROPROCESADORES.c,139 :: 		break;
	GOTO       L_main53
;PROYECTOFINAL_MICROPROCESADORES.c,140 :: 		case 2:  Lcd_Chr(2, 3, kpm);
L_main56:
	MOVLW      2
	MOVWF      FARG_Lcd_Chr_row+0
	MOVLW      3
	MOVWF      FARG_Lcd_Chr_column+0
	MOVF       _kpm+0, 0
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;PROYECTOFINAL_MICROPROCESADORES.c,141 :: 		passwordc[2] = kpm;
	MOVF       _kpm+0, 0
	MOVWF      _passwordc+2
;PROYECTOFINAL_MICROPROCESADORES.c,142 :: 		break;
	GOTO       L_main53
;PROYECTOFINAL_MICROPROCESADORES.c,143 :: 		case 3:  Lcd_Chr(2, 4, kpm);
L_main57:
	MOVLW      2
	MOVWF      FARG_Lcd_Chr_row+0
	MOVLW      4
	MOVWF      FARG_Lcd_Chr_column+0
	MOVF       _kpm+0, 0
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;PROYECTOFINAL_MICROPROCESADORES.c,144 :: 		passwordc[3] = kpm;
	MOVF       _kpm+0, 0
	MOVWF      _passwordc+3
;PROYECTOFINAL_MICROPROCESADORES.c,145 :: 		break;
	GOTO       L_main53
;PROYECTOFINAL_MICROPROCESADORES.c,146 :: 		}
L_main52:
	MOVLW      0
	XORWF      _mcontador+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main113
	MOVLW      0
	XORWF      _mcontador+0, 0
L__main113:
	BTFSC      STATUS+0, 2
	GOTO       L_main54
	MOVLW      0
	XORWF      _mcontador+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main114
	MOVLW      1
	XORWF      _mcontador+0, 0
L__main114:
	BTFSC      STATUS+0, 2
	GOTO       L_main55
	MOVLW      0
	XORWF      _mcontador+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main115
	MOVLW      2
	XORWF      _mcontador+0, 0
L__main115:
	BTFSC      STATUS+0, 2
	GOTO       L_main56
	MOVLW      0
	XORWF      _mcontador+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main116
	MOVLW      3
	XORWF      _mcontador+0, 0
L__main116:
	BTFSC      STATUS+0, 2
	GOTO       L_main57
L_main53:
;PROYECTOFINAL_MICROPROCESADORES.c,147 :: 		mcontador++;
	INCF       _mcontador+0, 1
	BTFSC      STATUS+0, 2
	INCF       _mcontador+1, 1
;PROYECTOFINAL_MICROPROCESADORES.c,148 :: 		}
	GOTO       L_main44
L_main45:
;PROYECTOFINAL_MICROPROCESADORES.c,149 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;PROYECTOFINAL_MICROPROCESADORES.c,150 :: 		if(passwordc[0] == umil && passwordc[1] == ucent && passwordc[2] == udec && passwordc[3] == unid)
	MOVF       _passwordc+0, 0
	XORWF      _umil+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L_main60
	MOVF       _passwordc+1, 0
	XORWF      _ucent+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L_main60
	MOVF       _passwordc+2, 0
	XORWF      _udec+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L_main60
	MOVF       _passwordc+3, 0
	XORWF      _unid+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L_main60
L__main97:
;PROYECTOFINAL_MICROPROCESADORES.c,152 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;PROYECTOFINAL_MICROPROCESADORES.c,153 :: 		for(i = 0; i<4; i++)
	CLRF       _i+0
	CLRF       _i+1
L_main61:
	MOVLW      128
	XORWF      _i+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main117
	MOVLW      4
	SUBWF      _i+0, 0
L__main117:
	BTFSC      STATUS+0, 0
	GOTO       L_main62
;PROYECTOFINAL_MICROPROCESADORES.c,154 :: 		EEPROM_Write(i, passwordc[i]);
	MOVF       _i+0, 0
	MOVWF      FARG_EEPROM_Write_Address+0
	MOVF       _i+0, 0
	ADDLW      _passwordc+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      FARG_EEPROM_Write_data_+0
	CALL       _EEPROM_Write+0
;PROYECTOFINAL_MICROPROCESADORES.c,153 :: 		for(i = 0; i<4; i++)
	INCF       _i+0, 1
	BTFSC      STATUS+0, 2
	INCF       _i+1, 1
;PROYECTOFINAL_MICROPROCESADORES.c,154 :: 		EEPROM_Write(i, passwordc[i]);
	GOTO       L_main61
L_main62:
;PROYECTOFINAL_MICROPROCESADORES.c,155 :: 		Lcd_Out(1, 1, "Password Modif");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr4_PROYECTOFINAL_MICROPROCESADORES+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;PROYECTOFINAL_MICROPROCESADORES.c,156 :: 		Delay_ms(3000);
	MOVLW      16
	MOVWF      R11+0
	MOVLW      57
	MOVWF      R12+0
	MOVLW      13
	MOVWF      R13+0
L_main64:
	DECFSZ     R13+0, 1
	GOTO       L_main64
	DECFSZ     R12+0, 1
	GOTO       L_main64
	DECFSZ     R11+0, 1
	GOTO       L_main64
	NOP
	NOP
;PROYECTOFINAL_MICROPROCESADORES.c,157 :: 		}
	GOTO       L_main65
L_main60:
;PROYECTOFINAL_MICROPROCESADORES.c,159 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;PROYECTOFINAL_MICROPROCESADORES.c,160 :: 		Lcd_Out(1, 1, "Pass 1 dif 2");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr5_PROYECTOFINAL_MICROPROCESADORES+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;PROYECTOFINAL_MICROPROCESADORES.c,161 :: 		Lcd_Out(2, 1, "Intente Nueva.");
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr6_PROYECTOFINAL_MICROPROCESADORES+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;PROYECTOFINAL_MICROPROCESADORES.c,162 :: 		Delay_ms(3000);
	MOVLW      16
	MOVWF      R11+0
	MOVLW      57
	MOVWF      R12+0
	MOVLW      13
	MOVWF      R13+0
L_main66:
	DECFSZ     R13+0, 1
	GOTO       L_main66
	DECFSZ     R12+0, 1
	GOTO       L_main66
	DECFSZ     R11+0, 1
	GOTO       L_main66
	NOP
	NOP
;PROYECTOFINAL_MICROPROCESADORES.c,163 :: 		}
L_main65:
;PROYECTOFINAL_MICROPROCESADORES.c,164 :: 		Lcd_Out(1, 1, "SIS SIN ARMAR");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr7_PROYECTOFINAL_MICROPROCESADORES+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;PROYECTOFINAL_MICROPROCESADORES.c,166 :: 		}
	GOTO       L_main67
L_main29:
;PROYECTOFINAL_MICROPROCESADORES.c,168 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;PROYECTOFINAL_MICROPROCESADORES.c,169 :: 		Lcd_Out(1, 1, "SIS ARM");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr8_PROYECTOFINAL_MICROPROCESADORES+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;PROYECTOFINAL_MICROPROCESADORES.c,170 :: 		Lcd_Out(2, 1, "CAM SOLO EN DARM");
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr9_PROYECTOFINAL_MICROPROCESADORES+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;PROYECTOFINAL_MICROPROCESADORES.c,171 :: 		Delay_ms(3000);
	MOVLW      16
	MOVWF      R11+0
	MOVLW      57
	MOVWF      R12+0
	MOVLW      13
	MOVWF      R13+0
L_main68:
	DECFSZ     R13+0, 1
	GOTO       L_main68
	DECFSZ     R12+0, 1
	GOTO       L_main68
	DECFSZ     R11+0, 1
	GOTO       L_main68
	NOP
	NOP
;PROYECTOFINAL_MICROPROCESADORES.c,172 :: 		}
L_main67:
;PROYECTOFINAL_MICROPROCESADORES.c,173 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;PROYECTOFINAL_MICROPROCESADORES.c,174 :: 		if(estado == 0)
	MOVLW      0
	XORWF      _estado+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main118
	MOVLW      0
	XORWF      _estado+0, 0
L__main118:
	BTFSS      STATUS+0, 2
	GOTO       L_main69
;PROYECTOFINAL_MICROPROCESADORES.c,175 :: 		Lcd_Out(1, 1, "SIS SIN ARMAR");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr10_PROYECTOFINAL_MICROPROCESADORES+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
L_main69:
;PROYECTOFINAL_MICROPROCESADORES.c,176 :: 		if(estado == 1)
	MOVLW      0
	XORWF      _estado+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main119
	MOVLW      1
	XORWF      _estado+0, 0
L__main119:
	BTFSS      STATUS+0, 2
	GOTO       L_main70
;PROYECTOFINAL_MICROPROCESADORES.c,177 :: 		Lcd_Out(1, 1, "SIS ARMARDO");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr11_PROYECTOFINAL_MICROPROCESADORES+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
L_main70:
;PROYECTOFINAL_MICROPROCESADORES.c,178 :: 		contador = 0;
	CLRF       _contador+0
	CLRF       _contador+1
;PROYECTOFINAL_MICROPROCESADORES.c,179 :: 		}
	GOTO       L_main71
L_main26:
;PROYECTOFINAL_MICROPROCESADORES.c,181 :: 		contador++;
	INCF       _contador+0, 1
	BTFSC      STATUS+0, 2
	INCF       _contador+1, 1
;PROYECTOFINAL_MICROPROCESADORES.c,182 :: 		switch(contador){
	GOTO       L_main72
;PROYECTOFINAL_MICROPROCESADORES.c,183 :: 		case 1: Lcd_Chr(2, 1, kp);
L_main74:
	MOVLW      2
	MOVWF      FARG_Lcd_Chr_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Chr_column+0
	MOVF       _kp+0, 0
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;PROYECTOFINAL_MICROPROCESADORES.c,185 :: 		umil = kp;
	MOVF       _kp+0, 0
	MOVWF      _umil+0
;PROYECTOFINAL_MICROPROCESADORES.c,186 :: 		break;
	GOTO       L_main73
;PROYECTOFINAL_MICROPROCESADORES.c,187 :: 		case 2: Lcd_Chr(2, 2, kp);
L_main75:
	MOVLW      2
	MOVWF      FARG_Lcd_Chr_row+0
	MOVLW      2
	MOVWF      FARG_Lcd_Chr_column+0
	MOVF       _kp+0, 0
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;PROYECTOFINAL_MICROPROCESADORES.c,189 :: 		ucent = kp;
	MOVF       _kp+0, 0
	MOVWF      _ucent+0
;PROYECTOFINAL_MICROPROCESADORES.c,190 :: 		break;
	GOTO       L_main73
;PROYECTOFINAL_MICROPROCESADORES.c,191 :: 		case 3: Lcd_Chr(2, 3, kp);
L_main76:
	MOVLW      2
	MOVWF      FARG_Lcd_Chr_row+0
	MOVLW      3
	MOVWF      FARG_Lcd_Chr_column+0
	MOVF       _kp+0, 0
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;PROYECTOFINAL_MICROPROCESADORES.c,193 :: 		udec = kp;
	MOVF       _kp+0, 0
	MOVWF      _udec+0
;PROYECTOFINAL_MICROPROCESADORES.c,194 :: 		break;
	GOTO       L_main73
;PROYECTOFINAL_MICROPROCESADORES.c,195 :: 		case 4: contador = 0;
L_main77:
	CLRF       _contador+0
	CLRF       _contador+1
;PROYECTOFINAL_MICROPROCESADORES.c,196 :: 		Lcd_Chr(2, 4, kp);
	MOVLW      2
	MOVWF      FARG_Lcd_Chr_row+0
	MOVLW      4
	MOVWF      FARG_Lcd_Chr_column+0
	MOVF       _kp+0, 0
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;PROYECTOFINAL_MICROPROCESADORES.c,198 :: 		for(i = 0; i<4; i++)
	CLRF       _i+0
	CLRF       _i+1
L_main78:
	MOVLW      128
	XORWF      _i+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main120
	MOVLW      4
	SUBWF      _i+0, 0
L__main120:
	BTFSC      STATUS+0, 0
	GOTO       L_main79
;PROYECTOFINAL_MICROPROCESADORES.c,199 :: 		passwordc[i] = EEPROM_Read(i);
	MOVF       _i+0, 0
	ADDLW      _passwordc+0
	MOVWF      FLOC__main+0
	MOVF       _i+0, 0
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       FLOC__main+0, 0
	MOVWF      FSR
	MOVF       R0+0, 0
	MOVWF      INDF+0
;PROYECTOFINAL_MICROPROCESADORES.c,198 :: 		for(i = 0; i<4; i++)
	INCF       _i+0, 1
	BTFSC      STATUS+0, 2
	INCF       _i+1, 1
;PROYECTOFINAL_MICROPROCESADORES.c,199 :: 		passwordc[i] = EEPROM_Read(i);
	GOTO       L_main78
L_main79:
;PROYECTOFINAL_MICROPROCESADORES.c,201 :: 		if(passwordc[0] == umil && passwordc[1] == ucent && passwordc[2] == udec && passwordc[3] == kp)
	MOVF       _passwordc+0, 0
	XORWF      _umil+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L_main83
	MOVF       _passwordc+1, 0
	XORWF      _ucent+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L_main83
	MOVF       _passwordc+2, 0
	XORWF      _udec+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L_main83
	MOVF       _passwordc+3, 0
	XORWF      _kp+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L_main83
L__main96:
;PROYECTOFINAL_MICROPROCESADORES.c,203 :: 		if (estado == 0)
	MOVLW      0
	XORWF      _estado+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main121
	MOVLW      0
	XORWF      _estado+0, 0
L__main121:
	BTFSS      STATUS+0, 2
	GOTO       L_main84
;PROYECTOFINAL_MICROPROCESADORES.c,204 :: 		{    intentos = 0;
	CLRF       _intentos+0
	CLRF       _intentos+1
;PROYECTOFINAL_MICROPROCESADORES.c,205 :: 		Delay_ms(5000);
	MOVLW      26
	MOVWF      R11+0
	MOVLW      94
	MOVWF      R12+0
	MOVLW      110
	MOVWF      R13+0
L_main85:
	DECFSZ     R13+0, 1
	GOTO       L_main85
	DECFSZ     R12+0, 1
	GOTO       L_main85
	DECFSZ     R11+0, 1
	GOTO       L_main85
	NOP
;PROYECTOFINAL_MICROPROCESADORES.c,206 :: 		estado = 1;
	MOVLW      1
	MOVWF      _estado+0
	MOVLW      0
	MOVWF      _estado+1
;PROYECTOFINAL_MICROPROCESADORES.c,207 :: 		RB7_bit = 1;
	BSF        RB7_bit+0, BitPos(RB7_bit+0)
;PROYECTOFINAL_MICROPROCESADORES.c,208 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;PROYECTOFINAL_MICROPROCESADORES.c,209 :: 		Lcd_Out(1, 1, "SIS ARMADO");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr12_PROYECTOFINAL_MICROPROCESADORES+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;PROYECTOFINAL_MICROPROCESADORES.c,210 :: 		break;
	GOTO       L_main73
;PROYECTOFINAL_MICROPROCESADORES.c,211 :: 		}
L_main84:
;PROYECTOFINAL_MICROPROCESADORES.c,212 :: 		if(estado == 1)
	MOVLW      0
	XORWF      _estado+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main122
	MOVLW      1
	XORWF      _estado+0, 0
L__main122:
	BTFSS      STATUS+0, 2
	GOTO       L_main86
;PROYECTOFINAL_MICROPROCESADORES.c,214 :: 		intentos = 0;
	CLRF       _intentos+0
	CLRF       _intentos+1
;PROYECTOFINAL_MICROPROCESADORES.c,215 :: 		Delay_ms(5000);
	MOVLW      26
	MOVWF      R11+0
	MOVLW      94
	MOVWF      R12+0
	MOVLW      110
	MOVWF      R13+0
L_main87:
	DECFSZ     R13+0, 1
	GOTO       L_main87
	DECFSZ     R12+0, 1
	GOTO       L_main87
	DECFSZ     R11+0, 1
	GOTO       L_main87
	NOP
;PROYECTOFINAL_MICROPROCESADORES.c,216 :: 		RB7_bit = 0;
	BCF        RB7_bit+0, BitPos(RB7_bit+0)
;PROYECTOFINAL_MICROPROCESADORES.c,217 :: 		estado = 0;
	CLRF       _estado+0
	CLRF       _estado+1
;PROYECTOFINAL_MICROPROCESADORES.c,218 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;PROYECTOFINAL_MICROPROCESADORES.c,219 :: 		Lcd_Out(1, 1, "SIS SIN ARMAR");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr13_PROYECTOFINAL_MICROPROCESADORES+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;PROYECTOFINAL_MICROPROCESADORES.c,220 :: 		break;
	GOTO       L_main73
;PROYECTOFINAL_MICROPROCESADORES.c,221 :: 		}
L_main86:
;PROYECTOFINAL_MICROPROCESADORES.c,223 :: 		}
	GOTO       L_main88
L_main83:
;PROYECTOFINAL_MICROPROCESADORES.c,225 :: 		{   intentos++;
	INCF       _intentos+0, 1
	BTFSC      STATUS+0, 2
	INCF       _intentos+1, 1
;PROYECTOFINAL_MICROPROCESADORES.c,226 :: 		contador = 0;
	CLRF       _contador+0
	CLRF       _contador+1
;PROYECTOFINAL_MICROPROCESADORES.c,227 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;PROYECTOFINAL_MICROPROCESADORES.c,228 :: 		Lcd_Out(1, 1, "NO VALIDO");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr14_PROYECTOFINAL_MICROPROCESADORES+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;PROYECTOFINAL_MICROPROCESADORES.c,229 :: 		Delay_ms(2000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main89:
	DECFSZ     R13+0, 1
	GOTO       L_main89
	DECFSZ     R12+0, 1
	GOTO       L_main89
	DECFSZ     R11+0, 1
	GOTO       L_main89
	NOP
	NOP
;PROYECTOFINAL_MICROPROCESADORES.c,230 :: 		if(estado == 0)
	MOVLW      0
	XORWF      _estado+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main123
	MOVLW      0
	XORWF      _estado+0, 0
L__main123:
	BTFSS      STATUS+0, 2
	GOTO       L_main90
;PROYECTOFINAL_MICROPROCESADORES.c,231 :: 		Lcd_Out(1, 1, "SIS SIN ARMAR");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr15_PROYECTOFINAL_MICROPROCESADORES+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
L_main90:
;PROYECTOFINAL_MICROPROCESADORES.c,232 :: 		if(estado == 1)
	MOVLW      0
	XORWF      _estado+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main124
	MOVLW      1
	XORWF      _estado+0, 0
L__main124:
	BTFSS      STATUS+0, 2
	GOTO       L_main91
;PROYECTOFINAL_MICROPROCESADORES.c,233 :: 		Lcd_Out(1, 1, "SIS ARMARDO");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr16_PROYECTOFINAL_MICROPROCESADORES+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
L_main91:
;PROYECTOFINAL_MICROPROCESADORES.c,234 :: 		if(intentos >= 3)
	MOVLW      128
	XORWF      _intentos+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main125
	MOVLW      3
	SUBWF      _intentos+0, 0
L__main125:
	BTFSS      STATUS+0, 0
	GOTO       L_main92
;PROYECTOFINAL_MICROPROCESADORES.c,235 :: 		{ intentos = 0;
	CLRF       _intentos+0
	CLRF       _intentos+1
;PROYECTOFINAL_MICROPROCESADORES.c,236 :: 		Lcd_Out(1, 1, "3 intentos....");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr17_PROYECTOFINAL_MICROPROCESADORES+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;PROYECTOFINAL_MICROPROCESADORES.c,237 :: 		Lcd_Out(2, 1, "Alarm Bloq");
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr18_PROYECTOFINAL_MICROPROCESADORES+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;PROYECTOFINAL_MICROPROCESADORES.c,238 :: 		i = 2;
	MOVLW      2
	MOVWF      _i+0
	MOVLW      0
	MOVWF      _i+1
;PROYECTOFINAL_MICROPROCESADORES.c,239 :: 		while(i > 0);
L_main93:
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _i+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main126
	MOVF       _i+0, 0
	SUBLW      0
L__main126:
	BTFSC      STATUS+0, 0
	GOTO       L_main94
	GOTO       L_main93
L_main94:
;PROYECTOFINAL_MICROPROCESADORES.c,240 :: 		{ i--;
	MOVLW      1
	SUBWF      _i+0, 1
	BTFSS      STATUS+0, 0
	DECF       _i+1, 1
;PROYECTOFINAL_MICROPROCESADORES.c,241 :: 		Delay_ms(5000);
	MOVLW      26
	MOVWF      R11+0
	MOVLW      94
	MOVWF      R12+0
	MOVLW      110
	MOVWF      R13+0
L_main95:
	DECFSZ     R13+0, 1
	GOTO       L_main95
	DECFSZ     R12+0, 1
	GOTO       L_main95
	DECFSZ     R11+0, 1
	GOTO       L_main95
	NOP
;PROYECTOFINAL_MICROPROCESADORES.c,243 :: 		}
L_main92:
;PROYECTOFINAL_MICROPROCESADORES.c,244 :: 		break;
	GOTO       L_main73
;PROYECTOFINAL_MICROPROCESADORES.c,245 :: 		}
L_main88:
;PROYECTOFINAL_MICROPROCESADORES.c,247 :: 		}
	GOTO       L_main73
L_main72:
	MOVLW      0
	XORWF      _contador+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main127
	MOVLW      1
	XORWF      _contador+0, 0
L__main127:
	BTFSC      STATUS+0, 2
	GOTO       L_main74
	MOVLW      0
	XORWF      _contador+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main128
	MOVLW      2
	XORWF      _contador+0, 0
L__main128:
	BTFSC      STATUS+0, 2
	GOTO       L_main75
	MOVLW      0
	XORWF      _contador+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main129
	MOVLW      3
	XORWF      _contador+0, 0
L__main129:
	BTFSC      STATUS+0, 2
	GOTO       L_main76
	MOVLW      0
	XORWF      _contador+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main130
	MOVLW      4
	XORWF      _contador+0, 0
L__main130:
	BTFSC      STATUS+0, 2
	GOTO       L_main77
L_main73:
;PROYECTOFINAL_MICROPROCESADORES.c,248 :: 		}
L_main71:
;PROYECTOFINAL_MICROPROCESADORES.c,273 :: 		}
	GOTO       L_main18
;PROYECTOFINAL_MICROPROCESADORES.c,274 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
