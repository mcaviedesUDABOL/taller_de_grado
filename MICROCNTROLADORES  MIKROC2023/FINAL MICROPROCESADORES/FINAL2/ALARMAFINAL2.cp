#line 1 "C:/Users/WINDOWS/Dropbox/PC/Desktop/MATERIAS/MICROPROCESADORES Y MICROCONTROLADORES/FINAL MICROPROCESADORES/FINAL2/ALARMAFINAL2.c"
sbit LCD_RS at RB5_bit;
sbit LCD_EN at RB6_bit;
sbit LCD_D4 at RB1_bit;
sbit LCD_D5 at RB2_bit;
sbit LCD_D6 at RB3_bit;
sbit LCD_D7 at RB4_bit;

sbit LCD_RS_Direction at TRISB5_bit;
sbit LCD_EN_Direction at TRISB6_bit;
sbit LCD_D4_Direction at TRISB1_bit;
sbit LCD_D5_Direction at TRISB2_bit;
sbit LCD_D6_Direction at TRISB3_bit;
sbit LCD_D7_Direction at TRISB4_bit;

char keypadPort at PORTD;
char kp,kpm, passwordm[4], passwordc[4], passwordu[4];

int contador = 0, intentos = 0, i, mcontador, tsir = 6, sen1, sen2;
unsigned int estado, password = 1972;

char keypadpress(char kpr)
{

 char c = kpr;
 switch(c)
 {
 case 1: return 79;
 case 2: return 48;
 case 3: return 61;
 case 4: return 43;
 case 5: return 49;
 case 6: return 50;
 case 7: return 51;
 case 8: return 45;
 case 9: return 52;
 case 10: return 53;
 case 11: return 54;
 case 12: return 42;
 case 13: return 55;
 case 14: return 56;
 case 15: return 57;
 case 16: return 47;
 }

}
unsigned char readEEPROM(unsigned char add)
{
 EEADR = add;
 EECON1.EEPGD = 0;
 EECON1.RD = 1;
 Delay_ms(20);
 return EEDATA;

}

void writeEEPROM(unsigned char address, unsigned char d)
{
 unsigned char INTCON_SAVE;
 EEADR = address;
 EEDATA = d;
 EECON1.EEPGD = 0;
 EECON1.WREN = 1;
 INTCON_SAVE = INTCON;
 INTCON = 0;
 EECON2 = 0x55;
 EECON2 = 0xAA;
 EECON1.WR = 1;
 INTCON = INTCON_SAVE;
 EECON1.WREN = 0;
 while(PIR2.EEIF == 0);
 {
 asm nop;
 }

 PIR2.EEIF = 0;
 Delay_ms(20);
}

