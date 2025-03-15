
_keypadpress:

;ALARMAFINAL.c,22 :: 		char keypadpress(char kpr)
;ALARMAFINAL.c,24 :: 		char c = kpr;
	MOVF       FARG_keypadpress_kpr+0, 0
	MOVWF      R1+0
;ALARMAFINAL.c,25 :: 		switch(c)
	GOTO       L_keypadpress0
;ALARMAFINAL.c,27 :: 		case 1: return 79;
L_keypadpress2:
	MOVLW      79
	MOVWF      R0+0
	GOTO       L_end_keypadpress
;ALARMAFINAL.c,28 :: 		case 2: return 48;
L_keypadpress3:
	MOVLW      48
	MOVWF      R0+0
	GOTO       L_end_keypadpress
;ALARMAFINAL.c,29 :: 		case 3: return 61;
L_keypadpress4:
	MOVLW      61
	MOVWF      R0+0
	GOTO       L_end_keypadpress
;ALARMAFINAL.c,30 :: 		case 4: return 43;
L_keypadpress5:
	MOVLW      43
	MOVWF      R0+0
	GOTO       L_end_keypadpress
;ALARMAFINAL.c,31 :: 		case 5: return 49;
L_keypadpress6:
	MOVLW      49
	MOVWF      R0+0
	GOTO       L_end_keypadpress
;ALARMAFINAL.c,32 :: 		case 6: return 50;
L_keypadpress7:
	MOVLW      50
	MOVWF      R0+0
	GOTO       L_end_keypadpress
;ALARMAFINAL.c,33 :: 		case 7: return 51;
L_keypadpress8:
	MOVLW      51
	MOVWF      R0+0
	GOTO       L_end_keypadpress
;ALARMAFINAL.c,34 :: 		case 8: return 45;
L_keypadpress9:
	MOVLW      45
	MOVWF      R0+0
	GOTO       L_end_keypadpress
;ALARMAFINAL.c,35 :: 		case 9: return 52;
L_keypadpress10:
	MOVLW      52
	MOVWF      R0+0
	GOTO       L_end_keypadpress
;ALARMAFINAL.c,36 :: 		case 10: return 53;
L_keypadpress11:
	MOVLW      53
	MOVWF      R0+0
	GOTO       L_end_keypadpress
;ALARMAFINAL.c,37 :: 		case 11: return 54;
L_keypadpress12:
	MOVLW      54
	MOVWF      R0+0
	GOTO       L_end_keypadpress
;ALARMAFINAL.c,38 :: 		case 12: return 42;
L_keypadpress13:
	MOVLW      42
	MOVWF      R0+0
	GOTO       L_end_keypadpress
;ALARMAFINAL.c,39 :: 		case 13: return 55;
L_keypadpress14:
	MOVLW      55
	MOVWF      R0+0
	GOTO       L_end_keypadpress
;ALARMAFINAL.c,40 :: 		case 14: return 56;
L_keypadpress15:
	MOVLW      56
	MOVWF      R0+0
	GOTO       L_end_keypadpress
;ALARMAFINAL.c,41 :: 		case 15: return 57;
L_keypadpress16:
	MOVLW      57
	MOVWF      R0+0
	GOTO       L_end_keypadpress
;ALARMAFINAL.c,42 :: 		case 16: return 47;
L_keypadpress17:
	MOVLW      47
	MOVWF      R0+0
	GOTO       L_end_keypadpress
;ALARMAFINAL.c,43 :: 		}
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
;ALARMAFINAL.c,45 :: 		}
L_end_keypadpress:
	RETURN
; end of _keypadpress

_main:

;ALARMAFINAL.c,47 :: 		void main()
;ALARMAFINAL.c,49 :: 		TRISB0_bit = 0;
	BCF        TRISB0_bit+0, BitPos(TRISB0_bit+0)
;ALARMAFINAL.c,50 :: 		TRISB7_bit = 0;
	BCF        TRISB7_bit+0, BitPos(TRISB7_bit+0)
;ALARMAFINAL.c,51 :: 		TRISC6_bit = 1;
	BSF        TRISC6_bit+0, BitPos(TRISC6_bit+0)
;ALARMAFINAL.c,52 :: 		TRISC7_bit = 1;
	BSF        TRISC7_bit+0, BitPos(TRISC7_bit+0)
;ALARMAFINAL.c,53 :: 		RB0_bit = 0;
	BCF        RB0_bit+0, BitPos(RB0_bit+0)
;ALARMAFINAL.c,54 :: 		Keypad_Init();
	CALL       _Keypad_Init+0
;ALARMAFINAL.c,55 :: 		Lcd_Init();
	CALL       _Lcd_Init+0
