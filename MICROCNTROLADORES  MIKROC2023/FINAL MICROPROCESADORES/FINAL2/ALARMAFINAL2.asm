
_keypadpress:

;ALARMAFINAL2.c,21 :: 		char keypadpress(char kpr)
;ALARMAFINAL2.c,24 :: 		char c = kpr;
	MOVF       FARG_keypadpress_kpr+0, 0
	MOVWF      R1+0
;ALARMAFINAL2.c,25 :: 		switch(c)
	GOTO       L_keypadpress0
;ALARMAFINAL2.c,27 :: 		case 1: return 79;
L_keypadpress2:
	MOVLW      79
	MOVWF      R0+0
	GOTO       L_end_keypadpress
;ALARMAFINAL2.c,28 :: 		case 2: return 48;
L_keypadpress3:
	MOVLW      48
	MOVWF      R0+0
	GOTO       L_end_keypadpress
;ALARMAFINAL2.c,29 :: 		case 3: return 61;
L_keypadpress4:
	MOVLW      61
	MOVWF      R0+0
	GOTO       L_end_keypadpress
;ALARMAFINAL2.c,30 :: 		case 4: return 43;
L_keypadpress5:
	MOVLW      43
	MOVWF      R0+0
	GOTO       L_end_keypadpress
;ALARMAFINAL2.c,31 :: 		case 5: return 49;
L_keypadpress6:
	MOVLW      49
	MOVWF      R0+0
	GOTO       L_end_keypadpress
;ALARMAFINAL2.c,32 :: 		case 6: return 50;
L_keypadpress7:
	MOVLW      50
	MOVWF      R0+0
	GOTO       L_end_keypadpress
;ALARMAFINAL2.c,33 :: 		case 7: return 51;
L_keypadpress8:
	MOVLW      51
	MOVWF      R0+0
	GOTO       L_end_keypadpress
;ALARMAFINAL2.c,34 :: 		case 8: return 45;
L_keypadpress9:
	MOVLW      45
	MOVWF      R0+0
	GOTO       L_end_keypadpress
;ALARMAFINAL2.c,35 :: 		case 9: return 52;
L_keypadpress10:
	MOVLW      52
	MOVWF      R0+0
	GOTO       L_end_keypadpress
;ALARMAFINAL2.c,36 :: 		case 10: return 53;
L_keypadpress11:
	MOVLW      53
	MOVWF      R0+0
	GOTO       L_end_keypadpress
;ALARMAFINAL2.c,37 :: 		case 11: return 54;
L_keypadpress12:
	MOVLW      54
	MOVWF      R0+0
	GOTO       L_end_keypadpress
;ALARMAFINAL2.c,38 :: 		case 12: return 42;
L_keypadpress13:
	MOVLW      42
	MOVWF      R0+0
	GOTO       L_end_keypadpress
;ALARMAFINAL2.c,39 :: 		case 13: return 55;
L_keypadpress14:
	MOVLW      55
	MOVWF      R0+0
	GOTO       L_end_keypadpress
;ALARMAFINAL2.c,40 :: 		case 14: return 56;
L_keypadpress15:
	MOVLW      56
	MOVWF      R0+0
	GOTO       L_end_keypadpress
;ALARMAFINAL2.c,41 :: 		case 15: return 57;
L_keypadpress16:
	MOVLW      57
	MOVWF      R0+0
	GOTO       L_end_keypadpress
;ALARMAFINAL2.c,42 :: 		case 16: return 47;
L_keypadpress17:
	MOVLW      47
	MOVWF      R0+0
	GOTO       L_end_keypadpress
;ALARMAFINAL2.c,43 :: 		}
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
;ALARMAFINAL2.c,45 :: 		}
L_end_keypadpress:
	RETURN
; end of _keypadpress

_readEEPROM:

;ALARMAFINAL2.c,46 :: 		unsigned char readEEPROM(unsigned char add)
;ALARMAFINAL2.c,48 :: 		EEADR = add; //Address to be read
	MOVF       FARG_readEEPROM_add+0, 0
	MOVWF      EEADR+0
;ALARMAFINAL2.c,49 :: 		EECON1.EEPGD = 0;//Selecting EEPROM Data Memory
	BCF        EECON1+0, 7
;ALARMAFINAL2.c,50 :: 		EECON1.RD = 1;//Initialise read cycle
	BSF        EECON1+0, 0
;ALARMAFINAL2.c,51 :: 		Delay_ms(20);
	MOVLW      26
	MOVWF      R12+0
	MOVLW      248
	MOVWF      R13+0
L_readEEPROM18:
	DECFSZ     R13+0, 1
	GOTO       L_readEEPROM18
	DECFSZ     R12+0, 1
	GOTO       L_readEEPROM18
	NOP
;ALARMAFINAL2.c,52 :: 		return EEDATA; //Returning data
	MOVF       EEDATA+0, 0
	MOVWF      R0+0
;ALARMAFINAL2.c,54 :: 		}
L_end_readEEPROM:
	RETURN
; end of _readEEPROM

_writeEEPROM:

;ALARMAFINAL2.c,56 :: 		void writeEEPROM(unsigned char address, unsigned char d)
;ALARMAFINAL2.c,59 :: 		EEADR = address; //Address to write
	MOVF       FARG_writeEEPROM_address+0, 0
	MOVWF      EEADR+0
;ALARMAFINAL2.c,60 :: 		EEDATA = d; //Data to write
	MOVF       FARG_writeEEPROM_d+0, 0
	MOVWF      EEDATA+0
;ALARMAFINAL2.c,61 :: 		EECON1.EEPGD = 0; //Selecting EEPROM Data Memory
	BCF        EECON1+0, 7
;ALARMAFINAL2.c,62 :: 		EECON1.WREN = 1; //Enable writing of EEPROM
	BSF        EECON1+0, 2
;ALARMAFINAL2.c,63 :: 		INTCON_SAVE = INTCON;//Backup INCON interupt register
	MOVF       INTCON+0, 0
	MOVWF      R0+0
;ALARMAFINAL2.c,64 :: 		INTCON = 0; //Diables the interrupt
	CLRF       INTCON+0
