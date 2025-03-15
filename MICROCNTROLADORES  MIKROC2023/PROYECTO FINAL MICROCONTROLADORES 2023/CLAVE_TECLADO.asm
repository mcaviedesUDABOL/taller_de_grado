
_teclado:

;configuracion.h,19 :: 		char teclado(){
;configuracion.h,20 :: 		kp = 0;
	CLRF        _kp+0 
;configuracion.h,23 :: 		kp = Keypad_Key_Click();
	CALL        _Keypad_Key_Click+0, 0
	MOVF        R0, 0 
	MOVWF       _kp+0 
;configuracion.h,24 :: 		Delay_ms(20);
	MOVLW       26
	MOVWF       R12, 0
	MOVLW       248
	MOVWF       R13, 0
L_teclado0:
	DECFSZ      R13, 1, 1
	BRA         L_teclado0
	DECFSZ      R12, 1, 1
	BRA         L_teclado0
	NOP
;configuracion.h,27 :: 		switch (kp) {
	GOTO        L_teclado1
;configuracion.h,28 :: 		case  1: kp = 79; break; // o
L_teclado3:
	MOVLW       79
	MOVWF       _kp+0 
	GOTO        L_teclado2
;configuracion.h,29 :: 		case  2: kp = 40; break; // 2
L_teclado4:
	MOVLW       40
	MOVWF       _kp+0 
	GOTO        L_teclado2
;configuracion.h,30 :: 		case  3: kp = 61; break; // 3
L_teclado5:
	MOVLW       61
	MOVWF       _kp+0 
	GOTO        L_teclado2
;configuracion.h,31 :: 		case  4: kp = 43; break; // A
L_teclado6:
	MOVLW       43
	MOVWF       _kp+0 
	GOTO        L_teclado2
;configuracion.h,32 :: 		case  5: kp = 49; break; // 4
L_teclado7:
	MOVLW       49
	MOVWF       _kp+0 
	GOTO        L_teclado2
;configuracion.h,33 :: 		case  6: kp = 50; break; // 5
L_teclado8:
	MOVLW       50
	MOVWF       _kp+0 
	GOTO        L_teclado2
;configuracion.h,34 :: 		case  7: kp = 51; break; // 6
L_teclado9:
	MOVLW       51
	MOVWF       _kp+0 
	GOTO        L_teclado2
;configuracion.h,35 :: 		case  8: kp = 45; break; // B
L_teclado10:
	MOVLW       45
	MOVWF       _kp+0 
	GOTO        L_teclado2
;configuracion.h,36 :: 		case  9: kp = 52; break; // 7
L_teclado11:
	MOVLW       52
	MOVWF       _kp+0 
	GOTO        L_teclado2
;configuracion.h,37 :: 		case 10: kp = 53; break; // 8
L_teclado12:
	MOVLW       53
	MOVWF       _kp+0 
	GOTO        L_teclado2
;configuracion.h,38 :: 		case 11: kp = 54; break; // 9
L_teclado13:
	MOVLW       54
	MOVWF       _kp+0 
	GOTO        L_teclado2
;configuracion.h,39 :: 		case 12: kp = 45; break; // C
L_teclado14:
	MOVLW       45
	MOVWF       _kp+0 
	GOTO        L_teclado2
;configuracion.h,40 :: 		case 13: kp = 55; break; // *
L_teclado15:
	MOVLW       55
	MOVWF       _kp+0 
	GOTO        L_teclado2
;configuracion.h,41 :: 		case 14: kp = 56; break; // 0
L_teclado16:
	MOVLW       56
	MOVWF       _kp+0 
	GOTO        L_teclado2
;configuracion.h,42 :: 		case 15: kp = 57; break; // #
L_teclado17:
	MOVLW       57
	MOVWF       _kp+0 
	GOTO        L_teclado2
;configuracion.h,43 :: 		case 16: kp = 47; break; // D
L_teclado18:
	MOVLW       47
	MOVWF       _kp+0 
	GOTO        L_teclado2
;configuracion.h,45 :: 		}
L_teclado1:
	MOVF        _kp+0, 0 
	XORLW       1
	BTFSC       STATUS+0, 2 
	GOTO        L_teclado3
	MOVF        _kp+0, 0 
	XORLW       2
	BTFSC       STATUS+0, 2 
	GOTO        L_teclado4
	MOVF        _kp+0, 0 
	XORLW       3
	BTFSC       STATUS+0, 2 
	GOTO        L_teclado5
	MOVF        _kp+0, 0 
	XORLW       4
	BTFSC       STATUS+0, 2 
	GOTO        L_teclado6
	MOVF        _kp+0, 0 
	XORLW       5
	BTFSC       STATUS+0, 2 
	GOTO        L_teclado7
	MOVF        _kp+0, 0 
	XORLW       6
	BTFSC       STATUS+0, 2 
	GOTO        L_teclado8
	MOVF        _kp+0, 0 
	XORLW       7
	BTFSC       STATUS+0, 2 
	GOTO        L_teclado9
	MOVF        _kp+0, 0 
	XORLW       8
	BTFSC       STATUS+0, 2 
	GOTO        L_teclado10
	MOVF        _kp+0, 0 
	XORLW       9
	BTFSC       STATUS+0, 2 
	GOTO        L_teclado11
	MOVF        _kp+0, 0 
	XORLW       10
	BTFSC       STATUS+0, 2 
	GOTO        L_teclado12
	MOVF        _kp+0, 0 
	XORLW       11
	BTFSC       STATUS+0, 2 
	GOTO        L_teclado13
	MOVF        _kp+0, 0 
	XORLW       12
	BTFSC       STATUS+0, 2 
	GOTO        L_teclado14
	MOVF        _kp+0, 0 
	XORLW       13
	BTFSC       STATUS+0, 2 
	GOTO        L_teclado15
	MOVF        _kp+0, 0 
	XORLW       14
	BTFSC       STATUS+0, 2 
	GOTO        L_teclado16
	MOVF        _kp+0, 0 
	XORLW       15
	BTFSC       STATUS+0, 2 
	GOTO        L_teclado17
	MOVF        _kp+0, 0 
	XORLW       16
	BTFSC       STATUS+0, 2 
	GOTO        L_teclado18
L_teclado2:
;configuracion.h,46 :: 		return kp;
	MOVF        _kp+0, 0 
	MOVWF       R0 
;configuracion.h,47 :: 		}
L_end_teclado:
	RETURN      0
; end of _teclado

_keypadpress:

;configuracion.h,48 :: 		char keypadpress(char kpr)
;configuracion.h,51 :: 		char c = kpr;
	MOVF        FARG_keypadpress_kpr+0, 0 
	MOVWF       R1 
;configuracion.h,52 :: 		switch(c)
	GOTO        L_keypadpress19