;ALARMAFINAL.c,56 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;ALARMAFINAL.c,57 :: 		Lcd_Cmd(_LCD_CURSOR_OFF);
	MOVLW      12
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;ALARMAFINAL.c,58 :: 		EEPROM_Write(0,49);
	CLRF       FARG_EEPROM_Write_Address+0
	MOVLW      49
	MOVWF      FARG_EEPROM_Write_data_+0
	CALL       _EEPROM_Write+0
;ALARMAFINAL.c,59 :: 		EEPROM_Write(1,57);
	MOVLW      1
	MOVWF      FARG_EEPROM_Write_Address+0
	MOVLW      57
	MOVWF      FARG_EEPROM_Write_data_+0
	CALL       _EEPROM_Write+0
;ALARMAFINAL.c,60 :: 		EEPROM_Write(2,55);
	MOVLW      2
	MOVWF      FARG_EEPROM_Write_Address+0
	MOVLW      55
	MOVWF      FARG_EEPROM_Write_data_+0
	CALL       _EEPROM_Write+0
;ALARMAFINAL.c,61 :: 		EEPROM_Write(3,50);
	MOVLW      3
	MOVWF      FARG_EEPROM_Write_Address+0
	MOVLW      50
	MOVWF      FARG_EEPROM_Write_data_+0
	CALL       _EEPROM_Write+0
;ALARMAFINAL.c,64 :: 		estado = 0;
	CLRF       _estado+0
	CLRF       _estado+1
