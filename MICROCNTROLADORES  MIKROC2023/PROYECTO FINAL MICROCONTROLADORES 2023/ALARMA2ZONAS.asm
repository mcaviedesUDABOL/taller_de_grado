
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
;configuracion.h,29 :: 		case  2: kp = 48; break; // 2
L_teclado4:
	MOVLW       48
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

_readEEPROM:

;configuracion.h,74 :: 		unsigned char readEEPROM(unsigned char add)
;configuracion.h,76 :: 		EEADR = add; //Address to be read
	MOVF        FARG_readEEPROM_add+0, 0 
	MOVWF       EEADR+0 
;configuracion.h,77 :: 		EECON1.EEPGD = 0;//Selecting EEPROM Data Memory
	BCF         EECON1+0, 7 
;configuracion.h,78 :: 		EECON1.RD = 1;//Initialise read cycle
	BSF         EECON1+0, 0 
;configuracion.h,79 :: 		Delay_ms(20);
	MOVLW       26
	MOVWF       R12, 0
	MOVLW       248
	MOVWF       R13, 0
L_readEEPROM19:
	DECFSZ      R13, 1, 1
	BRA         L_readEEPROM19
	DECFSZ      R12, 1, 1
	BRA         L_readEEPROM19
	NOP
;configuracion.h,80 :: 		return EEDATA; //Returning data
	MOVF        EEDATA+0, 0 
	MOVWF       R0 
;configuracion.h,82 :: 		}
L_end_readEEPROM:
	RETURN      0
; end of _readEEPROM

_writeEEPROM:

;configuracion.h,84 :: 		void writeEEPROM(unsigned char address, unsigned char d)
;configuracion.h,87 :: 		EEADR = address; //Address to write
	MOVF        FARG_writeEEPROM_address+0, 0 
	MOVWF       EEADR+0 
;configuracion.h,88 :: 		EEDATA = d; //Data to write
	MOVF        FARG_writeEEPROM_d+0, 0 
	MOVWF       EEDATA+0 
;configuracion.h,89 :: 		EECON1.EEPGD = 0; //Selecting EEPROM Data Memory
	BCF         EECON1+0, 7 
;configuracion.h,90 :: 		EECON1.WREN = 1; //Enable writing of EEPROM
	BSF         EECON1+0, 2 
;configuracion.h,91 :: 		INTCON_SAVE = INTCON;//Backup INCON interupt register
	MOVF        INTCON+0, 0 
	MOVWF       R0 
;configuracion.h,92 :: 		INTCON = 0; //Diables the interrupt
	CLRF        INTCON+0 
;configuracion.h,93 :: 		EECON2 = 0x55; //Required sequence for write to internal EEPROM
	MOVLW       85
	MOVWF       EECON2+0 
;configuracion.h,94 :: 		EECON2 = 0xAA; //Required sequence for write to internal EEPROM
	MOVLW       170
	MOVWF       EECON2+0 
;configuracion.h,95 :: 		EECON1.WR = 1; //Initialise write cycle
	BSF         EECON1+0, 1 
;configuracion.h,96 :: 		INTCON = INTCON_SAVE;//Enables Interrupt
	MOVF        R0, 0 
	MOVWF       INTCON+0 
;configuracion.h,97 :: 		EECON1.WREN = 0; //To disable write
	BCF         EECON1+0, 2 
;configuracion.h,98 :: 		while(PIR2.EEIF == 0);//Checking for complition of write operation
L_writeEEPROM20:
	BTFSC       PIR2+0, 4 
	GOTO        L_writeEEPROM21
	GOTO        L_writeEEPROM20
L_writeEEPROM21:
;configuracion.h,100 :: 		asm nop; //do nothing
	NOP
;configuracion.h,103 :: 		PIR2.EEIF = 0; //Clearing EEIF bit
	BCF         PIR2+0, 4 
;configuracion.h,104 :: 		Delay_ms(20);
	MOVLW       26
	MOVWF       R12, 0
	MOVLW       248
	MOVWF       R13, 0
L_writeEEPROM22:
	DECFSZ      R13, 1, 1
	BRA         L_writeEEPROM22
	DECFSZ      R12, 1, 1
	BRA         L_writeEEPROM22
	NOP
;configuracion.h,105 :: 		}
L_end_writeEEPROM:
	RETURN      0
; end of _writeEEPROM

_main:

;ALARMA2ZONAS.c,13 :: 		void main()
;ALARMA2ZONAS.c,16 :: 		ADCON1 = 0x0F;
	MOVLW       15
	MOVWF       ADCON1+0 
;ALARMA2ZONAS.c,17 :: 		T0CON = 0b11000111;
	MOVLW       199
	MOVWF       T0CON+0 
;ALARMA2ZONAS.c,18 :: 		TRISC = 0x00;
	CLRF        TRISC+0 
;ALARMA2ZONAS.c,19 :: 		TRISD2_bit = 1;
	BSF         TRISD2_bit+0, BitPos(TRISD2_bit+0) 
;ALARMA2ZONAS.c,20 :: 		TRISD3_bit = 1;
	BSF         TRISD3_bit+0, BitPos(TRISD3_bit+0) 
;ALARMA2ZONAS.c,21 :: 		PORTC = 0;
	CLRF        PORTC+0 
;ALARMA2ZONAS.c,22 :: 		Lcd_init();
	CALL        _Lcd_Init+0, 0
;ALARMA2ZONAS.c,23 :: 		Lcd_cmd(_LCD_CURSOR_OFF);
	MOVLW       12
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;ALARMA2ZONAS.c,24 :: 		Keypad_init();
	CALL        _Keypad_Init+0, 0
;ALARMA2ZONAS.c,26 :: 		contador = 0;
	CLRF        _contador+0 
	CLRF        _contador+1 
;ALARMA2ZONAS.c,27 :: 		estado = 0;
	CLRF        _estado+0 
	CLRF        _estado+1 