;ALARMAFINAL2.c,65 :: 		EECON2 = 0x55; //Required sequence for write to internal EEPROM
	MOVLW      85
	MOVWF      EECON2+0
;ALARMAFINAL2.c,66 :: 		EECON2 = 0xAA; //Required sequence for write to internal EEPROM
	MOVLW      170
	MOVWF      EECON2+0
;ALARMAFINAL2.c,67 :: 		EECON1.WR = 1; //Initialise write cycle
	BSF        EECON1+0, 1
;ALARMAFINAL2.c,68 :: 		INTCON = INTCON_SAVE;//Enables Interrupt
	MOVF       R0+0, 0
	MOVWF      INTCON+0
;ALARMAFINAL2.c,69 :: 		EECON1.WREN = 0; //To disable write
	BCF        EECON1+0, 2
;ALARMAFINAL2.c,70 :: 		while(PIR2.EEIF == 0);//Checking for complition of write operation
L_writeEEPROM19:
	BTFSC      PIR2+0, 4
	GOTO       L_writeEEPROM20
	GOTO       L_writeEEPROM19
L_writeEEPROM20:
;ALARMAFINAL2.c,72 :: 		asm nop; //do nothing
	NOP
;ALARMAFINAL2.c,75 :: 		PIR2.EEIF = 0; //Clearing EEIF bit
	BCF        PIR2+0, 4
;ALARMAFINAL2.c,76 :: 		Delay_ms(20);
	MOVLW      26
	MOVWF      R12+0
	MOVLW      248
	MOVWF      R13+0
L_writeEEPROM21:
	DECFSZ     R13+0, 1
	GOTO       L_writeEEPROM21
	DECFSZ     R12+0, 1
	GOTO       L_writeEEPROM21
	NOP
;ALARMAFINAL2.c,77 :: 		}
L_end_writeEEPROM:
	RETURN
; end of _writeEEPROM

_main:

;ALARMAFINAL2.c,79 :: 		void main() {
;ALARMAFINAL2.c,85 :: 		TRISB0_bit = 0;
	BCF        TRISB0_bit+0, BitPos(TRISB0_bit+0)
;ALARMAFINAL2.c,86 :: 		TRISB7_bit = 0;
	BCF        TRISB7_bit+0, BitPos(TRISB7_bit+0)
;ALARMAFINAL2.c,87 :: 		TRISC6_bit = 1;
	BSF        TRISC6_bit+0, BitPos(TRISC6_bit+0)
;ALARMAFINAL2.c,88 :: 		TRISC7_bit = 1;
	BSF        TRISC7_bit+0, BitPos(TRISC7_bit+0)
;ALARMAFINAL2.c,89 :: 		RB0_bit = 0;
	BCF        RB0_bit+0, BitPos(RB0_bit+0)
;ALARMAFINAL2.c,90 :: 		Keypad_Init();
	CALL       _Keypad_Init+0
;ALARMAFINAL2.c,91 :: 		Lcd_Init();
	CALL       _Lcd_Init+0
;ALARMAFINAL2.c,92 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;ALARMAFINAL2.c,93 :: 		Lcd_Cmd(_LCD_CURSOR_OFF);
	MOVLW      12
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;ALARMAFINAL2.c,94 :: 		EEPROM_Write(0,49);
	CLRF       FARG_EEPROM_Write_Address+0
	MOVLW      49
	MOVWF      FARG_EEPROM_Write_data_+0
	CALL       _EEPROM_Write+0
;ALARMAFINAL2.c,96 :: 		EEPROM_Write(1,57);
	MOVLW      1
	MOVWF      FARG_EEPROM_Write_Address+0
	MOVLW      57
	MOVWF      FARG_EEPROM_Write_data_+0
	CALL       _EEPROM_Write+0
;ALARMAFINAL2.c,98 :: 		EEPROM_Write(2,55);
	MOVLW      2
	MOVWF      FARG_EEPROM_Write_Address+0
	MOVLW      55
	MOVWF      FARG_EEPROM_Write_data_+0
	CALL       _EEPROM_Write+0
;ALARMAFINAL2.c,100 :: 		EEPROM_Write(3,50);
	MOVLW      3
	MOVWF      FARG_EEPROM_Write_Address+0
	MOVLW      50
	MOVWF      FARG_EEPROM_Write_data_+0
	CALL       _EEPROM_Write+0
;ALARMAFINAL2.c,103 :: 		EEPROM_Write(4,48);
	MOVLW      4
	MOVWF      FARG_EEPROM_Write_Address+0
	MOVLW      48
	MOVWF      FARG_EEPROM_Write_data_+0
	CALL       _EEPROM_Write+0
;ALARMAFINAL2.c,105 :: 		EEPROM_Write(5,48);
	MOVLW      5
	MOVWF      FARG_EEPROM_Write_Address+0
	MOVLW      48
	MOVWF      FARG_EEPROM_Write_data_+0
	CALL       _EEPROM_Write+0
;ALARMAFINAL2.c,107 :: 		EEPROM_Write(6,48);
	MOVLW      6
	MOVWF      FARG_EEPROM_Write_Address+0
	MOVLW      48
	MOVWF      FARG_EEPROM_Write_data_+0
	CALL       _EEPROM_Write+0
;ALARMAFINAL2.c,109 :: 		EEPROM_Write(7,48);
	MOVLW      7
	MOVWF      FARG_EEPROM_Write_Address+0
	MOVLW      48
	MOVWF      FARG_EEPROM_Write_data_+0
	CALL       _EEPROM_Write+0
;ALARMAFINAL2.c,112 :: 		EEPROM_Write(8,tsir);
	MOVLW      8
	MOVWF      FARG_EEPROM_Write_Address+0
	MOVF       _tsir+0, 0
	MOVWF      FARG_EEPROM_Write_data_+0
	CALL       _EEPROM_Write+0
;ALARMAFINAL2.c,114 :: 		contador = 0;
	CLRF       _contador+0
	CLRF       _contador+1
;ALARMAFINAL2.c,115 :: 		estado = 0;
	CLRF       _estado+0
	CLRF       _estado+1
;ALARMAFINAL2.c,116 :: 		Lcd_Out(1, 1, "SIS SIN ARMAR");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr1_ALARMAFINAL2+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;ALARMAFINAL2.c,117 :: 		while(1){
L_main22:
;ALARMAFINAL2.c,118 :: 		kp = Keypad_Key_Click();
	CALL       _Keypad_Key_Click+0
	MOVF       R0+0, 0
	MOVWF      _kp+0
;ALARMAFINAL2.c,119 :: 		Delay_ms(50);
	MOVLW      65
	MOVWF      R12+0
	MOVLW      238
	MOVWF      R13+0
L_main24:
	DECFSZ     R13+0, 1
	GOTO       L_main24
	DECFSZ     R12+0, 1
	GOTO       L_main24
	NOP
;ALARMAFINAL2.c,120 :: 		kp =  keypadpress(kp);
	MOVF       _kp+0, 0
	MOVWF      FARG_keypadpress_kpr+0
	CALL       _keypadpress+0
	MOVF       R0+0, 0
	MOVWF      _kp+0
;ALARMAFINAL2.c,121 :: 		Lcd_Chr(2, 14, kp);
	MOVLW      2
	MOVWF      FARG_Lcd_Chr_row+0
	MOVLW      14
	MOVWF      FARG_Lcd_Chr_column+0
	MOVF       R0+0, 0
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;ALARMAFINAL2.c,122 :: 		if(kp == 79 || kp == 61)
	MOVF       _kp+0, 0
	XORLW      79
	BTFSC      STATUS+0, 2
	GOTO       L__main122
	MOVF       _kp+0, 0
	XORLW      61
	BTFSC      STATUS+0, 2
	GOTO       L__main122
	GOTO       L_main27
L__main122:
;ALARMAFINAL2.c,123 :: 		{    if(kp == 79)
	MOVF       _kp+0, 0
	XORLW      79
	BTFSS      STATUS+0, 2
	GOTO       L_main28
;ALARMAFINAL2.c,124 :: 		{   kp = 90;
	MOVLW      90
	MOVWF      _kp+0
;ALARMAFINAL2.c,125 :: 		for(i = 0; i<=3; i++)
	CLRF       _i+0
	CLRF       _i+1
L_main29:
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _i+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main127
	MOVF       _i+0, 0
	SUBLW      3
L__main127:
	BTFSS      STATUS+0, 0
	GOTO       L_main30
;ALARMAFINAL2.c,127 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;ALARMAFINAL2.c,128 :: 		Lcd_Out(1, 1, "PASSWORD M?");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr2_ALARMAFINAL2+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;ALARMAFINAL2.c,130 :: 		do {
L_main32:
;ALARMAFINAL2.c,131 :: 		kpm = Keypad_Key_Click();
	CALL       _Keypad_Key_Click+0
	MOVF       R0+0, 0
	MOVWF      _kpm+0
;ALARMAFINAL2.c,132 :: 		Delay_ms(50);
	MOVLW      65
	MOVWF      R12+0
	MOVLW      238
	MOVWF      R13+0
L_main35:
	DECFSZ     R13+0, 1
	GOTO       L_main35
	DECFSZ     R12+0, 1
	GOTO       L_main35
	NOP
;ALARMAFINAL2.c,134 :: 		while(!kpm);
	MOVF       _kpm+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_main32
;ALARMAFINAL2.c,135 :: 		kpm =  keypadpress(kpm);
	MOVF       _kpm+0, 0
	MOVWF      FARG_keypadpress_kpr+0
	CALL       _keypadpress+0
	MOVF       R0+0, 0
	MOVWF      _kpm+0
;ALARMAFINAL2.c,138 :: 		passwordm[i] = kpm;
	MOVF       _i+0, 0
	ADDLW      _passwordm+0
	MOVWF      FSR
	MOVF       R0+0, 0
	MOVWF      INDF+0
;ALARMAFINAL2.c,139 :: 		Lcd_Chr(2, i+1, passwordm[i]);
	MOVLW      2
	MOVWF      FARG_Lcd_Chr_row+0
	INCF       _i+0, 0
	MOVWF      FARG_Lcd_Chr_column+0
	MOVF       _i+0, 0
	ADDLW      _passwordm+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;ALARMAFINAL2.c,125 :: 		for(i = 0; i<=3; i++)
	INCF       _i+0, 1
	BTFSC      STATUS+0, 2
	INCF       _i+1, 1
;ALARMAFINAL2.c,140 :: 		}
	GOTO       L_main29
L_main30:
;ALARMAFINAL2.c,142 :: 		for(i=0; i<=3; i++)
	CLRF       _i+0
	CLRF       _i+1
L_main36:
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _i+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main128
	MOVF       _i+0, 0
	SUBLW      3
L__main128:
	BTFSS      STATUS+0, 0
	GOTO       L_main37
;ALARMAFINAL2.c,143 :: 		passwordc[i] = EEPROM_Read(i + 4);
	MOVF       _i+0, 0
	ADDLW      _passwordc+0
	MOVWF      FLOC__main+0
	MOVLW      4
	ADDWF      _i+0, 0
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       FLOC__main+0, 0
	MOVWF      FSR
	MOVF       R0+0, 0
	MOVWF      INDF+0
;ALARMAFINAL2.c,142 :: 		for(i=0; i<=3; i++)
	INCF       _i+0, 1
	BTFSC      STATUS+0, 2
	INCF       _i+1, 1
;ALARMAFINAL2.c,143 :: 		passwordc[i] = EEPROM_Read(i + 4);
	GOTO       L_main36
L_main37:
;ALARMAFINAL2.c,144 :: 		if(passwordc[0] == passwordm[0] && passwordc[1] == passwordm[1] && passwordc[2] == passwordm[2] && passwordc[3] == passwordm[3])
	MOVF       _passwordc+0, 0
	XORWF      _passwordm+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L_main41
	MOVF       _passwordc+1, 0
	XORWF      _passwordm+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L_main41
	MOVF       _passwordc+2, 0
	XORWF      _passwordm+2, 0
	BTFSS      STATUS+0, 2
	GOTO       L_main41
	MOVF       _passwordc+3, 0
	XORWF      _passwordm+3, 0
	BTFSS      STATUS+0, 2
	GOTO       L_main41
L__main121:
;ALARMAFINAL2.c,146 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;ALARMAFINAL2.c,147 :: 		Lcd_Out(1, 1, "INTRO NEW P:");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr3_ALARMAFINAL2+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;ALARMAFINAL2.c,149 :: 		while(mcontador>= 0 && mcontador < 4)
L_main42:
	MOVLW      128
	XORWF      _mcontador+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main129
	MOVLW      0
	SUBWF      _mcontador+0, 0
L__main129:
	BTFSS      STATUS+0, 0
	GOTO       L_main43
	MOVLW      128
	XORWF      _mcontador+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main130
	MOVLW      4
	SUBWF      _mcontador+0, 0
L__main130:
	BTFSC      STATUS+0, 0
	GOTO       L_main43
L__main120:
;ALARMAFINAL2.c,151 :: 		do{
L_main46:
;ALARMAFINAL2.c,152 :: 		kpm = Keypad_Key_Click();
	CALL       _Keypad_Key_Click+0
	MOVF       R0+0, 0
	MOVWF      _kpm+0
;ALARMAFINAL2.c,153 :: 		Delay_ms(300);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      134
	MOVWF      R12+0
	MOVLW      153
	MOVWF      R13+0
L_main49:
	DECFSZ     R13+0, 1
	GOTO       L_main49
	DECFSZ     R12+0, 1
	GOTO       L_main49
	DECFSZ     R11+0, 1
	GOTO       L_main49
;ALARMAFINAL2.c,155 :: 		while(!kpm);
	MOVF       _kpm+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_main46
;ALARMAFINAL2.c,156 :: 		kpm = keypadpress(kpm);
	MOVF       _kpm+0, 0
	MOVWF      FARG_keypadpress_kpr+0
	CALL       _keypadpress+0
	MOVF       R0+0, 0
	MOVWF      _kpm+0
;ALARMAFINAL2.c,157 :: 		switch(mcontador)
	GOTO       L_main50
;ALARMAFINAL2.c,158 :: 		{    case 0:  Lcd_Chr(2, 1, kpm);
L_main52:
	MOVLW      2
	MOVWF      FARG_Lcd_Chr_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Chr_column+0
	MOVF       _kpm+0, 0
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;ALARMAFINAL2.c,159 :: 		passwordc[0] = kpm;
	MOVF       _kpm+0, 0
	MOVWF      _passwordc+0
;ALARMAFINAL2.c,160 :: 		break;
	GOTO       L_main51
;ALARMAFINAL2.c,161 :: 		case 1:  Lcd_Chr(2, 2, kpm);
L_main53:
	MOVLW      2
	MOVWF      FARG_Lcd_Chr_row+0
	MOVLW      2
	MOVWF      FARG_Lcd_Chr_column+0
	MOVF       _kpm+0, 0
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;ALARMAFINAL2.c,162 :: 		passwordc[1] = kpm;
	MOVF       _kpm+0, 0
	MOVWF      _passwordc+1
;ALARMAFINAL2.c,163 :: 		break;
	GOTO       L_main51
;ALARMAFINAL2.c,164 :: 		case 2:  Lcd_Chr(2, 3, kpm);
L_main54:
	MOVLW      2
	MOVWF      FARG_Lcd_Chr_row+0
	MOVLW      3
	MOVWF      FARG_Lcd_Chr_column+0
	MOVF       _kpm+0, 0
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;ALARMAFINAL2.c,165 :: 		passwordc[2] = kpm;
	MOVF       _kpm+0, 0
	MOVWF      _passwordc+2
;ALARMAFINAL2.c,166 :: 		break;
	GOTO       L_main51
;ALARMAFINAL2.c,167 :: 		case 3:  Lcd_Chr(2, 4, kpm);
L_main55:
	MOVLW      2
	MOVWF      FARG_Lcd_Chr_row+0
	MOVLW      4
	MOVWF      FARG_Lcd_Chr_column+0
	MOVF       _kpm+0, 0
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;ALARMAFINAL2.c,168 :: 		passwordc[3] = kpm;
	MOVF       _kpm+0, 0
	MOVWF      _passwordc+3
;ALARMAFINAL2.c,169 :: 		break;
	GOTO       L_main51
;ALARMAFINAL2.c,170 :: 		}
L_main50:
	MOVLW      0
	XORWF      _mcontador+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main131
	MOVLW      0
	XORWF      _mcontador+0, 0
L__main131:
	BTFSC      STATUS+0, 2
	GOTO       L_main52
	MOVLW      0
	XORWF      _mcontador+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main132
	MOVLW      1
	XORWF      _mcontador+0, 0
L__main132:
	BTFSC      STATUS+0, 2
	GOTO       L_main53
	MOVLW      0
	XORWF      _mcontador+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main133
	MOVLW      2
	XORWF      _mcontador+0, 0
L__main133:
	BTFSC      STATUS+0, 2
	GOTO       L_main54
	MOVLW      0
	XORWF      _mcontador+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main134
	MOVLW      3
	XORWF      _mcontador+0, 0
L__main134:
	BTFSC      STATUS+0, 2
	GOTO       L_main55
L_main51:
;ALARMAFINAL2.c,171 :: 		mcontador++;
	INCF       _mcontador+0, 1
	BTFSC      STATUS+0, 2
	INCF       _mcontador+1, 1
;ALARMAFINAL2.c,172 :: 		}
	GOTO       L_main42
L_main43:
;ALARMAFINAL2.c,173 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;ALARMAFINAL2.c,174 :: 		Lcd_Out(1, 1, "INTRO NEW OVEZ:");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr4_ALARMAFINAL2+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;ALARMAFINAL2.c,175 :: 		mcontador = 0;
	CLRF       _mcontador+0
	CLRF       _mcontador+1
;ALARMAFINAL2.c,176 :: 		while(mcontador>= 0 && mcontador < 4)
L_main56:
	MOVLW      128
	XORWF      _mcontador+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main135
	MOVLW      0
	SUBWF      _mcontador+0, 0
L__main135:
	BTFSS      STATUS+0, 0
	GOTO       L_main57
	MOVLW      128
	XORWF      _mcontador+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main136
	MOVLW      4
	SUBWF      _mcontador+0, 0
L__main136:
	BTFSC      STATUS+0, 0
	GOTO       L_main57
L__main119:
;ALARMAFINAL2.c,178 :: 		do{
L_main60:
;ALARMAFINAL2.c,179 :: 		kpm = Keypad_Key_Press();
	CALL       _Keypad_Key_Press+0
	MOVF       R0+0, 0
	MOVWF      _kpm+0
;ALARMAFINAL2.c,180 :: 		Delay_ms(300);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      134
	MOVWF      R12+0
	MOVLW      153
	MOVWF      R13+0
L_main63:
	DECFSZ     R13+0, 1
	GOTO       L_main63
	DECFSZ     R12+0, 1
	GOTO       L_main63
	DECFSZ     R11+0, 1
	GOTO       L_main63
;ALARMAFINAL2.c,182 :: 		while(!kpm);
	MOVF       _kpm+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_main60
;ALARMAFINAL2.c,183 :: 		kpm = keypadpress(kpm);
	MOVF       _kpm+0, 0
	MOVWF      FARG_keypadpress_kpr+0
	CALL       _keypadpress+0
	MOVF       R0+0, 0
	MOVWF      _kpm+0
;ALARMAFINAL2.c,184 :: 		switch(mcontador)
	GOTO       L_main64
;ALARMAFINAL2.c,185 :: 		{    case 0:  Lcd_Chr(2, 1, kpm);
L_main66:
	MOVLW      2
	MOVWF      FARG_Lcd_Chr_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Chr_column+0
	MOVF       _kpm+0, 0
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;ALARMAFINAL2.c,186 :: 		passwordu[0] = kpm;
	MOVF       _kpm+0, 0
	MOVWF      _passwordu+0
;ALARMAFINAL2.c,187 :: 		break;
	GOTO       L_main65
;ALARMAFINAL2.c,188 :: 		case 1:  Lcd_Chr(2, 2, kpm);
L_main67:
	MOVLW      2
	MOVWF      FARG_Lcd_Chr_row+0
	MOVLW      2
	MOVWF      FARG_Lcd_Chr_column+0
	MOVF       _kpm+0, 0
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;ALARMAFINAL2.c,189 :: 		passwordu[1] = kpm;
	MOVF       _kpm+0, 0
	MOVWF      _passwordu+1
;ALARMAFINAL2.c,190 :: 		break;
	GOTO       L_main65
;ALARMAFINAL2.c,191 :: 		case 2:  Lcd_Chr(2, 3, kpm);
L_main68:
	MOVLW      2
	MOVWF      FARG_Lcd_Chr_row+0
	MOVLW      3
	MOVWF      FARG_Lcd_Chr_column+0
	MOVF       _kpm+0, 0
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;ALARMAFINAL2.c,192 :: 		passwordu[2] = kpm;
	MOVF       _kpm+0, 0
	MOVWF      _passwordu+2
;ALARMAFINAL2.c,193 :: 		break;
	GOTO       L_main65
;ALARMAFINAL2.c,194 :: 		case 3:  Lcd_Chr(2, 4, kpm);
L_main69:
	MOVLW      2
	MOVWF      FARG_Lcd_Chr_row+0
	MOVLW      4
	MOVWF      FARG_Lcd_Chr_column+0
	MOVF       _kpm+0, 0
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;ALARMAFINAL2.c,195 :: 		passwordu[3] = kpm;
	MOVF       _kpm+0, 0
	MOVWF      _passwordu+3
;ALARMAFINAL2.c,196 :: 		break;
	GOTO       L_main65
;ALARMAFINAL2.c,197 :: 		}
L_main64:
	MOVLW      0
	XORWF      _mcontador+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main137
	MOVLW      0
	XORWF      _mcontador+0, 0
L__main137:
	BTFSC      STATUS+0, 2
	GOTO       L_main66
	MOVLW      0
	XORWF      _mcontador+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main138
	MOVLW      1
	XORWF      _mcontador+0, 0
L__main138:
	BTFSC      STATUS+0, 2
	GOTO       L_main67
	MOVLW      0
	XORWF      _mcontador+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main139
	MOVLW      2
	XORWF      _mcontador+0, 0
L__main139:
	BTFSC      STATUS+0, 2
	GOTO       L_main68
	MOVLW      0
	XORWF      _mcontador+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main140
	MOVLW      3
	XORWF      _mcontador+0, 0
L__main140:
	BTFSC      STATUS+0, 2
	GOTO       L_main69
L_main65:
;ALARMAFINAL2.c,198 :: 		mcontador++;
	INCF       _mcontador+0, 1
	BTFSC      STATUS+0, 2
	INCF       _mcontador+1, 1
;ALARMAFINAL2.c,199 :: 		}
	GOTO       L_main56
L_main57:
;ALARMAFINAL2.c,200 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;ALARMAFINAL2.c,201 :: 		if(passwordc[0] == passwordu[0] && passwordc[1] == passwordu[1] && passwordc[2] == passwordc[2] && passwordc[3] == passwordc[3])
	MOVF       _passwordc+0, 0
	XORWF      _passwordu+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L_main72
	MOVF       _passwordc+1, 0
	XORWF      _passwordu+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L_main72
L__main118:
;ALARMAFINAL2.c,203 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;ALARMAFINAL2.c,204 :: 		for(i = 0; i<4; i++)
	CLRF       _i+0
	CLRF       _i+1
L_main73:
	MOVLW      128
	XORWF      _i+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main141
	MOVLW      4
	SUBWF      _i+0, 0
L__main141:
	BTFSC      STATUS+0, 0
	GOTO       L_main74
;ALARMAFINAL2.c,205 :: 		EEPROM_Write(i, passwordc[i]);
	MOVF       _i+0, 0
	MOVWF      FARG_EEPROM_Write_Address+0
	MOVF       _i+0, 0
	ADDLW      _passwordc+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      FARG_EEPROM_Write_data_+0
	CALL       _EEPROM_Write+0
;ALARMAFINAL2.c,204 :: 		for(i = 0; i<4; i++)
	INCF       _i+0, 1
	BTFSC      STATUS+0, 2
	INCF       _i+1, 1
;ALARMAFINAL2.c,205 :: 		EEPROM_Write(i, passwordc[i]);
	GOTO       L_main73
L_main74:
;ALARMAFINAL2.c,206 :: 		Lcd_Out(1, 1, "Password Modif");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr5_ALARMAFINAL2+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;ALARMAFINAL2.c,207 :: 		Delay_ms(3000);
	MOVLW      16
	MOVWF      R11+0
	MOVLW      57
	MOVWF      R12+0
	MOVLW      13
	MOVWF      R13+0
L_main76:
	DECFSZ     R13+0, 1
	GOTO       L_main76
	DECFSZ     R12+0, 1
	GOTO       L_main76
	DECFSZ     R11+0, 1
	GOTO       L_main76
	NOP
	NOP
;ALARMAFINAL2.c,208 :: 		}
	GOTO       L_main77
L_main72:
;ALARMAFINAL2.c,210 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;ALARMAFINAL2.c,211 :: 		Lcd_Out(1, 1, "Pass 1 dif 2");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr6_ALARMAFINAL2+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;ALARMAFINAL2.c,212 :: 		Lcd_Out(2, 1, "Intente Nueva.");
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr7_ALARMAFINAL2+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;ALARMAFINAL2.c,213 :: 		Delay_ms(3000);
	MOVLW      16
	MOVWF      R11+0
	MOVLW      57
	MOVWF      R12+0
	MOVLW      13
	MOVWF      R13+0
L_main78:
	DECFSZ     R13+0, 1
	GOTO       L_main78
	DECFSZ     R12+0, 1
	GOTO       L_main78
	DECFSZ     R11+0, 1
	GOTO       L_main78
	NOP
	NOP
;ALARMAFINAL2.c,214 :: 		}
L_main77:
;ALARMAFINAL2.c,215 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;ALARMAFINAL2.c,216 :: 		Lcd_Out(1, 1, "SIS SIN ARMAR");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr8_ALARMAFINAL2+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;ALARMAFINAL2.c,221 :: 		Delay_ms(5000);
	MOVLW      26
	MOVWF      R11+0
	MOVLW      94
	MOVWF      R12+0
	MOVLW      110
	MOVWF      R13+0
L_main79:
	DECFSZ     R13+0, 1
	GOTO       L_main79
	DECFSZ     R12+0, 1
	GOTO       L_main79
	DECFSZ     R11+0, 1
	GOTO       L_main79
	NOP
;ALARMAFINAL2.c,222 :: 		mcontador = 0;
	CLRF       _mcontador+0
	CLRF       _mcontador+1
;ALARMAFINAL2.c,225 :: 		}
L_main41:
;ALARMAFINAL2.c,229 :: 		}      //
L_main28:
;ALARMAFINAL2.c,230 :: 		if(estado == 0)
	MOVLW      0
	XORWF      _estado+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main142
	MOVLW      0
	XORWF      _estado+0, 0