;ALARMAFINAL.c,65 :: 		Lcd_Out(1, 1, "SIS SIN ARMAR");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr1_ALARMAFINAL+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;ALARMAFINAL.c,66 :: 		while(1){
L_main18:
;ALARMAFINAL.c,69 :: 		if(estado == 1)
	MOVLW      0
	XORWF      _estado+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main107
	MOVLW      1
	XORWF      _estado+0, 0
L__main107:
	BTFSS      STATUS+0, 2
	GOTO       L_main20
;ALARMAFINAL.c,71 :: 		if(RC6_bit == 1)
	BTFSS      RC6_bit+0, BitPos(RC6_bit+0)
	GOTO       L_main21
;ALARMAFINAL.c,73 :: 		RB0_bit = 1;
	BSF        RB0_bit+0, BitPos(RB0_bit+0)
;ALARMAFINAL.c,74 :: 		Delay_ms(3000);
	MOVLW      16
	MOVWF      R11+0
	MOVLW      57
	MOVWF      R12+0
	MOVLW      13
	MOVWF      R13+0
L_main22:
	DECFSZ     R13+0, 1
	GOTO       L_main22
	DECFSZ     R12+0, 1
	GOTO       L_main22
	DECFSZ     R11+0, 1
	GOTO       L_main22
	NOP
	NOP
;ALARMAFINAL.c,75 :: 		RB0_bit = 0;
	BCF        RB0_bit+0, BitPos(RB0_bit+0)
;ALARMAFINAL.c,76 :: 		}
L_main21:
;ALARMAFINAL.c,78 :: 		}
L_main20:
;ALARMAFINAL.c,79 :: 		do {
L_main23:
;ALARMAFINAL.c,80 :: 		kp = Keypad_Key_Press();
	CALL       _Keypad_Key_Press+0
	MOVF       R0+0, 0
	MOVWF      _kp+0
;ALARMAFINAL.c,81 :: 		Delay_ms(50);
	MOVLW      65
	MOVWF      R12+0
	MOVLW      238
	MOVWF      R13+0
L_main26:
	DECFSZ     R13+0, 1
	GOTO       L_main26
	DECFSZ     R12+0, 1
	GOTO       L_main26
	NOP
;ALARMAFINAL.c,84 :: 		while(!kp);
	MOVF       _kp+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_main23
;ALARMAFINAL.c,86 :: 		kp =  keypadpress(kp);
	MOVF       _kp+0, 0
	MOVWF      FARG_keypadpress_kpr+0
	CALL       _keypadpress+0
	MOVF       R0+0, 0
	MOVWF      _kp+0
;ALARMAFINAL.c,87 :: 		Lcd_Chr(2, 14, kp);
	MOVLW      2
	MOVWF      FARG_Lcd_Chr_row+0
	MOVLW      14
	MOVWF      FARG_Lcd_Chr_column+0
	MOVF       R0+0, 0
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;ALARMAFINAL.c,88 :: 		if(kp == 79 || kp == 61 || kp == 43 || kp == 42 || kp == 45 || kp == 47 )
	MOVF       _kp+0, 0
	XORLW      79
	BTFSC      STATUS+0, 2
	GOTO       L__main104
	MOVF       _kp+0, 0
	XORLW      61
	BTFSC      STATUS+0, 2
	GOTO       L__main104
	MOVF       _kp+0, 0
	XORLW      43
	BTFSC      STATUS+0, 2
	GOTO       L__main104
	MOVF       _kp+0, 0
	XORLW      42
	BTFSC      STATUS+0, 2
	GOTO       L__main104
	MOVF       _kp+0, 0
	XORLW      45
	BTFSC      STATUS+0, 2
	GOTO       L__main104
	MOVF       _kp+0, 0
	XORLW      47
	BTFSC      STATUS+0, 2
	GOTO       L__main104
	GOTO       L_main29
L__main104:
;ALARMAFINAL.c,90 :: 		if(kp == 79 && estado == 0)
	MOVF       _kp+0, 0
	XORLW      79
	BTFSS      STATUS+0, 2
	GOTO       L_main32
	MOVLW      0
	XORWF      _estado+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main108
	MOVLW      0
	XORWF      _estado+0, 0
L__main108:
	BTFSS      STATUS+0, 2
	GOTO       L_main32
L__main103:
;ALARMAFINAL.c,91 :: 		{  Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;ALARMAFINAL.c,92 :: 		Lcd_Out(1, 1, "INTRO NEW P:");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr2_ALARMAFINAL+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;ALARMAFINAL.c,93 :: 		mcontador = 0;
	CLRF       _mcontador+0
	CLRF       _mcontador+1
;ALARMAFINAL.c,94 :: 		while(mcontador>= 0 && mcontador < 4)
L_main33:
	MOVLW      128
	XORWF      _mcontador+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main109
	MOVLW      0
	SUBWF      _mcontador+0, 0
L__main109:
	BTFSS      STATUS+0, 0
	GOTO       L_main34
	MOVLW      128
	XORWF      _mcontador+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main110
	MOVLW      4
	SUBWF      _mcontador+0, 0
L__main110:
	BTFSC      STATUS+0, 0
	GOTO       L_main34
L__main102:
;ALARMAFINAL.c,96 :: 		do{
L_main37:
;ALARMAFINAL.c,97 :: 		kpm = Keypad_Key_Press();
	CALL       _Keypad_Key_Press+0
	MOVF       R0+0, 0
	MOVWF      _kpm+0
;ALARMAFINAL.c,98 :: 		Delay_ms(300);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      134
	MOVWF      R12+0
	MOVLW      153
	MOVWF      R13+0
L_main40:
	DECFSZ     R13+0, 1
	GOTO       L_main40
	DECFSZ     R12+0, 1
	GOTO       L_main40
	DECFSZ     R11+0, 1
	GOTO       L_main40
;ALARMAFINAL.c,100 :: 		while(!kpm);
	MOVF       _kpm+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_main37
;ALARMAFINAL.c,101 :: 		kpm = keypadpress(kpm);
	MOVF       _kpm+0, 0
	MOVWF      FARG_keypadpress_kpr+0
	CALL       _keypadpress+0
	MOVF       R0+0, 0
	MOVWF      _kpm+0
;ALARMAFINAL.c,102 :: 		switch(mcontador)
	GOTO       L_main41
;ALARMAFINAL.c,103 :: 		{    case 0:  Lcd_Chr(2, 1, kpm);
L_main43:
	MOVLW      2
	MOVWF      FARG_Lcd_Chr_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Chr_column+0
	MOVF       _kpm+0, 0
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;ALARMAFINAL.c,104 :: 		umil = kpm;
	MOVF       _kpm+0, 0
	MOVWF      _umil+0
;ALARMAFINAL.c,105 :: 		break;
	GOTO       L_main42
;ALARMAFINAL.c,106 :: 		case 1:  Lcd_Chr(2, 2, kpm);
L_main44:
	MOVLW      2
	MOVWF      FARG_Lcd_Chr_row+0
	MOVLW      2
	MOVWF      FARG_Lcd_Chr_column+0
	MOVF       _kpm+0, 0
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;ALARMAFINAL.c,107 :: 		ucent = kpm;
	MOVF       _kpm+0, 0
	MOVWF      _ucent+0
;ALARMAFINAL.c,108 :: 		break;
	GOTO       L_main42
;ALARMAFINAL.c,109 :: 		case 2:  Lcd_Chr(2, 3, kpm);
L_main45:
	MOVLW      2
	MOVWF      FARG_Lcd_Chr_row+0
	MOVLW      3
	MOVWF      FARG_Lcd_Chr_column+0
	MOVF       _kpm+0, 0
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;ALARMAFINAL.c,110 :: 		udec = kpm;
	MOVF       _kpm+0, 0
	MOVWF      _udec+0
;ALARMAFINAL.c,111 :: 		break;
	GOTO       L_main42
;ALARMAFINAL.c,112 :: 		case 3:  Lcd_Chr(2, 4, kpm);
L_main46:
	MOVLW      2
	MOVWF      FARG_Lcd_Chr_row+0
	MOVLW      4
	MOVWF      FARG_Lcd_Chr_column+0
	MOVF       _kpm+0, 0
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;ALARMAFINAL.c,113 :: 		unid = kpm;
	MOVF       _kpm+0, 0
	MOVWF      _unid+0
;ALARMAFINAL.c,114 :: 		break;
	GOTO       L_main42
;ALARMAFINAL.c,115 :: 		}
L_main41:
	MOVLW      0
	XORWF      _mcontador+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main111
	MOVLW      0
	XORWF      _mcontador+0, 0
L__main111:
	BTFSC      STATUS+0, 2
	GOTO       L_main43
	MOVLW      0
	XORWF      _mcontador+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main112
	MOVLW      1
	XORWF      _mcontador+0, 0
L__main112:
	BTFSC      STATUS+0, 2
	GOTO       L_main44
	MOVLW      0
	XORWF      _mcontador+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main113
	MOVLW      2
	XORWF      _mcontador+0, 0
L__main113:
	BTFSC      STATUS+0, 2
	GOTO       L_main45
	MOVLW      0
	XORWF      _mcontador+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main114
	MOVLW      3
	XORWF      _mcontador+0, 0
L__main114:
	BTFSC      STATUS+0, 2
	GOTO       L_main46
L_main42:
;ALARMAFINAL.c,116 :: 		mcontador++;
	INCF       _mcontador+0, 1
	BTFSC      STATUS+0, 2
	INCF       _mcontador+1, 1
;ALARMAFINAL.c,117 :: 		}
	GOTO       L_main33
L_main34:
;ALARMAFINAL.c,118 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;ALARMAFINAL.c,119 :: 		Lcd_Out(1, 1, "INTRO NEW OVEZ:");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr3_ALARMAFINAL+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;ALARMAFINAL.c,120 :: 		mcontador = 0;
	CLRF       _mcontador+0
	CLRF       _mcontador+1
;ALARMAFINAL.c,121 :: 		while(mcontador>= 0 && mcontador < 4)
L_main47:
	MOVLW      128
	XORWF      _mcontador+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main115
	MOVLW      0
	SUBWF      _mcontador+0, 0
L__main115:
	BTFSS      STATUS+0, 0
	GOTO       L_main48
	MOVLW      128
	XORWF      _mcontador+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main116
	MOVLW      4
	SUBWF      _mcontador+0, 0
L__main116:
	BTFSC      STATUS+0, 0
	GOTO       L_main48
L__main101:
;ALARMAFINAL.c,123 :: 		do{
L_main51:
;ALARMAFINAL.c,124 :: 		kpm = Keypad_Key_Press();
	CALL       _Keypad_Key_Press+0
	MOVF       R0+0, 0
	MOVWF      _kpm+0
;ALARMAFINAL.c,125 :: 		Delay_ms(300);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      134
	MOVWF      R12+0
	MOVLW      153
	MOVWF      R13+0
L_main54:
	DECFSZ     R13+0, 1
	GOTO       L_main54
	DECFSZ     R12+0, 1
	GOTO       L_main54
	DECFSZ     R11+0, 1
	GOTO       L_main54
;ALARMAFINAL.c,127 :: 		while(!kpm);
	MOVF       _kpm+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_main51
;ALARMAFINAL.c,128 :: 		kpm = keypadpress(kpm);
	MOVF       _kpm+0, 0
	MOVWF      FARG_keypadpress_kpr+0
	CALL       _keypadpress+0
	MOVF       R0+0, 0
	MOVWF      _kpm+0
;ALARMAFINAL.c,129 :: 		switch(mcontador)
	GOTO       L_main55
;ALARMAFINAL.c,130 :: 		{    case 0:  Lcd_Chr(2, 1, kpm);
L_main57:
	MOVLW      2
	MOVWF      FARG_Lcd_Chr_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Chr_column+0
	MOVF       _kpm+0, 0
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;ALARMAFINAL.c,131 :: 		passwordc[0] = kpm;
	MOVF       _kpm+0, 0
	MOVWF      _passwordc+0
;ALARMAFINAL.c,132 :: 		break;
	GOTO       L_main56
;ALARMAFINAL.c,133 :: 		case 1:  Lcd_Chr(2, 2, kpm);
L_main58:
	MOVLW      2
	MOVWF      FARG_Lcd_Chr_row+0
	MOVLW      2
	MOVWF      FARG_Lcd_Chr_column+0
	MOVF       _kpm+0, 0
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;ALARMAFINAL.c,134 :: 		passwordc[1] = kpm;
	MOVF       _kpm+0, 0
	MOVWF      _passwordc+1
;ALARMAFINAL.c,135 :: 		break;
	GOTO       L_main56
;ALARMAFINAL.c,136 :: 		case 2:  Lcd_Chr(2, 3, kpm);
L_main59:
	MOVLW      2
	MOVWF      FARG_Lcd_Chr_row+0
	MOVLW      3
	MOVWF      FARG_Lcd_Chr_column+0
	MOVF       _kpm+0, 0
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;ALARMAFINAL.c,137 :: 		passwordc[2] = kpm;
	MOVF       _kpm+0, 0
	MOVWF      _passwordc+2
;ALARMAFINAL.c,138 :: 		break;
	GOTO       L_main56
;ALARMAFINAL.c,139 :: 		case 3:  Lcd_Chr(2, 4, kpm);
L_main60:
	MOVLW      2
	MOVWF      FARG_Lcd_Chr_row+0
	MOVLW      4
	MOVWF      FARG_Lcd_Chr_column+0
	MOVF       _kpm+0, 0
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;ALARMAFINAL.c,140 :: 		passwordc[3] = kpm;
	MOVF       _kpm+0, 0
	MOVWF      _passwordc+3
;ALARMAFINAL.c,141 :: 		break;
	GOTO       L_main56
;ALARMAFINAL.c,142 :: 		}
L_main55:
	MOVLW      0
	XORWF      _mcontador+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main117
	MOVLW      0
	XORWF      _mcontador+0, 0
L__main117:
	BTFSC      STATUS+0, 2
	GOTO       L_main57
	MOVLW      0
	XORWF      _mcontador+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main118
	MOVLW      1
	XORWF      _mcontador+0, 0
L__main118:
	BTFSC      STATUS+0, 2
	GOTO       L_main58
	MOVLW      0
	XORWF      _mcontador+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main119
	MOVLW      2
	XORWF      _mcontador+0, 0
L__main119:
	BTFSC      STATUS+0, 2
	GOTO       L_main59
	MOVLW      0
	XORWF      _mcontador+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main120
	MOVLW      3
	XORWF      _mcontador+0, 0
L__main120:
	BTFSC      STATUS+0, 2
	GOTO       L_main60
L_main56:
;ALARMAFINAL.c,143 :: 		mcontador++;
	INCF       _mcontador+0, 1
	BTFSC      STATUS+0, 2
	INCF       _mcontador+1, 1
;ALARMAFINAL.c,144 :: 		}
	GOTO       L_main47
L_main48:
;ALARMAFINAL.c,145 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;ALARMAFINAL.c,146 :: 		if(passwordc[0] == umil && passwordc[1] == ucent && passwordc[2] == udec && passwordc[3] == unid)
	MOVF       _passwordc+0, 0
	XORWF      _umil+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L_main63
	MOVF       _passwordc+1, 0
	XORWF      _ucent+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L_main63
	MOVF       _passwordc+2, 0
	XORWF      _udec+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L_main63
	MOVF       _passwordc+3, 0
	XORWF      _unid+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L_main63
L__main100:
;ALARMAFINAL.c,148 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;ALARMAFINAL.c,149 :: 		for(i = 0; i<4; i++)
	CLRF       _i+0
	CLRF       _i+1
L_main64:
	MOVLW      128
	XORWF      _i+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main121
	MOVLW      4
	SUBWF      _i+0, 0
L__main121:
	BTFSC      STATUS+0, 0
	GOTO       L_main65
;ALARMAFINAL.c,150 :: 		EEPROM_Write(i, passwordc[i]);
	MOVF       _i+0, 0
	MOVWF      FARG_EEPROM_Write_Address+0
	MOVF       _i+0, 0
	ADDLW      _passwordc+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      FARG_EEPROM_Write_data_+0
	CALL       _EEPROM_Write+0
;ALARMAFINAL.c,149 :: 		for(i = 0; i<4; i++)
	INCF       _i+0, 1
	BTFSC      STATUS+0, 2
	INCF       _i+1, 1
;ALARMAFINAL.c,150 :: 		EEPROM_Write(i, passwordc[i]);
	GOTO       L_main64
L_main65:
;ALARMAFINAL.c,151 :: 		Lcd_Out(1, 1, "Password Modif");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr4_ALARMAFINAL+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;ALARMAFINAL.c,152 :: 		Delay_ms(3000);
	MOVLW      16
	MOVWF      R11+0
	MOVLW      57
	MOVWF      R12+0
	MOVLW      13
	MOVWF      R13+0
L_main67:
	DECFSZ     R13+0, 1
	GOTO       L_main67
	DECFSZ     R12+0, 1
	GOTO       L_main67
	DECFSZ     R11+0, 1
	GOTO       L_main67
	NOP
	NOP
;ALARMAFINAL.c,153 :: 		}
	GOTO       L_main68
L_main63:
;ALARMAFINAL.c,155 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;ALARMAFINAL.c,156 :: 		Lcd_Out(1, 1, "Pass 1 dif 2");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr5_ALARMAFINAL+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;ALARMAFINAL.c,157 :: 		Lcd_Out(2, 1, "Intente Nueva.");
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr6_ALARMAFINAL+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;ALARMAFINAL.c,158 :: 		Delay_ms(3000);
	MOVLW      16
	MOVWF      R11+0
	MOVLW      57
	MOVWF      R12+0
	MOVLW      13
	MOVWF      R13+0
L_main69:
	DECFSZ     R13+0, 1
	GOTO       L_main69
	DECFSZ     R12+0, 1
	GOTO       L_main69
	DECFSZ     R11+0, 1
	GOTO       L_main69
	NOP
	NOP
;ALARMAFINAL.c,159 :: 		}
L_main68:
;ALARMAFINAL.c,160 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;ALARMAFINAL.c,161 :: 		Lcd_Out(1, 1, "SIS SIN ARMAR");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr7_ALARMAFINAL+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;ALARMAFINAL.c,163 :: 		}
	GOTO       L_main70