;configuracion.h,54 :: 		case 1: return 79;
L_keypadpress21:
	MOVLW       79
	MOVWF       R0 
	GOTO        L_end_keypadpress
;configuracion.h,55 :: 		case 2: return 48;
L_keypadpress22:
	MOVLW       48
	MOVWF       R0 
	GOTO        L_end_keypadpress
;configuracion.h,56 :: 		case 3: return 61;
L_keypadpress23:
	MOVLW       61
	MOVWF       R0 
	GOTO        L_end_keypadpress
;configuracion.h,57 :: 		case 4: return 43;
L_keypadpress24:
	MOVLW       43
	MOVWF       R0 
	GOTO        L_end_keypadpress
;configuracion.h,58 :: 		case 5: return 49;
L_keypadpress25:
	MOVLW       49
	MOVWF       R0 
	GOTO        L_end_keypadpress
;configuracion.h,59 :: 		case 6: return 50;
L_keypadpress26:
	MOVLW       50
	MOVWF       R0 
	GOTO        L_end_keypadpress
;configuracion.h,60 :: 		case 7: return 51;
L_keypadpress27:
	MOVLW       51
	MOVWF       R0 
	GOTO        L_end_keypadpress
;configuracion.h,61 :: 		case 8: return 45;
L_keypadpress28:
	MOVLW       45
	MOVWF       R0 
	GOTO        L_end_keypadpress
;configuracion.h,62 :: 		case 9: return 52;
L_keypadpress29:
	MOVLW       52
	MOVWF       R0 
	GOTO        L_end_keypadpress
;configuracion.h,63 :: 		case 10: return 53;
L_keypadpress30:
	MOVLW       53
	MOVWF       R0 
	GOTO        L_end_keypadpress
;configuracion.h,64 :: 		case 11: return 54;
L_keypadpress31:
	MOVLW       54
	MOVWF       R0 
	GOTO        L_end_keypadpress
;configuracion.h,65 :: 		case 12: return 42;
L_keypadpress32:
	MOVLW       42
	MOVWF       R0 
	GOTO        L_end_keypadpress
;configuracion.h,66 :: 		case 13: return 55;
L_keypadpress33:
	MOVLW       55
	MOVWF       R0 
	GOTO        L_end_keypadpress
;configuracion.h,67 :: 		case 14: return 56;
L_keypadpress34:
	MOVLW       56
	MOVWF       R0 
	GOTO        L_end_keypadpress
;configuracion.h,68 :: 		case 15: return 57;
L_keypadpress35:
	MOVLW       57
	MOVWF       R0 
	GOTO        L_end_keypadpress
;configuracion.h,69 :: 		case 16: return 47;
L_keypadpress36:
	MOVLW       47
	MOVWF       R0 
	GOTO        L_end_keypadpress
;configuracion.h,70 :: 		}
L_keypadpress19:
	MOVF        R1, 0 
	XORLW       1
	BTFSC       STATUS+0, 2 
	GOTO        L_keypadpress21
	MOVF        R1, 0 
	XORLW       2
	BTFSC       STATUS+0, 2 
	GOTO        L_keypadpress22
	MOVF        R1, 0 
	XORLW       3
	BTFSC       STATUS+0, 2 
	GOTO        L_keypadpress23
	MOVF        R1, 0 
	XORLW       4
	BTFSC       STATUS+0, 2 
	GOTO        L_keypadpress24
	MOVF        R1, 0 
	XORLW       5
	BTFSC       STATUS+0, 2 
	GOTO        L_keypadpress25
	MOVF        R1, 0 
	XORLW       6
	BTFSC       STATUS+0, 2 
	GOTO        L_keypadpress26
	MOVF        R1, 0 
	XORLW       7
	BTFSC       STATUS+0, 2 
	GOTO        L_keypadpress27
	MOVF        R1, 0 
	XORLW       8
	BTFSC       STATUS+0, 2 
	GOTO        L_keypadpress28
	MOVF        R1, 0 
	XORLW       9
	BTFSC       STATUS+0, 2 
	GOTO        L_keypadpress29
	MOVF        R1, 0 
	XORLW       10
	BTFSC       STATUS+0, 2 
	GOTO        L_keypadpress30
	MOVF        R1, 0 
	XORLW       11
	BTFSC       STATUS+0, 2 
	GOTO        L_keypadpress31
	MOVF        R1, 0 
	XORLW       12
	BTFSC       STATUS+0, 2 
	GOTO        L_keypadpress32
	MOVF        R1, 0 
	XORLW       13
	BTFSC       STATUS+0, 2 
	GOTO        L_keypadpress33
	MOVF        R1, 0 
	XORLW       14
	BTFSC       STATUS+0, 2 
	GOTO        L_keypadpress34
	MOVF        R1, 0 
	XORLW       15
	BTFSC       STATUS+0, 2 
	GOTO        L_keypadpress35
	MOVF        R1, 0 
	XORLW       16
	BTFSC       STATUS+0, 2 
	GOTO        L_keypadpress36
;configuracion.h,72 :: 		}
L_end_keypadpress:
	RETURN      0
; end of _keypadpress

_readEEPROM:

;configuracion.h,73 :: 		unsigned char readEEPROM(unsigned char add)
;configuracion.h,75 :: 		EEADR = add; //Address to be read
	MOVF        FARG_readEEPROM_add+0, 0 
	MOVWF       EEADR+0 
;configuracion.h,76 :: 		EECON1.EEPGD = 0;//Selecting EEPROM Data Memory
	BCF         EECON1+0, 7 
;configuracion.h,77 :: 		EECON1.RD = 1;//Initialise read cycle
	BSF         EECON1+0, 0 
;configuracion.h,78 :: 		Delay_ms(20);
	MOVLW       26
	MOVWF       R12, 0
	MOVLW       248
	MOVWF       R13, 0
L_readEEPROM37:
	DECFSZ      R13, 1, 1
	BRA         L_readEEPROM37
	DECFSZ      R12, 1, 1
	BRA         L_readEEPROM37
	NOP
;configuracion.h,79 :: 		return EEDATA; //Returning data
	MOVF        EEDATA+0, 0 
	MOVWF       R0 
;configuracion.h,81 :: 		}
L_end_readEEPROM:
	RETURN      0
; end of _readEEPROM

_writeEEPROM:

;configuracion.h,83 :: 		void writeEEPROM(unsigned char address, unsigned char d)
;configuracion.h,86 :: 		EEADR = address; //Address to write
	MOVF        FARG_writeEEPROM_address+0, 0 
	MOVWF       EEADR+0 
;configuracion.h,87 :: 		EEDATA = d; //Data to write
	MOVF        FARG_writeEEPROM_d+0, 0 
	MOVWF       EEDATA+0 