L__main142:
	BTFSS      STATUS+0, 2
	GOTO       L_main80
;ALARMAFINAL2.c,231 :: 		Lcd_Out(1, 1, "SIS SIN ARMAR");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr9_ALARMAFINAL2+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
L_main80:
;ALARMAFINAL2.c,232 :: 		if(estado == 1)
	MOVLW      0
	XORWF      _estado+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main143
	MOVLW      1
	XORWF      _estado+0, 0
L__main143:
	BTFSS      STATUS+0, 2
	GOTO       L_main81
;ALARMAFINAL2.c,233 :: 		Lcd_Out(1, 1, "SIS ARMARDO");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr10_ALARMAFINAL2+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
L_main81:
;ALARMAFINAL2.c,235 :: 		}
L_main27:
;ALARMAFINAL2.c,237 :: 		if(kp == 48 || kp == 49 || kp == 50 || kp == 51 || kp == 52 || kp == 53 || kp == 54 || kp == 55 || kp == 56 || kp == 57)
	MOVF       _kp+0, 0
	XORLW      48
	BTFSC      STATUS+0, 2
	GOTO       L__main117
	MOVF       _kp+0, 0
	XORLW      49
	BTFSC      STATUS+0, 2
	GOTO       L__main117
	MOVF       _kp+0, 0
	XORLW      50
	BTFSC      STATUS+0, 2
	GOTO       L__main117
	MOVF       _kp+0, 0
	XORLW      51
	BTFSC      STATUS+0, 2
	GOTO       L__main117
	MOVF       _kp+0, 0
	XORLW      52
	BTFSC      STATUS+0, 2
	GOTO       L__main117
	MOVF       _kp+0, 0
	XORLW      53
	BTFSC      STATUS+0, 2
	GOTO       L__main117
	MOVF       _kp+0, 0
	XORLW      54
	BTFSC      STATUS+0, 2
	GOTO       L__main117
	MOVF       _kp+0, 0
	XORLW      55
	BTFSC      STATUS+0, 2
	GOTO       L__main117
	MOVF       _kp+0, 0
	XORLW      56
	BTFSC      STATUS+0, 2
	GOTO       L__main117
	MOVF       _kp+0, 0
	XORLW      57
	BTFSC      STATUS+0, 2
	GOTO       L__main117
	GOTO       L_main84