L_main32:
;ALARMAFINAL.c,165 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;ALARMAFINAL.c,166 :: 		Lcd_Out(1, 1, "SIS ARM");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr8_ALARMAFINAL+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;ALARMAFINAL.c,167 :: 		Lcd_Out(2, 1, "CAM SOLO EN DARM");
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr9_ALARMAFINAL+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;ALARMAFINAL.c,168 :: 		Delay_ms(3000);
	MOVLW      16
	MOVWF      R11+0
	MOVLW      57
	MOVWF      R12+0
	MOVLW      13
	MOVWF      R13+0
L_main71:
	DECFSZ     R13+0, 1
	GOTO       L_main71
	DECFSZ     R12+0, 1
	GOTO       L_main71
	DECFSZ     R11+0, 1
	GOTO       L_main71
	NOP
	NOP
;ALARMAFINAL.c,169 :: 		}
L_main70:
;ALARMAFINAL.c,170 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;ALARMAFINAL.c,171 :: 		if(estado == 0)
	MOVLW      0
	XORWF      _estado+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main122
	MOVLW      0
	XORWF      _estado+0, 0
L__main122:
	BTFSS      STATUS+0, 2
	GOTO       L_main72
;ALARMAFINAL.c,172 :: 		Lcd_Out(1, 1, "SIS SIN ARMAR");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr10_ALARMAFINAL+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
L_main72:
;ALARMAFINAL.c,173 :: 		if(estado == 1)
	MOVLW      0
	XORWF      _estado+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main123
	MOVLW      1
	XORWF      _estado+0, 0