;ALARMA2ZONAS.c,28 :: 		Lcd_out(1,1,"SIS SIN ARMAR");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr1_ALARMA2ZONAS+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr1_ALARMA2ZONAS+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;ALARMA2ZONAS.c,29 :: 		Lcd_out(2,1,"CONTRA: ");
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr2_ALARMA2ZONAS+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr2_ALARMA2ZONAS+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;ALARMA2ZONAS.c,30 :: 		while(1)
L_main23:
;ALARMA2ZONAS.c,33 :: 		do{
L_main25:
;ALARMA2ZONAS.c,34 :: 		if(RD2_bit == 1);
	BTFSS       RD2_bit+0, BitPos(RD2_bit+0) 
	GOTO        L_main28
L_main28:
;ALARMA2ZONAS.c,35 :: 		{  sen1 = RD2_bit;
	MOVLW       0
	BTFSC       RD2_bit+0, BitPos(RD2_bit+0) 
	MOVLW       1
	MOVWF       _sen1+0 
	CLRF        _sen1+1 
;ALARMA2ZONAS.c,36 :: 		Delay_ms(20);
	MOVLW       26
	MOVWF       R12, 0
	MOVLW       248
	MOVWF       R13, 0
L_main29:
	DECFSZ      R13, 1, 1
	BRA         L_main29
	DECFSZ      R12, 1, 1
	BRA         L_main29
	NOP
;ALARMA2ZONAS.c,38 :: 		if(RD3_bit == 1);
	BTFSS       RD3_bit+0, BitPos(RD3_bit+0) 
	GOTO        L_main30
L_main30:
;ALARMA2ZONAS.c,40 :: 		sen2 = RD3_bit;
	MOVLW       0
	BTFSC       RD3_bit+0, BitPos(RD3_bit+0) 
	MOVLW       1
	MOVWF       _sen2+0 
	CLRF        _sen2+1 
;ALARMA2ZONAS.c,41 :: 		Delay_ms(20);
	MOVLW       26
	MOVWF       R12, 0
	MOVLW       248
	MOVWF       R13, 0
L_main31:
	DECFSZ      R13, 1, 1
	BRA         L_main31
	DECFSZ      R12, 1, 1
	BRA         L_main31
	NOP
;ALARMA2ZONAS.c,45 :: 		if(estado == 1)
	MOVLW       0
	XORWF       _estado+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main151
	MOVLW       1
	XORWF       _estado+0, 0 
L__main151:
	BTFSS       STATUS+0, 2 
	GOTO        L_main32
;ALARMA2ZONAS.c,47 :: 		if(tsal < tiempos)
	MOVF        _tiempos+1, 0 
	SUBWF       _tsal+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main152
	MOVF        _tiempos+0, 0 
	SUBWF       _tsal+0, 0 
L__main152:
	BTFSC       STATUS+0, 0 
	GOTO        L_main33
;ALARMA2ZONAS.c,49 :: 		if(tsal%2 == 0)
	MOVLW       2
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	MOVF        _tsal+0, 0 
	MOVWF       R0 
	MOVF        _tsal+1, 0 
	MOVWF       R1 
	CALL        _Div_16x16_S+0, 0
	MOVF        R8, 0 
	MOVWF       R0 
	MOVF        R9, 0 
	MOVWF       R1 
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main153
	MOVLW       0
	XORWF       R0, 0 
L__main153:
	BTFSS       STATUS+0, 2 
	GOTO        L_main34
;ALARMA2ZONAS.c,50 :: 		{    RC1_bit = 0;
	BCF         RC1_bit+0, BitPos(RC1_bit+0) 
;ALARMA2ZONAS.c,51 :: 		Delay_ms(50);
	MOVLW       65
	MOVWF       R12, 0
	MOVLW       238
	MOVWF       R13, 0
L_main35:
	DECFSZ      R13, 1, 1
	BRA         L_main35
	DECFSZ      R12, 1, 1
	BRA         L_main35
	NOP
;ALARMA2ZONAS.c,52 :: 		RC1_bit = 1;
	BSF         RC1_bit+0, BitPos(RC1_bit+0) 
;ALARMA2ZONAS.c,53 :: 		Lcd_Out(4, 1, "ARMANDO SISTEMA!");
	MOVLW       4
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr3_ALARMA2ZONAS+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr3_ALARMA2ZONAS+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;ALARMA2ZONAS.c,54 :: 		Delay_ms(50);
	MOVLW       65
	MOVWF       R12, 0
	MOVLW       238
	MOVWF       R13, 0
L_main36:
	DECFSZ      R13, 1, 1
	BRA         L_main36
	DECFSZ      R12, 1, 1
	BRA         L_main36
	NOP
;ALARMA2ZONAS.c,55 :: 		}
L_main34:
;ALARMA2ZONAS.c,56 :: 		}
L_main33:
;ALARMA2ZONAS.c,57 :: 		if(tsal == tiempos)
	MOVF        _tsal+1, 0 
	XORWF       _tiempos+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main154
	MOVF        _tiempos+0, 0 
	XORWF       _tsal+0, 0 
L__main154:
	BTFSS       STATUS+0, 2 
	GOTO        L_main37
;ALARMA2ZONAS.c,58 :: 		Lcd_Out(4, 1, "REVIZANDO SENSORES");
	MOVLW       4
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr4_ALARMA2ZONAS+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr4_ALARMA2ZONAS+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
L_main37:
;ALARMA2ZONAS.c,59 :: 		if((sen2 == 1 || sen1 == 1) && tsal >= tiempos)
	MOVLW       0
	XORWF       _sen2+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main155
	MOVLW       1
	XORWF       _sen2+0, 0 
L__main155:
	BTFSC       STATUS+0, 2 
	GOTO        L__main146
	MOVLW       0
	XORWF       _sen1+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main156
	MOVLW       1
	XORWF       _sen1+0, 0 
L__main156:
	BTFSC       STATUS+0, 2 
	GOTO        L__main146
	GOTO        L_main42
L__main146:
	MOVF        _tiempos+1, 0 
	SUBWF       _tsal+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main157
	MOVF        _tiempos+0, 0 
	SUBWF       _tsal+0, 0 
L__main157:
	BTFSS       STATUS+0, 0 
	GOTO        L_main42
L__main145:
;ALARMA2ZONAS.c,61 :: 		ten = 1;
	MOVLW       1
	MOVWF       _ten+0 
	MOVLW       0
	MOVWF       _ten+1 
;ALARMA2ZONAS.c,63 :: 		sen1 = 0;
	CLRF        _sen1+0 
	CLRF        _sen1+1 
;ALARMA2ZONAS.c,64 :: 		sen2 = 0;
	CLRF        _sen2+0 
	CLRF        _sen2+1 
;ALARMA2ZONAS.c,65 :: 		tsir = 1;
	MOVLW       1
	MOVWF       _tsir+0 
	MOVLW       0
	MOVWF       _tsir+1 
;ALARMA2ZONAS.c,66 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;ALARMA2ZONAS.c,67 :: 		Lcd_Out(1, 1, "SIS ARMARDO");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr5_ALARMA2ZONAS+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr5_ALARMA2ZONAS+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;ALARMA2ZONAS.c,68 :: 		Lcd_out(2,1,"CONTRA: ");
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr6_ALARMA2ZONAS+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr6_ALARMA2ZONAS+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;ALARMA2ZONAS.c,70 :: 		}
L_main42:
;ALARMA2ZONAS.c,71 :: 		}
	GOTO        L_main43
L_main32:
;ALARMA2ZONAS.c,72 :: 		else if(estado == 0)
	MOVLW       0
	XORWF       _estado+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main158
	MOVLW       0
	XORWF       _estado+0, 0 
L__main158:
	BTFSS       STATUS+0, 2 
	GOTO        L_main44
;ALARMA2ZONAS.c,74 :: 		RC0_bit = 0;
	BCF         RC0_bit+0, BitPos(RC0_bit+0) 
;ALARMA2ZONAS.c,76 :: 		}
L_main44:
L_main43:
;ALARMA2ZONAS.c,77 :: 		if(ten == 1)
	MOVLW       0
	XORWF       _ten+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main159
	MOVLW       1
	XORWF       _ten+0, 0 