L__main117:
;ALARMAFINAL2.c,240 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;ALARMAFINAL2.c,241 :: 		for(i = 0; i<=3; i++)
	CLRF       _i+0
	CLRF       _i+1
L_main85:
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _i+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main144
	MOVF       _i+0, 0
	SUBLW      3
L__main144:
	BTFSS      STATUS+0, 0
	GOTO       L_main86
;ALARMAFINAL2.c,243 :: 		Lcd_Out(1, 1, "PASSWORD?:");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr11_ALARMAFINAL2+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;ALARMAFINAL2.c,244 :: 		Delay_ms(50);
	MOVLW      65
	MOVWF      R12+0
	MOVLW      238
	MOVWF      R13+0
L_main88:
	DECFSZ     R13+0, 1
	GOTO       L_main88
	DECFSZ     R12+0, 1
	GOTO       L_main88
	NOP
;ALARMAFINAL2.c,246 :: 		do {
L_main89:
;ALARMAFINAL2.c,247 :: 		kp = Keypad_Key_Click();
	CALL       _Keypad_Key_Click+0
	MOVF       R0+0, 0
	MOVWF      _kp+0
;ALARMAFINAL2.c,248 :: 		Delay_ms(50);
	MOVLW      65
	MOVWF      R12+0
	MOVLW      238
	MOVWF      R13+0
L_main92:
	DECFSZ     R13+0, 1
	GOTO       L_main92
	DECFSZ     R12+0, 1
	GOTO       L_main92
	NOP
;ALARMAFINAL2.c,250 :: 		while(!kp);
	MOVF       _kp+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_main89
;ALARMAFINAL2.c,251 :: 		kp =  keypadpress(kp);
	MOVF       _kp+0, 0
	MOVWF      FARG_keypadpress_kpr+0
	CALL       _keypadpress+0
	MOVF       R0+0, 0
	MOVWF      _kp+0
;ALARMAFINAL2.c,252 :: 		Lcd_Chr(2, 14, kp);
	MOVLW      2
	MOVWF      FARG_Lcd_Chr_row+0
	MOVLW      14
	MOVWF      FARG_Lcd_Chr_column+0
	MOVF       R0+0, 0
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;ALARMAFINAL2.c,254 :: 		passwordu[i] = kp;
	MOVF       _i+0, 0
	ADDLW      _passwordu+0
	MOVWF      FSR
	MOVF       _kp+0, 0
	MOVWF      INDF+0
;ALARMAFINAL2.c,255 :: 		Lcd_Chr(2, i+1, passwordu[i]);
	MOVLW      2
	MOVWF      FARG_Lcd_Chr_row+0
	INCF       _i+0, 0
	MOVWF      FARG_Lcd_Chr_column+0
	MOVF       _i+0, 0
	ADDLW      _passwordu+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;ALARMAFINAL2.c,241 :: 		for(i = 0; i<=3; i++)
	INCF       _i+0, 1
	BTFSC      STATUS+0, 2
	INCF       _i+1, 1
;ALARMAFINAL2.c,256 :: 		}
	GOTO       L_main85