L__main123:
	BTFSS      STATUS+0, 2
	GOTO       L_main73
;ALARMAFINAL.c,174 :: 		Lcd_Out(1, 1, "SIS ARMARDO");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr11_ALARMAFINAL+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
L_main73:
;ALARMAFINAL.c,175 :: 		contador = 0;
	CLRF       _contador+0
	CLRF       _contador+1
;ALARMAFINAL.c,176 :: 		}
	GOTO       L_main74
L_main29:
;ALARMAFINAL.c,178 :: 		contador++;
	INCF       _contador+0, 1
	BTFSC      STATUS+0, 2
	INCF       _contador+1, 1
;ALARMAFINAL.c,179 :: 		switch(contador){
	GOTO       L_main75
;ALARMAFINAL.c,180 :: 		case 1: Lcd_Chr(2, 1, kp);
L_main77:
	MOVLW      2
	MOVWF      FARG_Lcd_Chr_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Chr_column+0
	MOVF       _kp+0, 0
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;ALARMAFINAL.c,182 :: 		umil = kp;
	MOVF       _kp+0, 0
	MOVWF      _umil+0
;ALARMAFINAL.c,183 :: 		break;
	GOTO       L_main76
;ALARMAFINAL.c,184 :: 		case 2: Lcd_Chr(2, 2, kp);
L_main78:
	MOVLW      2
	MOVWF      FARG_Lcd_Chr_row+0
	MOVLW      2
	MOVWF      FARG_Lcd_Chr_column+0
	MOVF       _kp+0, 0
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;ALARMAFINAL.c,186 :: 		ucent = kp;
	MOVF       _kp+0, 0
	MOVWF      _ucent+0
;ALARMAFINAL.c,187 :: 		break;
	GOTO       L_main76
;ALARMAFINAL.c,188 :: 		case 3: Lcd_Chr(2, 3, kp);
L_main79:
	MOVLW      2
	MOVWF      FARG_Lcd_Chr_row+0
	MOVLW      3
	MOVWF      FARG_Lcd_Chr_column+0
	MOVF       _kp+0, 0
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;ALARMAFINAL.c,190 :: 		udec = kp;
	MOVF       _kp+0, 0
	MOVWF      _udec+0
;ALARMAFINAL.c,191 :: 		break;
	GOTO       L_main76
;ALARMAFINAL.c,192 :: 		case 4: contador = 0;
L_main80:
	CLRF       _contador+0
	CLRF       _contador+1
;ALARMAFINAL.c,193 :: 		Lcd_Chr(2, 4, kp);
	MOVLW      2
	MOVWF      FARG_Lcd_Chr_row+0
	MOVLW      4
	MOVWF      FARG_Lcd_Chr_column+0
	MOVF       _kp+0, 0
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;ALARMAFINAL.c,195 :: 		for(i = 0; i<4; i++)
	CLRF       _i+0
	CLRF       _i+1
L_main81:
	MOVLW      128
	XORWF      _i+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main124
	MOVLW      4
	SUBWF      _i+0, 0
L__main124:
	BTFSC      STATUS+0, 0
	GOTO       L_main82
;ALARMAFINAL.c,196 :: 		passwordc[i] = EEPROM_Read(i);
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
;ALARMAFINAL.c,195 :: 		for(i = 0; i<4; i++)
	INCF       _i+0, 1
	BTFSC      STATUS+0, 2
	INCF       _i+1, 1
;ALARMAFINAL.c,196 :: 		passwordc[i] = EEPROM_Read(i);
	GOTO       L_main81
L_main82:
;ALARMAFINAL.c,198 :: 		if(passwordc[0] == umil && passwordc[1] == ucent && passwordc[2] == udec && passwordc[3] == kp)
	MOVF       _passwordc+0, 0
	XORWF      _umil+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L_main86
	MOVF       _passwordc+1, 0
	XORWF      _ucent+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L_main86
	MOVF       _passwordc+2, 0
	XORWF      _udec+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L_main86
	MOVF       _passwordc+3, 0
	XORWF      _kp+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L_main86
L__main99:
;ALARMAFINAL.c,200 :: 		if (estado == 0)
	MOVLW      0
	XORWF      _estado+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main125
	MOVLW      0
	XORWF      _estado+0, 0
L__main125:
	BTFSS      STATUS+0, 2
	GOTO       L_main87
;ALARMAFINAL.c,201 :: 		{    intentos = 0;
	CLRF       _intentos+0
	CLRF       _intentos+1
;ALARMAFINAL.c,202 :: 		estado = 1;
	MOVLW      1
	MOVWF      _estado+0
	MOVLW      0
	MOVWF      _estado+1
;ALARMAFINAL.c,203 :: 		RB7_bit = 1;
	BSF        RB7_bit+0, BitPos(RB7_bit+0)
;ALARMAFINAL.c,204 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;ALARMAFINAL.c,205 :: 		Lcd_Out(1, 1, "SIS ARMADO");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr12_ALARMAFINAL+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;ALARMAFINAL.c,206 :: 		Delay_ms(3000);
	MOVLW      16
	MOVWF      R11+0
	MOVLW      57
	MOVWF      R12+0
	MOVLW      13
	MOVWF      R13+0
L_main88:
	DECFSZ     R13+0, 1
	GOTO       L_main88
	DECFSZ     R12+0, 1
	GOTO       L_main88
	DECFSZ     R11+0, 1
	GOTO       L_main88
	NOP
	NOP
;ALARMAFINAL.c,207 :: 		break;
	GOTO       L_main76
;ALARMAFINAL.c,208 :: 		}
L_main87:
;ALARMAFINAL.c,209 :: 		if(estado == 1)
	MOVLW      0
	XORWF      _estado+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main126
	MOVLW      1
	XORWF      _estado+0, 0
L__main126:
	BTFSS      STATUS+0, 2
	GOTO       L_main89
;ALARMAFINAL.c,211 :: 		intentos = 0;
	CLRF       _intentos+0
	CLRF       _intentos+1
;ALARMAFINAL.c,212 :: 		RB7_bit = 0;
	BCF        RB7_bit+0, BitPos(RB7_bit+0)
;ALARMAFINAL.c,213 :: 		estado = 0;
	CLRF       _estado+0
	CLRF       _estado+1
;ALARMAFINAL.c,214 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;ALARMAFINAL.c,215 :: 		Lcd_Out(1, 1, "SIS SIN ARMAR");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr13_ALARMAFINAL+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;ALARMAFINAL.c,216 :: 		Delay_ms(3000);
	MOVLW      16
	MOVWF      R11+0
	MOVLW      57
	MOVWF      R12+0
	MOVLW      13
	MOVWF      R13+0
L_main90:
	DECFSZ     R13+0, 1
	GOTO       L_main90
	DECFSZ     R12+0, 1
	GOTO       L_main90
	DECFSZ     R11+0, 1
	GOTO       L_main90
	NOP
	NOP
;ALARMAFINAL.c,217 :: 		break;
	GOTO       L_main76
;ALARMAFINAL.c,218 :: 		}
L_main89:
;ALARMAFINAL.c,220 :: 		}
	GOTO       L_main91