L__main159:
	BTFSS       STATUS+0, 2 
	GOTO        L_main45
;ALARMA2ZONAS.c,79 :: 		entrada++;
	INFSNZ      _entrada+0, 1 
	INCF        _entrada+1, 1 
;ALARMA2ZONAS.c,80 :: 		if(entrada < tiempos)
	MOVF        _tiempos+1, 0 
	SUBWF       _entrada+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main160
	MOVF        _tiempos+0, 0 
	SUBWF       _entrada+0, 0 
L__main160:
	BTFSC       STATUS+0, 0 
	GOTO        L_main46
;ALARMA2ZONAS.c,81 :: 		{ if(entrada%2 == 0)
	MOVLW       2
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	MOVF        _entrada+0, 0 
	MOVWF       R0 
	MOVF        _entrada+1, 0 
	MOVWF       R1 
	CALL        _Div_16x16_S+0, 0
	MOVF        R8, 0 
	MOVWF       R0 
	MOVF        R9, 0 
	MOVWF       R1 
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main161
	MOVLW       0
	XORWF       R0, 0 
L__main161:
	BTFSS       STATUS+0, 2 
	GOTO        L_main47
;ALARMA2ZONAS.c,82 :: 		{    RC1_bit = 0;
	BCF         RC1_bit+0, BitPos(RC1_bit+0) 
;ALARMA2ZONAS.c,83 :: 		Delay_ms(50);
	MOVLW       65
	MOVWF       R12, 0
	MOVLW       238
	MOVWF       R13, 0
L_main48:
	DECFSZ      R13, 1, 1
	BRA         L_main48
	DECFSZ      R12, 1, 1
	BRA         L_main48
	NOP
;ALARMA2ZONAS.c,84 :: 		RC1_bit = 1;
	BSF         RC1_bit+0, BitPos(RC1_bit+0) 
;ALARMA2ZONAS.c,85 :: 		Lcd_Out(4, 1, "SENSOR ABIERTO!!!");
	MOVLW       4
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr7_ALARMA2ZONAS+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr7_ALARMA2ZONAS+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;ALARMA2ZONAS.c,86 :: 		Delay_ms(50);
	MOVLW       65
	MOVWF       R12, 0
	MOVLW       238
	MOVWF       R13, 0
L_main49:
	DECFSZ      R13, 1, 1
	BRA         L_main49
	DECFSZ      R12, 1, 1
	BRA         L_main49
	NOP
;ALARMA2ZONAS.c,87 :: 		}
L_main47:
;ALARMA2ZONAS.c,88 :: 		}
L_main46:
;ALARMA2ZONAS.c,89 :: 		}
L_main45:
;ALARMA2ZONAS.c,91 :: 		if(tsir == 1)
	MOVLW       0
	XORWF       _tsir+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main162
	MOVLW       1
	XORWF       _tsir+0, 0 
L__main162:
	BTFSS       STATUS+0, 2 
	GOTO        L_main50
;ALARMA2ZONAS.c,92 :: 		contador++;
	INFSNZ      _contador+0, 1 
	INCF        _contador+1, 1 
L_main50:
;ALARMA2ZONAS.c,93 :: 		if(entrada >= tiempos)
	MOVF        _tiempos+1, 0 
	SUBWF       _entrada+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main163
	MOVF        _tiempos+0, 0 
	SUBWF       _entrada+0, 0 
L__main163:
	BTFSS       STATUS+0, 0 
	GOTO        L_main51
;ALARMA2ZONAS.c,95 :: 		ten = 0;
	CLRF        _ten+0 
	CLRF        _ten+1 
;ALARMA2ZONAS.c,96 :: 		entrada = 0;
	CLRF        _entrada+0 
	CLRF        _entrada+1 
;ALARMA2ZONAS.c,97 :: 		RC0_bit = 1;
	BSF         RC0_bit+0, BitPos(RC0_bit+0) 
;ALARMA2ZONAS.c,98 :: 		contador = 0;
	CLRF        _contador+0 
	CLRF        _contador+1 
;ALARMA2ZONAS.c,99 :: 		Lcd_Out(1, 1, "SIS ARMARDO");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr8_ALARMA2ZONAS+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr8_ALARMA2ZONAS+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;ALARMA2ZONAS.c,100 :: 		Lcd_out(2,1,"CONTRA: ");
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr9_ALARMA2ZONAS+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr9_ALARMA2ZONAS+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;ALARMA2ZONAS.c,101 :: 		Lcd_Out(4, 1, "ALARMA!!!!");
	MOVLW       4
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr10_ALARMA2ZONAS+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr10_ALARMA2ZONAS+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;ALARMA2ZONAS.c,102 :: 		}
L_main51:
;ALARMA2ZONAS.c,104 :: 		if(contador == tiempos)
	MOVF        _contador+1, 0 
	XORWF       _tiempos+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main164
	MOVF        _tiempos+0, 0 
	XORWF       _contador+0, 0 
L__main164:
	BTFSS       STATUS+0, 2 
	GOTO        L_main52
;ALARMA2ZONAS.c,105 :: 		{      RC0_bit = 0;
	BCF         RC0_bit+0, BitPos(RC0_bit+0) 
;ALARMA2ZONAS.c,106 :: 		contador = 0;
	CLRF        _contador+0 
	CLRF        _contador+1 
;ALARMA2ZONAS.c,107 :: 		tsir = 0;
	CLRF        _tsir+0 
	CLRF        _tsir+1 
;ALARMA2ZONAS.c,108 :: 		}
L_main52:
;ALARMA2ZONAS.c,109 :: 		tsal++;
	INFSNZ      _tsal+0, 1 
	INCF        _tsal+1, 1 
;ALARMA2ZONAS.c,110 :: 		kp= teclado();
	CALL        _teclado+0, 0
	MOVF        R0, 0 
	MOVWF       _kp+0 
;ALARMA2ZONAS.c,111 :: 		Delay_ms(30);
	MOVLW       39
	MOVWF       R12, 0
	MOVLW       245
	MOVWF       R13, 0
L_main53:
	DECFSZ      R13, 1, 1
	BRA         L_main53
	DECFSZ      R12, 1, 1
	BRA         L_main53
;ALARMA2ZONAS.c,113 :: 		while(!kp);
	MOVF        _kp+0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_main25