;configuracion.h,88 :: 		EECON1.EEPGD = 0; //Selecting EEPROM Data Memory
	BCF         EECON1+0, 7 
;configuracion.h,89 :: 		EECON1.WREN = 1; //Enable writing of EEPROM
	BSF         EECON1+0, 2 
;configuracion.h,90 :: 		INTCON_SAVE = INTCON;//Backup INCON interupt register
	MOVF        INTCON+0, 0 
	MOVWF       R0 
;configuracion.h,91 :: 		INTCON = 0; //Diables the interrupt
	CLRF        INTCON+0 
;configuracion.h,92 :: 		EECON2 = 0x55; //Required sequence for write to internal EEPROM
	MOVLW       85
	MOVWF       EECON2+0 
;configuracion.h,93 :: 		EECON2 = 0xAA; //Required sequence for write to internal EEPROM
	MOVLW       170
	MOVWF       EECON2+0 
;configuracion.h,94 :: 		EECON1.WR = 1; //Initialise write cycle
	BSF         EECON1+0, 1 
;configuracion.h,95 :: 		INTCON = INTCON_SAVE;//Enables Interrupt
	MOVF        R0, 0 
	MOVWF       INTCON+0 
;configuracion.h,96 :: 		EECON1.WREN = 0; //To disable write
	BCF         EECON1+0, 2 
;configuracion.h,97 :: 		while(PIR2.EEIF == 0);//Checking for complition of write operation
L_writeEEPROM38:
	BTFSC       PIR2+0, 4 
	GOTO        L_writeEEPROM39
	GOTO        L_writeEEPROM38
L_writeEEPROM39:
;configuracion.h,99 :: 		asm nop; //do nothing
	NOP
;configuracion.h,102 :: 		PIR2.EEIF = 0; //Clearing EEIF bit
	BCF         PIR2+0, 4 
;configuracion.h,103 :: 		Delay_ms(20);
	MOVLW       26
	MOVWF       R12, 0
	MOVLW       248
	MOVWF       R13, 0
L_writeEEPROM40:
	DECFSZ      R13, 1, 1
	BRA         L_writeEEPROM40
	DECFSZ      R12, 1, 1
	BRA         L_writeEEPROM40
	NOP
;configuracion.h,104 :: 		}
L_end_writeEEPROM:
	RETURN      0
; end of _writeEEPROM

_main:

;CLAVE_TECLADO.c,12 :: 		void main()
;CLAVE_TECLADO.c,15 :: 		ADCON1 = 0x0F;
	MOVLW       15
	MOVWF       ADCON1+0 
;CLAVE_TECLADO.c,16 :: 		T0CON = 0b11000111;
	MOVLW       199
	MOVWF       T0CON+0 
;CLAVE_TECLADO.c,17 :: 		TRISC = 0x00;
	CLRF        TRISC+0 
;CLAVE_TECLADO.c,18 :: 		TRISD2_bit = 1;
	BSF         TRISD2_bit+0, BitPos(TRISD2_bit+0) 
;CLAVE_TECLADO.c,19 :: 		TRISD3_bit = 1;
	BSF         TRISD3_bit+0, BitPos(TRISD3_bit+0) 
;CLAVE_TECLADO.c,20 :: 		PORTC = 0;
	CLRF        PORTC+0 
;CLAVE_TECLADO.c,21 :: 		Lcd_init();
	CALL        _Lcd_Init+0, 0
;CLAVE_TECLADO.c,22 :: 		Lcd_cmd(12);
	MOVLW       12
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;CLAVE_TECLADO.c,23 :: 		Keypad_init();
	CALL        _Keypad_Init+0, 0
;CLAVE_TECLADO.c,25 :: 		contador = 0;
	CLRF        _contador+0 
	CLRF        _contador+1 
;CLAVE_TECLADO.c,26 :: 		estado = 0;
	CLRF        _estado+0 
	CLRF        _estado+1 
;CLAVE_TECLADO.c,29 :: 		Lcd_out(1,1,"DIGITE CONTRASENA");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr1_CLAVE_TECLADO+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr1_CLAVE_TECLADO+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;CLAVE_TECLADO.c,30 :: 		Lcd_out(2,1,"CONTRA: ");
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr2_CLAVE_TECLADO+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr2_CLAVE_TECLADO+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;CLAVE_TECLADO.c,31 :: 		while(1)
L_main41:
;CLAVE_TECLADO.c,34 :: 		do{
L_main43:
;CLAVE_TECLADO.c,35 :: 		if(RD2_bit == 1);
	BTFSS       RD2_bit+0, BitPos(RD2_bit+0) 
	GOTO        L_main46
L_main46:
;CLAVE_TECLADO.c,36 :: 		{  sen1 = RD2_bit;
	MOVLW       0
	BTFSC       RD2_bit+0, BitPos(RD2_bit+0) 
	MOVLW       1
	MOVWF       _sen1+0 
	CLRF        _sen1+1 
;CLAVE_TECLADO.c,37 :: 		Delay_ms(20);
	MOVLW       26
	MOVWF       R12, 0
	MOVLW       248
	MOVWF       R13, 0
L_main47:
	DECFSZ      R13, 1, 1
	BRA         L_main47
	DECFSZ      R12, 1, 1
	BRA         L_main47
	NOP
;CLAVE_TECLADO.c,39 :: 		if(RD3_bit == 1);
	BTFSS       RD3_bit+0, BitPos(RD3_bit+0) 
	GOTO        L_main48
L_main48:
;CLAVE_TECLADO.c,41 :: 		sen2 = RD3_bit;
	MOVLW       0
	BTFSC       RD3_bit+0, BitPos(RD3_bit+0) 
	MOVLW       1
	MOVWF       _sen2+0 
	CLRF        _sen2+1 
;CLAVE_TECLADO.c,42 :: 		Delay_ms(20);
	MOVLW       26
	MOVWF       R12, 0
	MOVLW       248
	MOVWF       R13, 0
L_main49:
	DECFSZ      R13, 1, 1
	BRA         L_main49
	DECFSZ      R12, 1, 1
	BRA         L_main49
	NOP
;CLAVE_TECLADO.c,45 :: 		if(estado == 1)
	MOVLW       0
	XORWF       _estado+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main139
	MOVLW       1
	XORWF       _estado+0, 0 
L__main139:
	BTFSS       STATUS+0, 2 
	GOTO        L_main50
;CLAVE_TECLADO.c,47 :: 		if(sen2 == 1 || sen1 == 1)
	MOVLW       0
	XORWF       _sen2+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main140
	MOVLW       1
	XORWF       _sen2+0, 0 
L__main140:
	BTFSC       STATUS+0, 2 
	GOTO        L__main133
	MOVLW       0
	XORWF       _sen1+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main141
	MOVLW       1
	XORWF       _sen1+0, 0 
L__main141:
	BTFSC       STATUS+0, 2 
	GOTO        L__main133
	GOTO        L_main53
L__main133:
;CLAVE_TECLADO.c,49 :: 		RC0_bit = 1;
	BSF         RC0_bit+0, BitPos(RC0_bit+0) 
;CLAVE_TECLADO.c,50 :: 		sen1 = 0;
	CLRF        _sen1+0 
	CLRF        _sen1+1 
;CLAVE_TECLADO.c,51 :: 		sen2 = 0;
	CLRF        _sen2+0 
	CLRF        _sen2+1 
;CLAVE_TECLADO.c,52 :: 		tsir = 1;
	MOVLW       1
	MOVWF       _tsir+0 
	MOVLW       0
	MOVWF       _tsir+1 
;CLAVE_TECLADO.c,53 :: 		}
L_main53:
;CLAVE_TECLADO.c,55 :: 		}
	GOTO        L_main54