L_main86:
;ALARMAFINAL.c,222 :: 		{   intentos++;
	INCF       _intentos+0, 1
	BTFSC      STATUS+0, 2
	INCF       _intentos+1, 1
;ALARMAFINAL.c,223 :: 		contador = 0;
	CLRF       _contador+0
	CLRF       _contador+1
;ALARMAFINAL.c,224 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;ALARMAFINAL.c,225 :: 		Lcd_Out(1, 1, "NO VALIDO");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr14_ALARMAFINAL+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;ALARMAFINAL.c,226 :: 		Delay_ms(2000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main92:
	DECFSZ     R13+0, 1
	GOTO       L_main92
	DECFSZ     R12+0, 1
	GOTO       L_main92
	DECFSZ     R11+0, 1
	GOTO       L_main92
	NOP
	NOP
;ALARMAFINAL.c,227 :: 		if(estado == 0)
	MOVLW      0
	XORWF      _estado+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main127
	MOVLW      0
	XORWF      _estado+0, 0
L__main127:
	BTFSS      STATUS+0, 2
	GOTO       L_main93
;ALARMAFINAL.c,228 :: 		Lcd_Out(1, 1, "SIS SIN ARMAR");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr15_ALARMAFINAL+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
L_main93:
;ALARMAFINAL.c,229 :: 		if(estado == 1)
	MOVLW      0
	XORWF      _estado+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main128
	MOVLW      1
	XORWF      _estado+0, 0
L__main128:
	BTFSS      STATUS+0, 2
	GOTO       L_main94
;ALARMAFINAL.c,230 :: 		Lcd_Out(1, 1, "SIS ARMARDO");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr16_ALARMAFINAL+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
L_main94:
;ALARMAFINAL.c,231 :: 		if(intentos >= 3)
	MOVLW      128
	XORWF      _intentos+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main129
	MOVLW      3
	SUBWF      _intentos+0, 0
L__main129:
	BTFSS      STATUS+0, 0
	GOTO       L_main95
;ALARMAFINAL.c,232 :: 		{ intentos = 0;
	CLRF       _intentos+0
	CLRF       _intentos+1
;ALARMAFINAL.c,233 :: 		Lcd_Out(1, 1, "3 intentos....");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr17_ALARMAFINAL+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;ALARMAFINAL.c,234 :: 		Lcd_Out(2, 1, "Alarm Bloq");
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr18_ALARMAFINAL+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;ALARMAFINAL.c,235 :: 		Delay_ms(5000);
	MOVLW      26
	MOVWF      R11+0
	MOVLW      94
	MOVWF      R12+0
	MOVLW      110
	MOVWF      R13+0
L_main96:
	DECFSZ     R13+0, 1
	GOTO       L_main96
	DECFSZ     R12+0, 1
	GOTO       L_main96
	DECFSZ     R11+0, 1
	GOTO       L_main96
	NOP
;ALARMAFINAL.c,237 :: 		}
L_main95:
;ALARMAFINAL.c,238 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;ALARMAFINAL.c,239 :: 		if(estado == 0)
	MOVLW      0
	XORWF      _estado+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main130
	MOVLW      0
	XORWF      _estado+0, 0
L__main130:
	BTFSS      STATUS+0, 2
	GOTO       L_main97
;ALARMAFINAL.c,240 :: 		Lcd_Out(1, 1, "SIS SIN ARMAR");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr19_ALARMAFINAL+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
L_main97:
;ALARMAFINAL.c,241 :: 		if(estado == 1)
	MOVLW      0
	XORWF      _estado+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main131
	MOVLW      1
	XORWF      _estado+0, 0
L__main131:
	BTFSS      STATUS+0, 2
	GOTO       L_main98
;ALARMAFINAL.c,242 :: 		Lcd_Out(1, 1, "SIS ARMARDO");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr20_ALARMAFINAL+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
L_main98:
;ALARMAFINAL.c,243 :: 		break;
	GOTO       L_main76
;ALARMAFINAL.c,244 :: 		}
L_main91:
;ALARMAFINAL.c,245 :: 		break;
	GOTO       L_main76
;ALARMAFINAL.c,247 :: 		}
L_main75:
	MOVLW      0
	XORWF      _contador+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main132
	MOVLW      1
	XORWF      _contador+0, 0
L__main132:
	BTFSC      STATUS+0, 2
	GOTO       L_main77
	MOVLW      0
	XORWF      _contador+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main133
	MOVLW      2
	XORWF      _contador+0, 0
L__main133:
	BTFSC      STATUS+0, 2
	GOTO       L_main78
	MOVLW      0
	XORWF      _contador+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main134
	MOVLW      3
	XORWF      _contador+0, 0
L__main134:
	BTFSC      STATUS+0, 2
	GOTO       L_main79
	MOVLW      0
	XORWF      _contador+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main135
	MOVLW      4
	XORWF      _contador+0, 0
L__main135:
	BTFSC      STATUS+0, 2
	GOTO       L_main80
L_main76:
;ALARMAFINAL.c,263 :: 		}
L_main74:
;ALARMAFINAL.c,266 :: 		}
	GOTO       L_main18
;ALARMAFINAL.c,267 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