;ALARMA2ZONAS.c,114 :: 		if(kp == 48 || kp == 49 || kp == 50 || kp == 51 || kp == 52 || kp == 53 || kp == 54 || kp == 55 || kp == 56 || kp == 57)
	MOVF        _kp+0, 0 
	XORLW       48
	BTFSC       STATUS+0, 2 
	GOTO        L__main144
	MOVF        _kp+0, 0 
	XORLW       49
	BTFSC       STATUS+0, 2 
	GOTO        L__main144
	MOVF        _kp+0, 0 
	XORLW       50
	BTFSC       STATUS+0, 2 
	GOTO        L__main144
	MOVF        _kp+0, 0 
	XORLW       51
	BTFSC       STATUS+0, 2 
	GOTO        L__main144
	MOVF        _kp+0, 0 
	XORLW       52
	BTFSC       STATUS+0, 2 
	GOTO        L__main144
	MOVF        _kp+0, 0 
	XORLW       53
	BTFSC       STATUS+0, 2 
	GOTO        L__main144
	MOVF        _kp+0, 0 
	XORLW       54
	BTFSC       STATUS+0, 2 
	GOTO        L__main144
	MOVF        _kp+0, 0 
	XORLW       55
	BTFSC       STATUS+0, 2 
	GOTO        L__main144
	MOVF        _kp+0, 0 
	XORLW       56
	BTFSC       STATUS+0, 2 
	GOTO        L__main144
	MOVF        _kp+0, 0 
	XORLW       57
	BTFSC       STATUS+0, 2 
	GOTO        L__main144
	GOTO        L_main56
L__main144:
;ALARMA2ZONAS.c,115 :: 		{       usuario[i] = kp;
	MOVLW       _usuario+0
	ADDWF       _i+0, 0 
	MOVWF       FSR1L+0 
	MOVLW       hi_addr(_usuario+0)
	ADDWFC      _i+1, 0 
	MOVWF       FSR1L+1 
	MOVF        _kp+0, 0 
	MOVWF       POSTINC1+0 
;ALARMA2ZONAS.c,117 :: 		Lcd_Chr(2, i + 10, '*');
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       10
	ADDWF       _i+0, 0 
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       42
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;ALARMA2ZONAS.c,118 :: 		i++;
	INFSNZ      _i+0, 1 
	INCF        _i+1, 1 
;ALARMA2ZONAS.c,120 :: 		if(i==4)
	MOVLW       0
	XORWF       _i+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main165
	MOVLW       4
	XORWF       _i+0, 0 
L__main165:
	BTFSS       STATUS+0, 2 
	GOTO        L_main57
;ALARMA2ZONAS.c,122 :: 		Lcd_cmd(1);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;ALARMA2ZONAS.c,123 :: 		Lcd_out(1,1,"VALIDANDO");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr11_ALARMA2ZONAS+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr11_ALARMA2ZONAS+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;ALARMA2ZONAS.c,124 :: 		for(i=0; i<=3; i++)
	CLRF        _i+0 
	CLRF        _i+1 
L_main58:
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       _i+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main166
	MOVF        _i+0, 0 
	SUBLW       3
L__main166:
	BTFSS       STATUS+0, 0 
	GOTO        L_main59
;ALARMA2ZONAS.c,126 :: 		if(fija[i] != usuario[i])
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
	GOTO        L_main61
;ALARMA2ZONAS.c,128 :: 		error++;
	INFSNZ      _error+0, 1 
	INCF        _error+1, 1 
;ALARMA2ZONAS.c,129 :: 		}
L_main61:
;ALARMA2ZONAS.c,130 :: 		Lcd_chr(2,i+1, '*');
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVF        _i+0, 0 
	ADDLW       1
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       42
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;ALARMA2ZONAS.c,132 :: 		delay_ms(200);
	MOVLW       2
	MOVWF       R11, 0
	MOVLW       4
	MOVWF       R12, 0
	MOVLW       186
	MOVWF       R13, 0
L_main62:
	DECFSZ      R13, 1, 1
	BRA         L_main62
	DECFSZ      R12, 1, 1
	BRA         L_main62
	DECFSZ      R11, 1, 1
	BRA         L_main62
	NOP
;ALARMA2ZONAS.c,124 :: 		for(i=0; i<=3; i++)
	INFSNZ      _i+0, 1 
	INCF        _i+1, 1 
;ALARMA2ZONAS.c,133 :: 		}
	GOTO        L_main58
L_main59:
;ALARMA2ZONAS.c,134 :: 		if(error==0)
	MOVLW       0
	XORWF       _error+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main167
	MOVLW       0
	XORWF       _error+0, 0 
L__main167:
	BTFSS       STATUS+0, 2 
	GOTO        L_main63
;ALARMA2ZONAS.c,136 :: 		if(estado == 1)
	MOVLW       0
	XORWF       _estado+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main168
	MOVLW       1
	XORWF       _estado+0, 0 
L__main168:
	BTFSS       STATUS+0, 2 
	GOTO        L_main64
;ALARMA2ZONAS.c,138 :: 		intentos = 0;
	CLRF        _intentos+0 
	CLRF        _intentos+1 
;ALARMA2ZONAS.c,139 :: 		RC1_bit = 0;
	BCF         RC1_bit+0, BitPos(RC1_bit+0) 
;ALARMA2ZONAS.c,140 :: 		estado = 0;
	CLRF        _estado+0 
	CLRF        _estado+1 
;ALARMA2ZONAS.c,141 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;ALARMA2ZONAS.c,142 :: 		Lcd_Out(1, 1, "SIS SIN ARMAR");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr12_ALARMA2ZONAS+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr12_ALARMA2ZONAS+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;ALARMA2ZONAS.c,143 :: 		Delay_ms(100);
	MOVLW       130
	MOVWF       R12, 0
	MOVLW       221
	MOVWF       R13, 0
L_main65:
	DECFSZ      R13, 1, 1
	BRA         L_main65
	DECFSZ      R12, 1, 1
	BRA         L_main65
	NOP
	NOP
;ALARMA2ZONAS.c,144 :: 		}
	GOTO        L_main66
L_main64:
;ALARMA2ZONAS.c,146 :: 		{    intentos = 0;
	CLRF        _intentos+0 
	CLRF        _intentos+1 
;ALARMA2ZONAS.c,147 :: 		estado = 1;
	MOVLW       1
	MOVWF       _estado+0 
	MOVLW       0
	MOVWF       _estado+1 
;ALARMA2ZONAS.c,148 :: 		RC1_bit = 1;
	BSF         RC1_bit+0, BitPos(RC1_bit+0) 
;ALARMA2ZONAS.c,149 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;ALARMA2ZONAS.c,150 :: 		Lcd_Out(1, 1, "SIS ARMADO");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr13_ALARMA2ZONAS+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr13_ALARMA2ZONAS+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;ALARMA2ZONAS.c,151 :: 		Delay_ms(100);
	MOVLW       130
	MOVWF       R12, 0
	MOVLW       221
	MOVWF       R13, 0
L_main67:
	DECFSZ      R13, 1, 1
	BRA         L_main67
	DECFSZ      R12, 1, 1
	BRA         L_main67
	NOP
	NOP
;ALARMA2ZONAS.c,152 :: 		tsal = 0;
	CLRF        _tsal+0 
	CLRF        _tsal+1 
;ALARMA2ZONAS.c,154 :: 		}
L_main66:
;ALARMA2ZONAS.c,155 :: 		}
	GOTO        L_main68
L_main63:
;ALARMA2ZONAS.c,158 :: 		intentos++;
	INFSNZ      _intentos+0, 1 
	INCF        _intentos+1, 1 