L_main50:
;CLAVE_TECLADO.c,56 :: 		else if(estado == 0)
	MOVLW       0
	XORWF       _estado+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main142
	MOVLW       0
	XORWF       _estado+0, 0 
L__main142:
	BTFSS       STATUS+0, 2 
	GOTO        L_main55
;CLAVE_TECLADO.c,58 :: 		RC0_bit = 0;
	BCF         RC0_bit+0, BitPos(RC0_bit+0) 
;CLAVE_TECLADO.c,60 :: 		}
L_main55:
L_main54:
;CLAVE_TECLADO.c,61 :: 		if(tsir == 1)
	MOVLW       0
	XORWF       _tsir+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main143
	MOVLW       1
	XORWF       _tsir+0, 0 
L__main143:
	BTFSS       STATUS+0, 2 
	GOTO        L_main56
;CLAVE_TECLADO.c,62 :: 		contador++;
	INFSNZ      _contador+0, 1 
	INCF        _contador+1, 1 
L_main56:
;CLAVE_TECLADO.c,64 :: 		if(contador == 200)
	MOVLW       0
	XORWF       _contador+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main144
	MOVLW       200
	XORWF       _contador+0, 0 
L__main144:
	BTFSS       STATUS+0, 2 
	GOTO        L_main57
;CLAVE_TECLADO.c,65 :: 		{      RC0_bit = 0;
	BCF         RC0_bit+0, BitPos(RC0_bit+0) 
;CLAVE_TECLADO.c,66 :: 		contador = 0;
	CLRF        _contador+0 
	CLRF        _contador+1 
;CLAVE_TECLADO.c,67 :: 		tsir = 0;
	CLRF        _tsir+0 
	CLRF        _tsir+1 
;CLAVE_TECLADO.c,68 :: 		}
L_main57:
;CLAVE_TECLADO.c,70 :: 		kp= teclado();
	CALL        _teclado+0, 0
	MOVF        R0, 0 
	MOVWF       _kp+0 
;CLAVE_TECLADO.c,71 :: 		Delay_ms(30);
	MOVLW       39
	MOVWF       R12, 0
	MOVLW       245
	MOVWF       R13, 0
L_main58:
	DECFSZ      R13, 1, 1
	BRA         L_main58
	DECFSZ      R12, 1, 1
	BRA         L_main58
;CLAVE_TECLADO.c,73 :: 		while(!kp);
	MOVF        _kp+0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_main43
;CLAVE_TECLADO.c,74 :: 		if(kp == 48 || kp == 49 || kp == 50 || kp == 51 || kp == 52 || kp == 53 || kp == 54 || kp == 55 || kp == 56 || kp == 57)
	MOVF        _kp+0, 0 
	XORLW       48
	BTFSC       STATUS+0, 2 
	GOTO        L__main132
	MOVF        _kp+0, 0 
	XORLW       49
	BTFSC       STATUS+0, 2 
	GOTO        L__main132
	MOVF        _kp+0, 0 
	XORLW       50
	BTFSC       STATUS+0, 2 
	GOTO        L__main132
	MOVF        _kp+0, 0 
	XORLW       51
	BTFSC       STATUS+0, 2 
	GOTO        L__main132
	MOVF        _kp+0, 0 
	XORLW       52
	BTFSC       STATUS+0, 2 
	GOTO        L__main132
	MOVF        _kp+0, 0 
	XORLW       53
	BTFSC       STATUS+0, 2 
	GOTO        L__main132
	MOVF        _kp+0, 0 
	XORLW       54
	BTFSC       STATUS+0, 2 
	GOTO        L__main132
	MOVF        _kp+0, 0 
	XORLW       55
	BTFSC       STATUS+0, 2 
	GOTO        L__main132
	MOVF        _kp+0, 0 
	XORLW       56
	BTFSC       STATUS+0, 2 
	GOTO        L__main132
	MOVF        _kp+0, 0 
	XORLW       57
	BTFSC       STATUS+0, 2 
	GOTO        L__main132
	GOTO        L_main61
L__main132:
;CLAVE_TECLADO.c,75 :: 		{       usuario[i] = kp;
	MOVLW       _usuario+0
	ADDWF       _i+0, 0 
	MOVWF       FSR1L+0 
	MOVLW       hi_addr(_usuario+0)
	ADDWFC      _i+1, 0 
	MOVWF       FSR1L+1 
	MOVF        _kp+0, 0 
	MOVWF       POSTINC1+0 
;CLAVE_TECLADO.c,76 :: 		Lcd_chr_cp('*');
	MOVLW       42
	MOVWF       FARG_Lcd_Chr_CP_out_char+0 
	CALL        _Lcd_Chr_CP+0, 0
;CLAVE_TECLADO.c,77 :: 		i++;
	INFSNZ      _i+0, 1 
	INCF        _i+1, 1 
;CLAVE_TECLADO.c,78 :: 		if(i==4)
	MOVLW       0
	XORWF       _i+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main145
	MOVLW       4
	XORWF       _i+0, 0 
L__main145:
	BTFSS       STATUS+0, 2 
	GOTO        L_main62
;CLAVE_TECLADO.c,80 :: 		Lcd_cmd(1);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;CLAVE_TECLADO.c,81 :: 		Lcd_out(1,1,"VALIDANDO");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr3_CLAVE_TECLADO+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr3_CLAVE_TECLADO+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;CLAVE_TECLADO.c,82 :: 		for(i=0; i<=3; i++)
	CLRF        _i+0 
	CLRF        _i+1 
L_main63:
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       _i+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main146
	MOVF        _i+0, 0 
	SUBLW       3
L__main146:
	BTFSS       STATUS+0, 0 
	GOTO        L_main64
;CLAVE_TECLADO.c,84 :: 		if(fija[i] != usuario[i])
	MOVLW       _fija+0
	ADDWF       _i+0, 0 
	MOVWF       FSR0L+0 
	MOVLW       hi_addr(_fija+0)
	ADDWFC      _i+1, 0 
	MOVWF       FSR0L+1 
	MOVLW       _usuario+0
	ADDWF       _i+0, 0 
	MOVWF       FSR2L+0 
	MOVLW       hi_addr(_usuario+0)
	ADDWFC      _i+1, 0 
	MOVWF       FSR2L+1 
	MOVF        POSTINC0+0, 0 
	XORWF       POSTINC2+0, 0 
	BTFSC       STATUS+0, 2 
	GOTO        L_main66
;CLAVE_TECLADO.c,86 :: 		error++;
	INFSNZ      _error+0, 1 
	INCF        _error+1, 1 
;CLAVE_TECLADO.c,87 :: 		}
L_main66:
;CLAVE_TECLADO.c,88 :: 		Lcd_chr(2,i+1, '*');
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVF        _i+0, 0 
	ADDLW       1
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       42
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;CLAVE_TECLADO.c,89 :: 		Lcd_chr(3,i+1, usuario[i]);
	MOVLW       3
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVF        _i+0, 0 
	ADDLW       1
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       _usuario+0
	ADDWF       _i+0, 0 
	MOVWF       FSR0L+0 
	MOVLW       hi_addr(_usuario+0)
	ADDWFC      _i+1, 0 
	MOVWF       FSR0L+1 
	MOVF        POSTINC0+0, 0 
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;CLAVE_TECLADO.c,90 :: 		delay_ms(200);
	MOVLW       2
	MOVWF       R11, 0
	MOVLW       4
	MOVWF       R12, 0
	MOVLW       186
	MOVWF       R13, 0