L_main86:
;ALARMAFINAL2.c,257 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;ALARMAFINAL2.c,258 :: 		for(i=0; i<=3; i++)
	CLRF       _i+0
	CLRF       _i+1
L_main93:
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _i+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main145
	MOVF       _i+0, 0
	SUBLW      3
L__main145:
	BTFSS      STATUS+0, 0
	GOTO       L_main94
;ALARMAFINAL2.c,259 :: 		passwordc[i] = EEPROM_Read(i);
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
;ALARMAFINAL2.c,258 :: 		for(i=0; i<=3; i++)
	INCF       _i+0, 1
	BTFSC      STATUS+0, 2
	INCF       _i+1, 1
;ALARMAFINAL2.c,259 :: 		passwordc[i] = EEPROM_Read(i);
	GOTO       L_main93
L_main94:
;ALARMAFINAL2.c,260 :: 		if(passwordc[0] == passwordu[0] && passwordc[1] == passwordu[1] && passwordc[2] == passwordu[2] && passwordc[3] == passwordu[3])
	MOVF       _passwordc+0, 0
	XORWF      _passwordu+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L_main98
	MOVF       _passwordc+1, 0
	XORWF      _passwordu+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L_main98
	MOVF       _passwordc+2, 0
	XORWF      _passwordu+2, 0
	BTFSS      STATUS+0, 2
	GOTO       L_main98
	MOVF       _passwordc+3, 0
	XORWF      _passwordu+3, 0
	BTFSS      STATUS+0, 2
	GOTO       L_main98