;ALARMA2ZONAS.c,160 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;ALARMA2ZONAS.c,161 :: 		Lcd_Out(1, 1, "NO VALIDO");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr14_ALARMA2ZONAS+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr14_ALARMA2ZONAS+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;ALARMA2ZONAS.c,162 :: 		Delay_ms(2000);
	MOVLW       11
	MOVWF       R11, 0
	MOVLW       38
	MOVWF       R12, 0
	MOVLW       93
	MOVWF       R13, 0
L_main69:
	DECFSZ      R13, 1, 1
	BRA         L_main69
	DECFSZ      R12, 1, 1
	BRA         L_main69
	DECFSZ      R11, 1, 1
	BRA         L_main69
	NOP
	NOP
;ALARMA2ZONAS.c,163 :: 		if(intentos >= 3)
	MOVLW       128
	XORWF       _intentos+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main169
	MOVLW       3
	SUBWF       _intentos+0, 0 
L__main169:
	BTFSS       STATUS+0, 0 
	GOTO        L_main70
;ALARMA2ZONAS.c,164 :: 		{ intentos = 0;
	CLRF        _intentos+0 
	CLRF        _intentos+1 
;ALARMA2ZONAS.c,165 :: 		Lcd_Out(1, 1, "3 intentos....");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr15_ALARMA2ZONAS+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr15_ALARMA2ZONAS+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;ALARMA2ZONAS.c,166 :: 		Lcd_Out(2, 1, "Alarm Bloq");
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr16_ALARMA2ZONAS+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr16_ALARMA2ZONAS+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;ALARMA2ZONAS.c,167 :: 		Delay_ms(5000);
	MOVLW       26
	MOVWF       R11, 0
	MOVLW       94
	MOVWF       R12, 0
	MOVLW       110
	MOVWF       R13, 0
L_main71:
	DECFSZ      R13, 1, 1
	BRA         L_main71
	DECFSZ      R12, 1, 1
	BRA         L_main71
	DECFSZ      R11, 1, 1
	BRA         L_main71
	NOP
;ALARMA2ZONAS.c,169 :: 		}
L_main70:
;ALARMA2ZONAS.c,170 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;ALARMA2ZONAS.c,171 :: 		if(estado == 0)
	MOVLW       0
	XORWF       _estado+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main170
	MOVLW       0
	XORWF       _estado+0, 0 
L__main170:
	BTFSS       STATUS+0, 2 
	GOTO        L_main72
;ALARMA2ZONAS.c,172 :: 		Lcd_Out(1, 1, "SIS SIN ARMAR");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr17_ALARMA2ZONAS+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr17_ALARMA2ZONAS+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
L_main72:
;ALARMA2ZONAS.c,173 :: 		if(estado == 1)
	MOVLW       0
	XORWF       _estado+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main171
	MOVLW       1
	XORWF       _estado+0, 0 
L__main171:
	BTFSS       STATUS+0, 2 
	GOTO        L_main73
;ALARMA2ZONAS.c,174 :: 		Lcd_Out(1, 1, "SIS ARMARDO");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr18_ALARMA2ZONAS+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr18_ALARMA2ZONAS+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
L_main73:
;ALARMA2ZONAS.c,176 :: 		}
L_main68:
;ALARMA2ZONAS.c,177 :: 		delay_ms(1000);
	MOVLW       6
	MOVWF       R11, 0
	MOVLW       19
	MOVWF       R12, 0
	MOVLW       173
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
;ALARMA2ZONAS.c,178 :: 		lcd_cmd(1);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;ALARMA2ZONAS.c,179 :: 		if(estado == 0)
	MOVLW       0
	XORWF       _estado+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main172
	MOVLW       0
	XORWF       _estado+0, 0 
L__main172:
	BTFSS       STATUS+0, 2 
	GOTO        L_main75
;ALARMA2ZONAS.c,180 :: 		Lcd_Out(1, 1, "SIS SIN ARMAR");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr19_ALARMA2ZONAS+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr19_ALARMA2ZONAS+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
L_main75:
;ALARMA2ZONAS.c,181 :: 		if(estado == 1)
	MOVLW       0
	XORWF       _estado+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main173
	MOVLW       1
	XORWF       _estado+0, 0 
L__main173:
	BTFSS       STATUS+0, 2 
	GOTO        L_main76
;ALARMA2ZONAS.c,182 :: 		Lcd_Out(1, 1, "SIS ARMARDO");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr20_ALARMA2ZONAS+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr20_ALARMA2ZONAS+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
L_main76:
;ALARMA2ZONAS.c,183 :: 		Lcd_out(2,1,"CONTRA: ");
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr21_ALARMA2ZONAS+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr21_ALARMA2ZONAS+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;ALARMA2ZONAS.c,184 :: 		i=0;
	CLRF        _i+0 
	CLRF        _i+1 
;ALARMA2ZONAS.c,185 :: 		error=0;
	CLRF        _error+0 
	CLRF        _error+1 
;ALARMA2ZONAS.c,186 :: 		}
L_main57:
;ALARMA2ZONAS.c,188 :: 		}
L_main56:
;ALARMA2ZONAS.c,189 :: 		if(kp == 79)
	MOVF        _kp+0, 0 
	XORLW       79
	BTFSS       STATUS+0, 2 
	GOTO        L_main77