L_main67:
	DECFSZ      R13, 1, 1
	BRA         L_main67
	DECFSZ      R12, 1, 1
	BRA         L_main67
	DECFSZ      R11, 1, 1
	BRA         L_main67
	NOP
;CLAVE_TECLADO.c,82 :: 		for(i=0; i<=3; i++)
	INFSNZ      _i+0, 1 
	INCF        _i+1, 1 
;CLAVE_TECLADO.c,91 :: 		}
	GOTO        L_main63
L_main64:
;CLAVE_TECLADO.c,92 :: 		if(error==0)
	MOVLW       0
	XORWF       _error+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main147
	MOVLW       0
	XORWF       _error+0, 0 
L__main147:
	BTFSS       STATUS+0, 2 
	GOTO        L_main68
;CLAVE_TECLADO.c,94 :: 		if(estado == 1)
	MOVLW       0
	XORWF       _estado+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main148
	MOVLW       1
	XORWF       _estado+0, 0 
L__main148:
	BTFSS       STATUS+0, 2 
	GOTO        L_main69
;CLAVE_TECLADO.c,96 :: 		intentos = 0;
	CLRF        _intentos+0 
	CLRF        _intentos+1 
;CLAVE_TECLADO.c,97 :: 		RC1_bit = 0;
	BCF         RC1_bit+0, BitPos(RC1_bit+0) 
;CLAVE_TECLADO.c,98 :: 		estado = 0;
	CLRF        _estado+0 
	CLRF        _estado+1 
;CLAVE_TECLADO.c,99 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;CLAVE_TECLADO.c,100 :: 		Lcd_Out(1, 1, "SIS SIN ARMAR");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr4_CLAVE_TECLADO+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr4_CLAVE_TECLADO+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;CLAVE_TECLADO.c,101 :: 		Delay_ms(100);
	MOVLW       130
	MOVWF       R12, 0
	MOVLW       221
	MOVWF       R13, 0
L_main70:
	DECFSZ      R13, 1, 1
	BRA         L_main70
	DECFSZ      R12, 1, 1
	BRA         L_main70
	NOP
	NOP
;CLAVE_TECLADO.c,102 :: 		}
	GOTO        L_main71
L_main69:
;CLAVE_TECLADO.c,104 :: 		{    intentos = 0;
	CLRF        _intentos+0 
	CLRF        _intentos+1 
;CLAVE_TECLADO.c,105 :: 		estado = 1;
	MOVLW       1
	MOVWF       _estado+0 
	MOVLW       0
	MOVWF       _estado+1 
;CLAVE_TECLADO.c,106 :: 		RC1_bit = 1;
	BSF         RC1_bit+0, BitPos(RC1_bit+0) 
;CLAVE_TECLADO.c,107 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;CLAVE_TECLADO.c,108 :: 		Lcd_Out(1, 1, "SIS ARMADO");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr5_CLAVE_TECLADO+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr5_CLAVE_TECLADO+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;CLAVE_TECLADO.c,109 :: 		Delay_ms(100);
	MOVLW       130
	MOVWF       R12, 0
	MOVLW       221
	MOVWF       R13, 0
L_main72:
	DECFSZ      R13, 1, 1
	BRA         L_main72
	DECFSZ      R12, 1, 1
	BRA         L_main72
	NOP
	NOP
;CLAVE_TECLADO.c,111 :: 		}
L_main71:
;CLAVE_TECLADO.c,112 :: 		}
	GOTO        L_main73
L_main68:
;CLAVE_TECLADO.c,115 :: 		intentos++;
	INFSNZ      _intentos+0, 1 
	INCF        _intentos+1, 1 
;CLAVE_TECLADO.c,117 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;CLAVE_TECLADO.c,118 :: 		Lcd_Out(1, 1, "NO VALIDO");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr6_CLAVE_TECLADO+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr6_CLAVE_TECLADO+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;CLAVE_TECLADO.c,119 :: 		Delay_ms(2000);
	MOVLW       11
	MOVWF       R11, 0
	MOVLW       38
	MOVWF       R12, 0
	MOVLW       93
	MOVWF       R13, 0
L_main74:
	DECFSZ      R13, 1, 1
	BRA         L_main74
	DECFSZ      R12, 1, 1
	BRA         L_main74
	DECFSZ      R11, 1, 1
	BRA         L_main74
	NOP
	NOP
;CLAVE_TECLADO.c,120 :: 		if(intentos >= 3)
	MOVLW       128
	XORWF       _intentos+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main149
	MOVLW       3
	SUBWF       _intentos+0, 0 
L__main149:
	BTFSS       STATUS+0, 0 
	GOTO        L_main75