void main() {





 TRISB0_bit = 0;
 TRISB7_bit = 0;
 TRISC6_bit = 1;
 TRISC7_bit = 1;
 RB0_bit = 0;
 Keypad_Init();
 Lcd_Init();
 Lcd_Cmd(_LCD_CLEAR);
 Lcd_Cmd(_LCD_CURSOR_OFF);
 EEPROM_Write(0,49);

 EEPROM_Write(1,57);

 EEPROM_Write(2,55);

 EEPROM_Write(3,50);


 EEPROM_Write(4,48);

 EEPROM_Write(5,48);

 EEPROM_Write(6,48);

 EEPROM_Write(7,48);


 EEPROM_Write(8,tsir);

 contador = 0;
 estado = 0;
 Lcd_Out(1, 1, "SIS SIN ARMAR");
 while(1){
 kp = Keypad_Key_Click();
 Delay_ms(50);
 kp = keypadpress(kp);
 Lcd_Chr(2, 14, kp);
 if(kp == 79 || kp == 61)
 { if(kp == 79)
 { kp = 90;
 for(i = 0; i<=3; i++)
 {
 Lcd_Cmd(_LCD_CLEAR);
 Lcd_Out(1, 1, "PASSWORD M?");

 do {
 kpm = Keypad_Key_Click();
 Delay_ms(50);
 }
 while(!kpm);
 kpm = keypadpress(kpm);


 passwordm[i] = kpm;
 Lcd_Chr(2, i+1, passwordm[i]);
 }

 for(i=0; i<=3; i++)
 passwordc[i] = EEPROM_Read(i + 4);
 if(passwordc[0] == passwordm[0] && passwordc[1] == passwordm[1] && passwordc[2] == passwordm[2] && passwordc[3] == passwordm[3])
 {
 Lcd_Cmd(_LCD_CLEAR);
 Lcd_Out(1, 1, "INTRO NEW P:");

 while(mcontador>= 0 && mcontador < 4)
 {
 do{
 kpm = Keypad_Key_Click();
 Delay_ms(300);
 }
 while(!kpm);
 kpm = keypadpress(kpm);
 switch(mcontador)
 { case 0: Lcd_Chr(2, 1, kpm);
 passwordc[0] = kpm;
 break;
 case 1: Lcd_Chr(2, 2, kpm);
 passwordc[1] = kpm;
 break;
 case 2: Lcd_Chr(2, 3, kpm);
 passwordc[2] = kpm;
 break;
 case 3: Lcd_Chr(2, 4, kpm);
 passwordc[3] = kpm;
 break;
 }
 mcontador++;
 }
 Lcd_Cmd(_LCD_CLEAR);
 Lcd_Out(1, 1, "INTRO NEW OVEZ:");
 mcontador = 0;
 while(mcontador>= 0 && mcontador < 4)
 {
 do{
 kpm = Keypad_Key_Press();
 Delay_ms(300);
 }
 while(!kpm);
 kpm = keypadpress(kpm);
 switch(mcontador)
 { case 0: Lcd_Chr(2, 1, kpm);
 passwordu[0] = kpm;
 break;
 case 1: Lcd_Chr(2, 2, kpm);
 passwordu[1] = kpm;
 break;
 case 2: Lcd_Chr(2, 3, kpm);
 passwordu[2] = kpm;
 break;
 case 3: Lcd_Chr(2, 4, kpm);
 passwordu[3] = kpm;
 break;
 }
 mcontador++;
 }
 Lcd_Cmd(_LCD_CLEAR);
 if(passwordc[0] == passwordu[0] && passwordc[1] == passwordu[1] && passwordc[2] == passwordc[2] && passwordc[3] == passwordc[3])
 {
 Lcd_Cmd(_LCD_CLEAR);
 for(i = 0; i<4; i++)
 EEPROM_Write(i, passwordc[i]);
 Lcd_Out(1, 1, "Password Modif");
 Delay_ms(3000);
 }
 else{
 Lcd_Cmd(_LCD_CLEAR);
 Lcd_Out(1, 1, "Pass 1 dif 2");
 Lcd_Out(2, 1, "Intente Nueva.");
 Delay_ms(3000);
 }
 Lcd_Cmd(_LCD_CLEAR);
 Lcd_Out(1, 1, "SIS SIN ARMAR");




 Delay_ms(5000);
 mcontador = 0;


 }



 }
 if(estado == 0)
 Lcd_Out(1, 1, "SIS SIN ARMAR");
 if(estado == 1)
 Lcd_Out(1, 1, "SIS ARMARDO");

 }

 if(kp == 48 || kp == 49 || kp == 50 || kp == 51 || kp == 52 || kp == 53 || kp == 54 || kp == 55 || kp == 56 || kp == 57)
 {

 Lcd_Cmd(_LCD_CLEAR);
 for(i = 0; i<=3; i++)
 {
 Lcd_Out(1, 1, "PASSWORD?:");
 Delay_ms(50);

 do {
 kp = Keypad_Key_Click();
 Delay_ms(50);
 }
 while(!kp);
 kp = keypadpress(kp);
 Lcd_Chr(2, 14, kp);

 passwordu[i] = kp;
 Lcd_Chr(2, i+1, passwordu[i]);
 }
 Lcd_Cmd(_LCD_CLEAR);
 for(i=0; i<=3; i++)
 passwordc[i] = EEPROM_Read(i);
 if(passwordc[0] == passwordu[0] && passwordc[1] == passwordu[1] && passwordc[2] == passwordu[2] && passwordc[3] == passwordu[3])
 {
 if(estado == 1)
 {
 intentos = 0;
 RB7_bit = 0;
 estado = 0;
 Lcd_Cmd(_LCD_CLEAR);
 Lcd_Out(1, 1, "SIS SIN ARMAR");
 Delay_ms(100);
 }
 else
 { intentos = 0;
 estado = 1;
 RB7_bit = 1;
 Lcd_Cmd(_LCD_CLEAR);
 Lcd_Out(1, 1, "SIS ARMADO");
 Delay_ms(100);

 }


 }
 else
 {
 intentos++;

 Lcd_Cmd(_LCD_CLEAR);
 Lcd_Out(1, 1, "NO VALIDO");
 Delay_ms(2000);
 if(intentos >= 3)
 { intentos = 0;
 Lcd_Out(1, 1, "3 intentos....");
 Lcd_Out(2, 1, "Alarm Bloq");
 Delay_ms(5000);

 }
 Lcd_Cmd(_LCD_CLEAR);
 if(estado == 0)
 Lcd_Out(1, 1, "SIS SIN ARMAR");
 if(estado == 1)
 Lcd_Out(1, 1, "SIS ARMARDO");
 }



 }

 if(estado == 0)
 {
 RB0_bit = 0;
 }
 if(estado == 1)
 {
 if(RC6_bit == 1 || RC7_bit == 1)
 {
 RB0_bit = 1;
 }
 if(contador >= 100*EEPROM_Read(8))
 {
 contador = 0;
 RB0_bit = 0;
 }
 contador++;

 }

 }
}