;ALARMA2ZONAS.c,190 :: 		{ if(estado == 0)
	MOVLW       0
	XORWF       _estado+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main174
	MOVLW       0
	XORWF       _estado+0, 0 
L__main174:
	BTFSS       STATUS+0, 2 
	GOTO        L_main78
;ALARMA2ZONAS.c,191 :: 		{  Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;ALARMA2ZONAS.c,192 :: 		for(i = 0; i<=3; i++)
	CLRF        _i+0 
	CLRF        _i+1 
L_main79:
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       _i+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main175
	MOVF        _i+0, 0 
	SUBLW       3
L__main175:
	BTFSS       STATUS+0, 0 
	GOTO        L_main80
;ALARMA2ZONAS.c,195 :: 		Lcd_Out(1, 1, "PASSWORD M?");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr22_ALARMA2ZONAS+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr22_ALARMA2ZONAS+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;ALARMA2ZONAS.c,196 :: 		do{
L_main82:
;ALARMA2ZONAS.c,197 :: 		kpm = teclado();
	CALL        _teclado+0, 0
	MOVF        R0, 0 
	MOVWF       _kpm+0 
;ALARMA2ZONAS.c,198 :: 		Delay_ms(30);
	MOVLW       39
	MOVWF       R12, 0
	MOVLW       245
	MOVWF       R13, 0
L_main85:
	DECFSZ      R13, 1, 1
	BRA         L_main85
	DECFSZ      R12, 1, 1
	BRA         L_main85
;ALARMA2ZONAS.c,201 :: 		while(!kpm);
	MOVF        _kpm+0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_main82
;ALARMA2ZONAS.c,203 :: 		Lcd_Chr(2, i + 1 , 'X');
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVF        _i+0, 0 
	ADDLW       1
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       88
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;ALARMA2ZONAS.c,204 :: 		usuario[i] = kpm;
	MOVLW       _usuario+0
	ADDWF       _i+0, 0 
	MOVWF       FSR1L+0 
	MOVLW       hi_addr(_usuario+0)
	ADDWFC      _i+1, 0 
	MOVWF       FSR1L+1 
	MOVF        _kpm+0, 0 
	MOVWF       POSTINC1+0 
;ALARMA2ZONAS.c,192 :: 		for(i = 0; i<=3; i++)
	INFSNZ      _i+0, 1 
	INCF        _i+1, 1 
;ALARMA2ZONAS.c,206 :: 		}
	GOTO        L_main79
L_main80:
;ALARMA2ZONAS.c,208 :: 		if(usuario[0] == maestro[0] && usuario[1] == maestro[1] && usuario[2] == maestro[2] && usuario[3] == maestro[3])
	MOVF        _usuario+0, 0 
	XORWF       _maestro+0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L_main88
	MOVF        _usuario+1, 0 
	XORWF       _maestro+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L_main88
	MOVF        _usuario+2, 0 
	XORWF       _maestro+2, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L_main88
	MOVF        _usuario+3, 0 
	XORWF       _maestro+3, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L_main88
L__main143:
;ALARMA2ZONAS.c,210 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;ALARMA2ZONAS.c,211 :: 		Lcd_Out(1, 1, "INTRO NEW P:");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr23_ALARMA2ZONAS+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr23_ALARMA2ZONAS+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;ALARMA2ZONAS.c,212 :: 		contador = 0;
	CLRF        _contador+0 
	CLRF        _contador+1 
;ALARMA2ZONAS.c,213 :: 		while(contador>= 0 && contador < 4)
L_main89:
	MOVLW       128
	XORWF       _contador+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main176
	MOVLW       0
	SUBWF       _contador+0, 0 
L__main176:
	BTFSS       STATUS+0, 0 
	GOTO        L_main90
	MOVLW       128
	XORWF       _contador+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main177
	MOVLW       4
	SUBWF       _contador+0, 0 
L__main177:
	BTFSC       STATUS+0, 0 
	GOTO        L_main90
L__main142:
;ALARMA2ZONAS.c,215 :: 		do{
L_main93:
;ALARMA2ZONAS.c,217 :: 		kpm = teclado();
	CALL        _teclado+0, 0
	MOVF        R0, 0 
	MOVWF       _kpm+0 
;ALARMA2ZONAS.c,218 :: 		Delay_ms(30);
	MOVLW       39
	MOVWF       R12, 0
	MOVLW       245
	MOVWF       R13, 0
L_main96:
	DECFSZ      R13, 1, 1
	BRA         L_main96
	DECFSZ      R12, 1, 1
	BRA         L_main96
;ALARMA2ZONAS.c,221 :: 		while(!kpm);
	MOVF        _kpm+0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_main93
;ALARMA2ZONAS.c,222 :: 		if(kpm == 48 || kpm == 49 || kpm == 50 || kpm == 51 || kpm == 52 || kpm == 53 || kpm == 54 || kpm == 55 || kpm == 56 || kpm == 57)
	MOVF        _kpm+0, 0 
	XORLW       48
	BTFSC       STATUS+0, 2 
	GOTO        L__main141
	MOVF        _kpm+0, 0 
	XORLW       49
	BTFSC       STATUS+0, 2 
	GOTO        L__main141
	MOVF        _kpm+0, 0 
	XORLW       50
	BTFSC       STATUS+0, 2 
	GOTO        L__main141
	MOVF        _kpm+0, 0 
	XORLW       51
	BTFSC       STATUS+0, 2 
	GOTO        L__main141
	MOVF        _kpm+0, 0 
	XORLW       52
	BTFSC       STATUS+0, 2 
	GOTO        L__main141
	MOVF        _kpm+0, 0 
	XORLW       53
	BTFSC       STATUS+0, 2 
	GOTO        L__main141
	MOVF        _kpm+0, 0 
	XORLW       54
	BTFSC       STATUS+0, 2 
	GOTO        L__main141
	MOVF        _kpm+0, 0 
	XORLW       55
	BTFSC       STATUS+0, 2 
	GOTO        L__main141
	MOVF        _kpm+0, 0 
	XORLW       56
	BTFSC       STATUS+0, 2 
	GOTO        L__main141
	MOVF        _kpm+0, 0 
	XORLW       57
	BTFSC       STATUS+0, 2 
	GOTO        L__main141
	GOTO        L_main99
L__main141:
;ALARMA2ZONAS.c,224 :: 		switch(contador)
	GOTO        L_main100
;ALARMA2ZONAS.c,225 :: 		{     case 0:  Lcd_Chr(2, 1, kpm);
L_main102:
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVF        _kpm+0, 0 
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;ALARMA2ZONAS.c,226 :: 		usuario[0] = kpm;
	MOVF        _kpm+0, 0 
	MOVWF       _usuario+0 
;ALARMA2ZONAS.c,227 :: 		break;
	GOTO        L_main101
;ALARMA2ZONAS.c,228 :: 		case 1:  Lcd_Chr(2, 2, kpm);
L_main103:
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVF        _kpm+0, 0 
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;ALARMA2ZONAS.c,229 :: 		usuario[1] = kpm;
	MOVF        _kpm+0, 0 
	MOVWF       _usuario+1 
;ALARMA2ZONAS.c,230 :: 		break;
	GOTO        L_main101
;ALARMA2ZONAS.c,231 :: 		case 2:  Lcd_Chr(2, 3, kpm);
L_main104:
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVF        _kpm+0, 0 
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;ALARMA2ZONAS.c,232 :: 		usuario[2] = kpm;
	MOVF        _kpm+0, 0 
	MOVWF       _usuario+2 
;ALARMA2ZONAS.c,233 :: 		break;
	GOTO        L_main101
;ALARMA2ZONAS.c,234 :: 		case 3:  Lcd_Chr(2, 4, kpm);
L_main105:
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVF        _kpm+0, 0 
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;ALARMA2ZONAS.c,235 :: 		usuario[3] = kpm;
	MOVF        _kpm+0, 0 
	MOVWF       _usuario+3 
;ALARMA2ZONAS.c,236 :: 		break;
	GOTO        L_main101
;ALARMA2ZONAS.c,237 :: 		}
L_main100:
	MOVLW       0
	XORWF       _contador+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main178
	MOVLW       0
	XORWF       _contador+0, 0 
L__main178:
	BTFSC       STATUS+0, 2 
	GOTO        L_main102
	MOVLW       0
	XORWF       _contador+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main179
	MOVLW       1
	XORWF       _contador+0, 0 
L__main179:
	BTFSC       STATUS+0, 2 
	GOTO        L_main103
	MOVLW       0
	XORWF       _contador+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main180
	MOVLW       2
	XORWF       _contador+0, 0 
L__main180:
	BTFSC       STATUS+0, 2 
	GOTO        L_main104
	MOVLW       0
	XORWF       _contador+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main181
	MOVLW       3
	XORWF       _contador+0, 0 
L__main181:
	BTFSC       STATUS+0, 2 
	GOTO        L_main105
L_main101:
;ALARMA2ZONAS.c,238 :: 		contador++;
	INFSNZ      _contador+0, 1 
	INCF        _contador+1, 1 
;ALARMA2ZONAS.c,241 :: 		}
L_main99:
;ALARMA2ZONAS.c,242 :: 		}
	GOTO        L_main89
L_main90:
;ALARMA2ZONAS.c,243 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;ALARMA2ZONAS.c,244 :: 		Lcd_Out(1, 1, "INTRO NEW OVEZ:");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr24_ALARMA2ZONAS+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr24_ALARMA2ZONAS+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;ALARMA2ZONAS.c,245 :: 		contador = 0;
	CLRF        _contador+0 
	CLRF        _contador+1 
;ALARMA2ZONAS.c,246 :: 		while(contador>= 0 && contador < 4)
L_main106:
	MOVLW       128
	XORWF       _contador+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main182
	MOVLW       0
	SUBWF       _contador+0, 0 
L__main182:
	BTFSS       STATUS+0, 0 
	GOTO        L_main107
	MOVLW       128
	XORWF       _contador+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main183
	MOVLW       4
	SUBWF       _contador+0, 0 
L__main183:
	BTFSC       STATUS+0, 0 
	GOTO        L_main107
L__main140:
;ALARMA2ZONAS.c,248 :: 		do{
L_main110:
;ALARMA2ZONAS.c,249 :: 		kpm = teclado();
	CALL        _teclado+0, 0
	MOVF        R0, 0 
	MOVWF       _kpm+0 
;ALARMA2ZONAS.c,250 :: 		Delay_ms(30);
	MOVLW       39
	MOVWF       R12, 0
	MOVLW       245
	MOVWF       R13, 0
L_main113:
	DECFSZ      R13, 1, 1
	BRA         L_main113
	DECFSZ      R12, 1, 1
	BRA         L_main113
;ALARMA2ZONAS.c,252 :: 		while(!kpm);
	MOVF        _kpm+0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_main110
;ALARMA2ZONAS.c,253 :: 		if(kpm == 48 || kpm == 49 || kpm == 50 || kpm == 51 || kpm == 52 || kpm == 53 || kpm == 54 || kpm == 55 || kpm == 56 || kpm == 57)
	MOVF        _kpm+0, 0 
	XORLW       48
	BTFSC       STATUS+0, 2 
	GOTO        L__main139
	MOVF        _kpm+0, 0 
	XORLW       49
	BTFSC       STATUS+0, 2 
	GOTO        L__main139
	MOVF        _kpm+0, 0 
	XORLW       50
	BTFSC       STATUS+0, 2 
	GOTO        L__main139
	MOVF        _kpm+0, 0 
	XORLW       51
	BTFSC       STATUS+0, 2 
	GOTO        L__main139
	MOVF        _kpm+0, 0 
	XORLW       52
	BTFSC       STATUS+0, 2 
	GOTO        L__main139
	MOVF        _kpm+0, 0 
	XORLW       53
	BTFSC       STATUS+0, 2 
	GOTO        L__main139
	MOVF        _kpm+0, 0 
	XORLW       54
	BTFSC       STATUS+0, 2 
	GOTO        L__main139
	MOVF        _kpm+0, 0 
	XORLW       55
	BTFSC       STATUS+0, 2 
	GOTO        L__main139
	MOVF        _kpm+0, 0 
	XORLW       56
	BTFSC       STATUS+0, 2 
	GOTO        L__main139
	MOVF        _kpm+0, 0 
	XORLW       57
	BTFSC       STATUS+0, 2 
	GOTO        L__main139
	GOTO        L_main116
L__main139:
;ALARMA2ZONAS.c,255 :: 		switch(contador)
	GOTO        L_main117
;ALARMA2ZONAS.c,256 :: 		{    case 0:  Lcd_Chr(2, 1, kpm);
L_main119:
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVF        _kpm+0, 0 
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;ALARMA2ZONAS.c,257 :: 		u[0] = kpm;
	MOVF        _kpm+0, 0 
	MOVWF       _u+0 
;ALARMA2ZONAS.c,258 :: 		break;
	GOTO        L_main118
;ALARMA2ZONAS.c,259 :: 		case 1:  Lcd_Chr(2, 2, kpm);
L_main120:
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVF        _kpm+0, 0 
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;ALARMA2ZONAS.c,260 :: 		u[1] = kpm;
	MOVF        _kpm+0, 0 
	MOVWF       _u+1 
;ALARMA2ZONAS.c,261 :: 		break;
	GOTO        L_main118
;ALARMA2ZONAS.c,262 :: 		case 2:  Lcd_Chr(2, 3, kpm);
L_main121:
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVF        _kpm+0, 0 
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;ALARMA2ZONAS.c,263 :: 		u[2] = kpm;
	MOVF        _kpm+0, 0 
	MOVWF       _u+2 
;ALARMA2ZONAS.c,264 :: 		break;
	GOTO        L_main118
;ALARMA2ZONAS.c,265 :: 		case 3:  Lcd_Chr(2, 4, kpm);
L_main122:
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVF        _kpm+0, 0 
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;ALARMA2ZONAS.c,266 :: 		u[3] = kpm;
	MOVF        _kpm+0, 0 
	MOVWF       _u+3 
;ALARMA2ZONAS.c,267 :: 		break;
	GOTO        L_main118
;ALARMA2ZONAS.c,268 :: 		}
L_main117:
	MOVLW       0
	XORWF       _contador+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main184
	MOVLW       0
	XORWF       _contador+0, 0 
L__main184:
	BTFSC       STATUS+0, 2 
	GOTO        L_main119
	MOVLW       0
	XORWF       _contador+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main185
	MOVLW       1
	XORWF       _contador+0, 0 
L__main185:
	BTFSC       STATUS+0, 2 
	GOTO        L_main120
	MOVLW       0
	XORWF       _contador+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main186
	MOVLW       2
	XORWF       _contador+0, 0 
L__main186:
	BTFSC       STATUS+0, 2 
	GOTO        L_main121
	MOVLW       0
	XORWF       _contador+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main187
	MOVLW       3
	XORWF       _contador+0, 0 
L__main187:
	BTFSC       STATUS+0, 2 
	GOTO        L_main122
L_main118:
;ALARMA2ZONAS.c,269 :: 		contador++;
	INFSNZ      _contador+0, 1 
	INCF        _contador+1, 1 
;ALARMA2ZONAS.c,270 :: 		}
L_main116:
;ALARMA2ZONAS.c,271 :: 		}
	GOTO        L_main106