;CLAVE_TECLADO.c,121 :: 		{ intentos = 0;
	CLRF        _intentos+0 
	CLRF        _intentos+1 
;CLAVE_TECLADO.c,122 :: 		Lcd_Out(1, 1, "3 intentos....");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr7_CLAVE_TECLADO+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr7_CLAVE_TECLADO+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;CLAVE_TECLADO.c,123 :: 		Lcd_Out(2, 1, "Alarm Bloq");
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr8_CLAVE_TECLADO+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr8_CLAVE_TECLADO+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;CLAVE_TECLADO.c,124 :: 		Delay_ms(5000);
	MOVLW       26
	MOVWF       R11, 0
	MOVLW       94
	MOVWF       R12, 0
	MOVLW       110
	MOVWF       R13, 0
L_main76:
	DECFSZ      R13, 1, 1
	BRA         L_main76
	DECFSZ      R12, 1, 1
	BRA         L_main76
	DECFSZ      R11, 1, 1
	BRA         L_main76
	NOP
;CLAVE_TECLADO.c,126 :: 		}
L_main75:
;CLAVE_TECLADO.c,127 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;CLAVE_TECLADO.c,128 :: 		if(estado == 0)
	MOVLW       0
	XORWF       _estado+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main150
	MOVLW       0
	XORWF       _estado+0, 0 
L__main150:
	BTFSS       STATUS+0, 2 
	GOTO        L_main77
;CLAVE_TECLADO.c,129 :: 		Lcd_Out(1, 1, "SIS SIN ARMAR");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr9_CLAVE_TECLADO+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr9_CLAVE_TECLADO+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
L_main77:
;CLAVE_TECLADO.c,130 :: 		if(estado == 1)
	MOVLW       0
	XORWF       _estado+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main151
	MOVLW       1
	XORWF       _estado+0, 0 
L__main151:
	BTFSS       STATUS+0, 2 
	GOTO        L_main78
;CLAVE_TECLADO.c,131 :: 		Lcd_Out(1, 1, "SIS ARMARDO");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr10_CLAVE_TECLADO+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr10_CLAVE_TECLADO+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
L_main78:
;CLAVE_TECLADO.c,133 :: 		}
L_main73:
;CLAVE_TECLADO.c,134 :: 		delay_ms(2000);
	MOVLW       11
	MOVWF       R11, 0
	MOVLW       38
	MOVWF       R12, 0
	MOVLW       93
	MOVWF       R13, 0
L_main79:
	DECFSZ      R13, 1, 1
	BRA         L_main79
	DECFSZ      R12, 1, 1
	BRA         L_main79
	DECFSZ      R11, 1, 1
	BRA         L_main79
	NOP
	NOP
;CLAVE_TECLADO.c,135 :: 		lcd_cmd(1);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;CLAVE_TECLADO.c,136 :: 		Lcd_out(1,1,"DIGITE CONTRASENA");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr11_CLAVE_TECLADO+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr11_CLAVE_TECLADO+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;CLAVE_TECLADO.c,137 :: 		Lcd_out(2,1,"CONTRA: ");
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr12_CLAVE_TECLADO+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr12_CLAVE_TECLADO+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;CLAVE_TECLADO.c,138 :: 		i=0;
	CLRF        _i+0 
	CLRF        _i+1 
;CLAVE_TECLADO.c,139 :: 		error=0;
	CLRF        _error+0 
	CLRF        _error+1 
;CLAVE_TECLADO.c,140 :: 		}
L_main62:
;CLAVE_TECLADO.c,142 :: 		}
L_main61:
;CLAVE_TECLADO.c,143 :: 		if(kp == 79)
	MOVF        _kp+0, 0 
	XORLW       79
	BTFSS       STATUS+0, 2 
	GOTO        L_main80
;CLAVE_TECLADO.c,145 :: 		for(i = 0; i<=3; i++)
	CLRF        _i+0 
	CLRF        _i+1 
L_main81:
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       _i+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main152
	MOVF        _i+0, 0 
	SUBLW       3
L__main152:
	BTFSS       STATUS+0, 0 
	GOTO        L_main82
;CLAVE_TECLADO.c,147 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;CLAVE_TECLADO.c,148 :: 		Lcd_Out(1, 1, "PASSWORD M?");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr13_CLAVE_TECLADO+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr13_CLAVE_TECLADO+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;CLAVE_TECLADO.c,149 :: 		do{
L_main84:
;CLAVE_TECLADO.c,150 :: 		kpm = Keypad_Key_Click();
	CALL        _Keypad_Key_Click+0, 0
	MOVF        R0, 0 
	MOVWF       _kpm+0 
;CLAVE_TECLADO.c,151 :: 		Delay_ms(30);
	MOVLW       39
	MOVWF       R12, 0
	MOVLW       245
	MOVWF       R13, 0
L_main87:
	DECFSZ      R13, 1, 1
	BRA         L_main87
	DECFSZ      R12, 1, 1
	BRA         L_main87
;CLAVE_TECLADO.c,153 :: 		while(!kpm);
	MOVF        _kpm+0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_main84
;CLAVE_TECLADO.c,154 :: 		kpm =  keypadpress(kpm);
	MOVF        _kpm+0, 0 
	MOVWF       FARG_keypadpress_kpr+0 
	CALL        _keypadpress+0, 0
	MOVF        R0, 0 
	MOVWF       _kpm+0 
;CLAVE_TECLADO.c,155 :: 		Lcd_Chr(2, i + 1 , '*');
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVF        _i+0, 0 
	ADDLW       1
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       42
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;CLAVE_TECLADO.c,157 :: 		usuario[i] = kpm;
	MOVLW       _usuario+0
	ADDWF       _i+0, 0 
	MOVWF       FSR1L+0 
	MOVLW       hi_addr(_usuario+0)
	ADDWFC      _i+1, 0 
	MOVWF       FSR1L+1 
	MOVF        _kpm+0, 0 
	MOVWF       POSTINC1+0 
;CLAVE_TECLADO.c,145 :: 		for(i = 0; i<=3; i++)
	INFSNZ      _i+0, 1 
	INCF        _i+1, 1 
;CLAVE_TECLADO.c,159 :: 		}
	GOTO        L_main81
L_main82:
;CLAVE_TECLADO.c,161 :: 		if(usuario[0] == maestro[0] && usuario[1] == maestro[1] && usuario[2] == maestro[2] && usuario[3] == maestro[3])
	MOVF        _usuario+0, 0 
	XORWF       _maestro+0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L_main90
	MOVF        _usuario+1, 0 
	XORWF       _maestro+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L_main90
	MOVF        _usuario+2, 0 
	XORWF       _maestro+2, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L_main90
	MOVF        _usuario+3, 0 
	XORWF       _maestro+3, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L_main90
L__main131:
;CLAVE_TECLADO.c,163 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;CLAVE_TECLADO.c,164 :: 		Lcd_Out(1, 1, "INTRO NEW P:");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr14_CLAVE_TECLADO+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr14_CLAVE_TECLADO+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;CLAVE_TECLADO.c,165 :: 		contador = 0;
	CLRF        _contador+0 
	CLRF        _contador+1 