L__main116:
;ALARMAFINAL2.c,262 :: 		if(estado == 1)
	MOVLW      0
	XORWF      _estado+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main146
	MOVLW      1
	XORWF      _estado+0, 0
L__main146:
	BTFSS      STATUS+0, 2
	GOTO       L_main99
;ALARMAFINAL2.c,264 :: 		intentos = 0;
	CLRF       _intentos+0
	CLRF       _intentos+1
;ALARMAFINAL2.c,265 :: 		RB7_bit = 0;
	BCF        RB7_bit+0, BitPos(RB7_bit+0)
;ALARMAFINAL2.c,266 :: 		estado = 0;
	CLRF       _estado+0
	CLRF       _estado+1
;ALARMAFINAL2.c,267 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;ALARMAFINAL2.c,268 :: 		Lcd_Out(1, 1, "SIS SIN ARMAR");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr12_ALARMAFINAL2+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;ALARMAFINAL2.c,269 :: 		Delay_ms(100);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_main100:
	DECFSZ     R13+0, 1
	GOTO       L_main100
	DECFSZ     R12+0, 1
	GOTO       L_main100
	NOP
	NOP
;ALARMAFINAL2.c,270 :: 		}
	GOTO       L_main101
L_main99:
;ALARMAFINAL2.c,272 :: 		{    intentos = 0;
	CLRF       _intentos+0
	CLRF       _intentos+1
;ALARMAFINAL2.c,273 :: 		estado = 1;
	MOVLW      1
	MOVWF      _estado+0
	MOVLW      0
	MOVWF      _estado+1
;ALARMAFINAL2.c,274 :: 		RB7_bit = 1;
	BSF        RB7_bit+0, BitPos(RB7_bit+0)
;ALARMAFINAL2.c,275 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;ALARMAFINAL2.c,276 :: 		Lcd_Out(1, 1, "SIS ARMADO");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr13_ALARMAFINAL2+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;ALARMAFINAL2.c,277 :: 		Delay_ms(100);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_main102:
	DECFSZ     R13+0, 1
	GOTO       L_main102
	DECFSZ     R12+0, 1
	GOTO       L_main102
	NOP
	NOP
;ALARMAFINAL2.c,279 :: 		}
L_main101:
;ALARMAFINAL2.c,282 :: 		}
	GOTO       L_main103