L_main107:
;ALARMA2ZONAS.c,272 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;ALARMA2ZONAS.c,273 :: 		if(usuario[0] == u[0] && usuario[1] == u[1] && usuario[2] == u[2] && usuario[3] == u[3])
	MOVF        _usuario+0, 0 
	XORWF       _u+0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L_main125
	MOVF        _usuario+1, 0 
	XORWF       _u+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L_main125
	MOVF        _usuario+2, 0 
	XORWF       _u+2, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L_main125
	MOVF        _usuario+3, 0 
	XORWF       _u+3, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L_main125
L__main138:
;ALARMA2ZONAS.c,275 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;ALARMA2ZONAS.c,276 :: 		for(i = 0; i<4; i++)
	CLRF        _i+0 
	CLRF        _i+1 
L_main126:
	MOVLW       128
	XORWF       _i+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main188
	MOVLW       4
	SUBWF       _i+0, 0 
L__main188:
	BTFSC       STATUS+0, 0 
	GOTO        L_main127
;ALARMA2ZONAS.c,277 :: 		fija[i] = usuario[i];
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
;ALARMA2ZONAS.c,276 :: 		for(i = 0; i<4; i++)
	INFSNZ      _i+0, 1 
	INCF        _i+1, 1 
;ALARMA2ZONAS.c,277 :: 		fija[i] = usuario[i];
	GOTO        L_main126