;CLAVE_TECLADO.c,166 :: 		while(contador>= 0 && contador < 4)
L_main91:
	MOVLW       128
	XORWF       _contador+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main153
	MOVLW       0
	SUBWF       _contador+0, 0 
L__main153:
	BTFSS       STATUS+0, 0 
	GOTO        L_main92
	MOVLW       128
	XORWF       _contador+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main154
	MOVLW       4
	SUBWF       _contador+0, 0 
L__main154:
	BTFSC       STATUS+0, 0 
	GOTO        L_main92
L__main130:
;CLAVE_TECLADO.c,168 :: 		do{
L_main95:
;CLAVE_TECLADO.c,169 :: 		kpm = teclado();
	CALL        _teclado+0, 0
	MOVF        R0, 0 
	MOVWF       _kpm+0 
;CLAVE_TECLADO.c,170 :: 		Delay_ms(30);
	MOVLW       39
	MOVWF       R12, 0
	MOVLW       245
	MOVWF       R13, 0
L_main98:
	DECFSZ      R13, 1, 1
	BRA         L_main98
	DECFSZ      R12, 1, 1
	BRA         L_main98
;CLAVE_TECLADO.c,172 :: 		while(!kpm);
	MOVF        _kpm+0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_main95
;CLAVE_TECLADO.c,173 :: 		switch(contador)
	GOTO        L_main99
;CLAVE_TECLADO.c,174 :: 		{    case 0:  Lcd_Chr(2, 1, kpm);
L_main101:
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVF        _kpm+0, 0 
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;CLAVE_TECLADO.c,175 :: 		usuario[0] = kpm;
	MOVF        _kpm+0, 0 
	MOVWF       _usuario+0 
;CLAVE_TECLADO.c,176 :: 		break;
	GOTO        L_main100
;CLAVE_TECLADO.c,177 :: 		case 1:  Lcd_Chr(2, 2, kpm);
L_main102:
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVF        _kpm+0, 0 
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;CLAVE_TECLADO.c,178 :: 		usuario[1] = kpm;
	MOVF        _kpm+0, 0 
	MOVWF       _usuario+1 
;CLAVE_TECLADO.c,179 :: 		break;
	GOTO        L_main100
;CLAVE_TECLADO.c,180 :: 		case 2:  Lcd_Chr(2, 3, kpm);
L_main103:
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVF        _kpm+0, 0 
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;CLAVE_TECLADO.c,181 :: 		usuario[2] = kpm;
	MOVF        _kpm+0, 0 
	MOVWF       _usuario+2 
;CLAVE_TECLADO.c,182 :: 		break;
	GOTO        L_main100
;CLAVE_TECLADO.c,183 :: 		case 3:  Lcd_Chr(2, 4, kpm);
L_main104:
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVF        _kpm+0, 0 
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;CLAVE_TECLADO.c,184 :: 		usuario[3] = kpm;
	MOVF        _kpm+0, 0 
	MOVWF       _usuario+3 
;CLAVE_TECLADO.c,185 :: 		break;
	GOTO        L_main100
;CLAVE_TECLADO.c,186 :: 		}
L_main99:
	MOVLW       0
	XORWF       _contador+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main155
	MOVLW       0
	XORWF       _contador+0, 0 
L__main155:
	BTFSC       STATUS+0, 2 
	GOTO        L_main101
	MOVLW       0
	XORWF       _contador+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main156
	MOVLW       1
	XORWF       _contador+0, 0 
L__main156:
	BTFSC       STATUS+0, 2 
	GOTO        L_main102
	MOVLW       0
	XORWF       _contador+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main157
	MOVLW       2
	XORWF       _contador+0, 0 
L__main157:
	BTFSC       STATUS+0, 2 
	GOTO        L_main103
	MOVLW       0
	XORWF       _contador+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main158
	MOVLW       3
	XORWF       _contador+0, 0 
L__main158:
	BTFSC       STATUS+0, 2 
	GOTO        L_main104
L_main100:
;CLAVE_TECLADO.c,187 :: 		contador++;
	INFSNZ      _contador+0, 1 
	INCF        _contador+1, 1 
;CLAVE_TECLADO.c,188 :: 		}
	GOTO        L_main91
L_main92:
;CLAVE_TECLADO.c,189 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;CLAVE_TECLADO.c,190 :: 		Lcd_Out(1, 1, "INTRO NEW OVEZ:");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr15_CLAVE_TECLADO+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr15_CLAVE_TECLADO+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;CLAVE_TECLADO.c,191 :: 		contador = 0;
	CLRF        _contador+0 
	CLRF        _contador+1 
;CLAVE_TECLADO.c,192 :: 		while(contador>= 0 && contador < 4)
L_main105:
	MOVLW       128
	XORWF       _contador+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main159
	MOVLW       0
	SUBWF       _contador+0, 0 
L__main159:
	BTFSS       STATUS+0, 0 
	GOTO        L_main106
	MOVLW       128
	XORWF       _contador+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main160
	MOVLW       4
	SUBWF       _contador+0, 0 
L__main160:
	BTFSC       STATUS+0, 0 
	GOTO        L_main106