L_main98:
;ALARMAFINAL2.c,285 :: 		intentos++;
	INCF       _intentos+0, 1
	BTFSC      STATUS+0, 2
	INCF       _intentos+1, 1
;ALARMAFINAL2.c,287 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;ALARMAFINAL2.c,288 :: 		Lcd_Out(1, 1, "NO VALIDO");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr14_ALARMAFINAL2+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;ALARMAFINAL2.c,289 :: 		Delay_ms(2000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main104:
	DECFSZ     R13+0, 1
	GOTO       L_main104
	DECFSZ     R12+0, 1
	GOTO       L_main104
	DECFSZ     R11+0, 1
	GOTO       L_main104
	NOP
	NOP
;ALARMAFINAL2.c,290 :: 		if(intentos >= 3)
	MOVLW      128
	XORWF      _intentos+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main147
	MOVLW      3
	SUBWF      _intentos+0, 0
L__main147:
	BTFSS      STATUS+0, 0
	GOTO       L_main105
;ALARMAFINAL2.c,291 :: 		{ intentos = 0;
	CLRF       _intentos+0
	CLRF       _intentos+1
;ALARMAFINAL2.c,292 :: 		Lcd_Out(1, 1, "3 intentos....");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr15_ALARMAFINAL2+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;ALARMAFINAL2.c,293 :: 		Lcd_Out(2, 1, "Alarm Bloq");
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr16_ALARMAFINAL2+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;ALARMAFINAL2.c,294 :: 		Delay_ms(5000);
	MOVLW      26
	MOVWF      R11+0
	MOVLW      94
	MOVWF      R12+0
	MOVLW      110
	MOVWF      R13+0
L_main106:
	DECFSZ     R13+0, 1
	GOTO       L_main106
	DECFSZ     R12+0, 1
	GOTO       L_main106
	DECFSZ     R11+0, 1
	GOTO       L_main106
	NOP
;ALARMAFINAL2.c,296 :: 		}
L_main105:
;ALARMAFINAL2.c,297 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;ALARMAFINAL2.c,298 :: 		if(estado == 0)
	MOVLW      0
	XORWF      _estado+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main148
	MOVLW      0
	XORWF      _estado+0, 0
L__main148:
	BTFSS      STATUS+0, 2
	GOTO       L_main107
;ALARMAFINAL2.c,299 :: 		Lcd_Out(1, 1, "SIS SIN ARMAR");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr17_ALARMAFINAL2+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
L_main107:
;ALARMAFINAL2.c,300 :: 		if(estado == 1)
	MOVLW      0
	XORWF      _estado+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main149
	MOVLW      1
	XORWF      _estado+0, 0
L__main149:
	BTFSS      STATUS+0, 2
	GOTO       L_main108
;ALARMAFINAL2.c,301 :: 		Lcd_Out(1, 1, "SIS ARMARDO");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr18_ALARMAFINAL2+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
L_main108:
;ALARMAFINAL2.c,302 :: 		}
L_main103:
;ALARMAFINAL2.c,306 :: 		}
L_main84:
;ALARMAFINAL2.c,308 :: 		if(estado == 0)
	MOVLW      0
	XORWF      _estado+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main150
	MOVLW      0
	XORWF      _estado+0, 0
L__main150:
	BTFSS      STATUS+0, 2
	GOTO       L_main109
;ALARMAFINAL2.c,310 :: 		RB0_bit = 0;
	BCF        RB0_bit+0, BitPos(RB0_bit+0)
;ALARMAFINAL2.c,311 :: 		}
L_main109:
;ALARMAFINAL2.c,312 :: 		if(estado == 1)
	MOVLW      0
	XORWF      _estado+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main151
	MOVLW      1
	XORWF      _estado+0, 0
L__main151:
	BTFSS      STATUS+0, 2
	GOTO       L_main110
;ALARMAFINAL2.c,314 :: 		if(RC6_bit == 1 || RC7_bit == 1)
	BTFSC      RC6_bit+0, BitPos(RC6_bit+0)
	GOTO       L__main115
	BTFSC      RC7_bit+0, BitPos(RC7_bit+0)
	GOTO       L__main115
	GOTO       L_main113
L__main115:
;ALARMAFINAL2.c,316 :: 		RB0_bit = 1;
	BSF        RB0_bit+0, BitPos(RB0_bit+0)
;ALARMAFINAL2.c,317 :: 		}
L_main113:
;ALARMAFINAL2.c,318 :: 		if(contador >= 100*EEPROM_Read(8))
	MOVLW      8
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVLW      100
	MOVWF      R4+0
	CALL       _Mul_8X8_U+0
	MOVLW      128
	XORWF      _contador+1, 0
	MOVWF      R2+0
	MOVLW      128
	XORWF      R0+1, 0
	SUBWF      R2+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main152
	MOVF       R0+0, 0
	SUBWF      _contador+0, 0
L__main152:
	BTFSS      STATUS+0, 0
	GOTO       L_main114
;ALARMAFINAL2.c,320 :: 		contador = 0;
	CLRF       _contador+0
	CLRF       _contador+1
;ALARMAFINAL2.c,321 :: 		RB0_bit = 0;
	BCF        RB0_bit+0, BitPos(RB0_bit+0)
;ALARMAFINAL2.c,322 :: 		}
L_main114:
;ALARMAFINAL2.c,323 :: 		contador++;
	INCF       _contador+0, 1
	BTFSC      STATUS+0, 2
	INCF       _contador+1, 1
;ALARMAFINAL2.c,325 :: 		}
L_main110:
;ALARMAFINAL2.c,327 :: 		}
	GOTO       L_main22
;ALARMAFINAL2.c,328 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