L_main127:
;ALARMA2ZONAS.c,278 :: 		Lcd_Out(1, 1, "Password Modif");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr25_ALARMA2ZONAS+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr25_ALARMA2ZONAS+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;ALARMA2ZONAS.c,279 :: 		Delay_ms(3000);
	MOVLW       16
	MOVWF       R11, 0
	MOVLW       57
	MOVWF       R12, 0
	MOVLW       13
	MOVWF       R13, 0
L_main129:
	DECFSZ      R13, 1, 1
	BRA         L_main129
	DECFSZ      R12, 1, 1
	BRA         L_main129
	DECFSZ      R11, 1, 1
	BRA         L_main129
	NOP
	NOP
;ALARMA2ZONAS.c,280 :: 		}
	GOTO        L_main130
L_main125:
;ALARMA2ZONAS.c,282 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;ALARMA2ZONAS.c,283 :: 		Lcd_Out(1, 1, "Pass 1 dif 2");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr26_ALARMA2ZONAS+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr26_ALARMA2ZONAS+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;ALARMA2ZONAS.c,284 :: 		Lcd_Out(2, 1, "Intente Nueva.");
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr27_ALARMA2ZONAS+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr27_ALARMA2ZONAS+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;ALARMA2ZONAS.c,285 :: 		Delay_ms(3000);
	MOVLW       16
	MOVWF       R11, 0
	MOVLW       57
	MOVWF       R12, 0
	MOVLW       13
	MOVWF       R13, 0
L_main131:
	DECFSZ      R13, 1, 1
	BRA         L_main131
	DECFSZ      R12, 1, 1
	BRA         L_main131
	DECFSZ      R11, 1, 1
	BRA         L_main131
	NOP
	NOP
;ALARMA2ZONAS.c,286 :: 		}
L_main130:
;ALARMA2ZONAS.c,287 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;ALARMA2ZONAS.c,288 :: 		Lcd_Out(1, 1, "SIS SIN ARMAR");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr28_ALARMA2ZONAS+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr28_ALARMA2ZONAS+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;ALARMA2ZONAS.c,292 :: 		}
L_main88:
;ALARMA2ZONAS.c,293 :: 		i = 0;
	CLRF        _i+0 
	CLRF        _i+1 
;ALARMA2ZONAS.c,294 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;ALARMA2ZONAS.c,295 :: 		if(estado == 0)
	MOVLW       0
	XORWF       _estado+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main189
	MOVLW       0
	XORWF       _estado+0, 0 
L__main189:
	BTFSS       STATUS+0, 2 
	GOTO        L_main132
;ALARMA2ZONAS.c,296 :: 		Lcd_Out(1, 1, "SIS SIN ARMAR");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr29_ALARMA2ZONAS+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr29_ALARMA2ZONAS+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
L_main132:
;ALARMA2ZONAS.c,297 :: 		if(estado == 1)
	MOVLW       0
	XORWF       _estado+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main190
	MOVLW       1
	XORWF       _estado+0, 0 
L__main190:
	BTFSS       STATUS+0, 2 
	GOTO        L_main133
;ALARMA2ZONAS.c,298 :: 		Lcd_Out(1, 1, "SIS ARMARDO");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr30_ALARMA2ZONAS+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr30_ALARMA2ZONAS+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
L_main133:
;ALARMA2ZONAS.c,300 :: 		Lcd_out(2,1,"CONTRA: ");
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr31_ALARMA2ZONAS+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr31_ALARMA2ZONAS+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;ALARMA2ZONAS.c,302 :: 		}
	GOTO        L_main134
L_main78:
;ALARMA2ZONAS.c,304 :: 		i = 0;
	CLRF        _i+0 
	CLRF        _i+1 
;ALARMA2ZONAS.c,305 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;ALARMA2ZONAS.c,306 :: 		Lcd_out(1,1," SIS ARM");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr32_ALARMA2ZONAS+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr32_ALARMA2ZONAS+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;ALARMA2ZONAS.c,307 :: 		Lcd_out(2,1, "NO SE PUEDE MOD!");
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr33_ALARMA2ZONAS+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr33_ALARMA2ZONAS+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;ALARMA2ZONAS.c,308 :: 		Delay_ms(3000);
	MOVLW       16
	MOVWF       R11, 0
	MOVLW       57
	MOVWF       R12, 0
	MOVLW       13
	MOVWF       R13, 0
L_main135:
	DECFSZ      R13, 1, 1
	BRA         L_main135
	DECFSZ      R12, 1, 1
	BRA         L_main135
	DECFSZ      R11, 1, 1
	BRA         L_main135
	NOP
	NOP
;ALARMA2ZONAS.c,309 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;ALARMA2ZONAS.c,310 :: 		if(estado == 0)
	MOVLW       0
	XORWF       _estado+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main191
	MOVLW       0
	XORWF       _estado+0, 0 
L__main191:
	BTFSS       STATUS+0, 2 
	GOTO        L_main136
;ALARMA2ZONAS.c,311 :: 		Lcd_Out(1, 1, "SIS SIN ARMAR");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr34_ALARMA2ZONAS+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr34_ALARMA2ZONAS+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
L_main136:
;ALARMA2ZONAS.c,312 :: 		if(estado == 1)
	MOVLW       0
	XORWF       _estado+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main192
	MOVLW       1
	XORWF       _estado+0, 0 
L__main192:
	BTFSS       STATUS+0, 2 
	GOTO        L_main137
;ALARMA2ZONAS.c,313 :: 		Lcd_Out(1, 1, "SIS ARMARDO");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr35_ALARMA2ZONAS+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr35_ALARMA2ZONAS+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
L_main137:
;ALARMA2ZONAS.c,314 :: 		Lcd_out(2,1,"CONTRA: ");
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr36_ALARMA2ZONAS+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr36_ALARMA2ZONAS+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;ALARMA2ZONAS.c,316 :: 		}
L_main134:
;ALARMA2ZONAS.c,319 :: 		}
L_main77:
;ALARMA2ZONAS.c,320 :: 		}
	GOTO        L_main23
;ALARMA2ZONAS.c,325 :: 		}
L_end_main:
	GOTO        $+0
; end of _main