L__main129:
;CLAVE_TECLADO.c,194 :: 		do{
L_main109:
;CLAVE_TECLADO.c,195 :: 		kpm = teclado();
	CALL        _teclado+0, 0
	MOVF        R0, 0 
	MOVWF       _kpm+0 
;CLAVE_TECLADO.c,196 :: 		Delay_ms(30);
	MOVLW       39
	MOVWF       R12, 0
	MOVLW       245
	MOVWF       R13, 0
L_main112:
	DECFSZ      R13, 1, 1
	BRA         L_main112
	DECFSZ      R12, 1, 1
	BRA         L_main112
;CLAVE_TECLADO.c,198 :: 		while(!kpm);
	MOVF        _kpm+0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_main109
;CLAVE_TECLADO.c,199 :: 		switch(contador)
	GOTO        L_main113
;CLAVE_TECLADO.c,200 :: 		{    case 0:  Lcd_Chr(2, 1, kpm);
L_main115:
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVF        _kpm+0, 0 
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;CLAVE_TECLADO.c,201 :: 		u[0] = kpm;
	MOVF        _kpm+0, 0 
	MOVWF       _u+0 
;CLAVE_TECLADO.c,202 :: 		break;
	GOTO        L_main114
;CLAVE_TECLADO.c,203 :: 		case 1:  Lcd_Chr(2, 2, kpm);
L_main116:
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVF        _kpm+0, 0 
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;CLAVE_TECLADO.c,204 :: 		u[1] = kpm;
	MOVF        _kpm+0, 0 
	MOVWF       _u+1 
;CLAVE_TECLADO.c,205 :: 		break;
	GOTO        L_main114
;CLAVE_TECLADO.c,206 :: 		case 2:  Lcd_Chr(2, 3, kpm);
L_main117:
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVF        _kpm+0, 0 
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;CLAVE_TECLADO.c,207 :: 		u[2] = kpm;
	MOVF        _kpm+0, 0 
	MOVWF       _u+2 
;CLAVE_TECLADO.c,208 :: 		break;
	GOTO        L_main114
;CLAVE_TECLADO.c,209 :: 		case 3:  Lcd_Chr(2, 4, kpm);
L_main118:
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVF        _kpm+0, 0 
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;CLAVE_TECLADO.c,210 :: 		u[3] = kpm;
	MOVF        _kpm+0, 0 
	MOVWF       _u+3 
;CLAVE_TECLADO.c,211 :: 		break;
	GOTO        L_main114
;CLAVE_TECLADO.c,212 :: 		}
L_main113:
	MOVLW       0
	XORWF       _contador+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main161
	MOVLW       0
	XORWF       _contador+0, 0 
L__main161:
	BTFSC       STATUS+0, 2 
	GOTO        L_main115
	MOVLW       0
	XORWF       _contador+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main162
	MOVLW       1
	XORWF       _contador+0, 0 
L__main162:
	BTFSC       STATUS+0, 2 
	GOTO        L_main116
	MOVLW       0
	XORWF       _contador+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main163
	MOVLW       2
	XORWF       _contador+0, 0 
L__main163:
	BTFSC       STATUS+0, 2 
	GOTO        L_main117
	MOVLW       0
	XORWF       _contador+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main164
	MOVLW       3
	XORWF       _contador+0, 0 
L__main164:
	BTFSC       STATUS+0, 2 
	GOTO        L_main118
L_main114:
;CLAVE_TECLADO.c,213 :: 		contador++;
	INFSNZ      _contador+0, 1 
	INCF        _contador+1, 1 
;CLAVE_TECLADO.c,214 :: 		}
	GOTO        L_main105
L_main106:
;CLAVE_TECLADO.c,215 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;CLAVE_TECLADO.c,216 :: 		if(usuario[0] == u[0] && usuario[1] == u[1] && usuario[2] == u[2] && usuario[3] == u[3])
	MOVF        _usuario+0, 0 
	XORWF       _u+0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L_main121
	MOVF        _usuario+1, 0 
	XORWF       _u+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L_main121
	MOVF        _usuario+2, 0 
	XORWF       _u+2, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L_main121
	MOVF        _usuario+3, 0 
	XORWF       _u+3, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L_main121
L__main128:
;CLAVE_TECLADO.c,218 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;CLAVE_TECLADO.c,219 :: 		for(i = 0; i<4; i++)
	CLRF        _i+0 
	CLRF        _i+1 
L_main122:
	MOVLW       128
	XORWF       _i+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main165
	MOVLW       4
	SUBWF       _i+0, 0 
L__main165:
	BTFSC       STATUS+0, 0 
	GOTO        L_main123
;CLAVE_TECLADO.c,220 :: 		fija[i] = usuario[i];
	MOVLW       _fija+0
	ADDWF       _i+0, 0 
	MOVWF       FSR1L+0 
	MOVLW       hi_addr(_fija+0)
	ADDWFC      _i+1, 0 
	MOVWF       FSR1L+1 
	MOVLW       _usuario+0
	ADDWF       _i+0, 0 
	MOVWF       FSR0L+0 
	MOVLW       hi_addr(_usuario+0)
	ADDWFC      _i+1, 0 
	MOVWF       FSR0L+1 
	MOVF        POSTINC0+0, 0 
	MOVWF       POSTINC1+0 
;CLAVE_TECLADO.c,219 :: 		for(i = 0; i<4; i++)
	INFSNZ      _i+0, 1 
	INCF        _i+1, 1 
;CLAVE_TECLADO.c,220 :: 		fija[i] = usuario[i];
	GOTO        L_main122
L_main123:
;CLAVE_TECLADO.c,221 :: 		Lcd_Out(1, 1, "Password Modif");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr16_CLAVE_TECLADO+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr16_CLAVE_TECLADO+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;CLAVE_TECLADO.c,222 :: 		Delay_ms(3000);
	MOVLW       16
	MOVWF       R11, 0
	MOVLW       57
	MOVWF       R12, 0
	MOVLW       13
	MOVWF       R13, 0
L_main125:
	DECFSZ      R13, 1, 1
	BRA         L_main125
	DECFSZ      R12, 1, 1
	BRA         L_main125
	DECFSZ      R11, 1, 1
	BRA         L_main125
	NOP
	NOP
;CLAVE_TECLADO.c,223 :: 		}
	GOTO        L_main126
L_main121:
;CLAVE_TECLADO.c,225 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;CLAVE_TECLADO.c,226 :: 		Lcd_Out(1, 1, "Pass 1 dif 2");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr17_CLAVE_TECLADO+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr17_CLAVE_TECLADO+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;CLAVE_TECLADO.c,227 :: 		Lcd_Out(2, 1, "Intente Nueva.");
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr18_CLAVE_TECLADO+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr18_CLAVE_TECLADO+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;CLAVE_TECLADO.c,228 :: 		Delay_ms(3000);
	MOVLW       16
	MOVWF       R11, 0
	MOVLW       57
	MOVWF       R12, 0
	MOVLW       13
	MOVWF       R13, 0
L_main127:
	DECFSZ      R13, 1, 1
	BRA         L_main127
	DECFSZ      R12, 1, 1
	BRA         L_main127
	DECFSZ      R11, 1, 1
	BRA         L_main127
	NOP
	NOP
;CLAVE_TECLADO.c,229 :: 		}
L_main126:
;CLAVE_TECLADO.c,230 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;CLAVE_TECLADO.c,231 :: 		Lcd_Out(1, 1, "SIS SIN ARMAR");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr19_CLAVE_TECLADO+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr19_CLAVE_TECLADO+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;CLAVE_TECLADO.c,235 :: 		}
L_main90:
;CLAVE_TECLADO.c,236 :: 		i = 0;
	CLRF        _i+0 
	CLRF        _i+1 
;CLAVE_TECLADO.c,237 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;CLAVE_TECLADO.c,238 :: 		Lcd_out(1,1,"DIGITE CONTRASEÑA");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr20_CLAVE_TECLADO+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr20_CLAVE_TECLADO+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;CLAVE_TECLADO.c,239 :: 		Lcd_out(2,1,"CONTRA: ");
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr21_CLAVE_TECLADO+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr21_CLAVE_TECLADO+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;CLAVE_TECLADO.c,241 :: 		}
L_main80:
;CLAVE_TECLADO.c,243 :: 		}
	GOTO        L_main41
;CLAVE_TECLADO.c,248 :: 		}
L_end_main:
	GOTO        $+0
; end of _main
