#line 1 "C:/Users/WINDOWS/Dropbox/PC/Desktop/PROYECTO FINAL MICROCONTROLADORES 2023/CLAVE_TECLADO.c"
#line 1 "c:/users/windows/dropbox/pc/desktop/proyecto final microcontroladores 2023/configuracion.h"
extern char kp;

sbit LCD_RS at RD0_bit;
sbit LCD_EN at RD1_bit;
sbit LCD_D4 at RD4_bit;
sbit LCD_D5 at RD5_bit;
sbit LCD_D6 at RD6_bit;
sbit LCD_D7 at RD7_bit;

sbit LCD_RS_Direction at TRISD0_bit;
sbit LCD_EN_Direction at TRISD1_bit;
sbit LCD_D4_Direction at TRISD4_bit;
sbit LCD_D5_Direction at TRISD5_bit;
sbit LCD_D6_Direction at TRISD6_bit;
sbit LCD_D7_Direction at TRISD7_bit;

char keypadPort at PORTB;

char teclado(){
 kp = 0;


 kp = Keypad_Key_Click();
 Delay_ms(20);


 switch (kp) {
 case 1: kp = 79; break;
 case 2: kp = 40; break;
 case 3: kp = 61; break;
 case 4: kp = 43; break;
 case 5: kp = 49; break;
 case 6: kp = 50; break;
 case 7: kp = 51; break;
 case 8: kp = 45; break;
 case 9: kp = 52; break;
 case 10: kp = 53; break;
 case 11: kp = 54; break;
 case 12: kp = 45; break;
 case 13: kp = 55; break;
 case 14: kp = 56; break;
 case 15: kp = 57; break;
 case 16: kp = 47; break;

 }
 return kp;
}
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
#line 4 "C:/Users/WINDOWS/Dropbox/PC/Desktop/PROYECTO FINAL MICROCONTROLADORES 2023/CLAVE_TECLADO.c"
char kp, kpm;
char usuario[5]=" ";
char u[5]=" ";
char fija[5]="1972";
char maestro[5] = "0000";

int i=0, error=0, contador = 0, tsir = 0, estado, intentos = 0;
int sen1 = 0, sen2 = 0;
void main()
{

 ADCON1 = 0x0F;
 T0CON = 0b11000111;
 TRISC = 0x00;
 TRISD2_bit = 1;
 TRISD3_bit = 1;
 PORTC = 0;
 Lcd_init();
 Lcd_cmd(12);
 Keypad_init();

 contador = 0;
 estado = 0;


 Lcd_out(1,1,"DIGITE CONTRASENA");
 Lcd_out(2,1,"CONTRA: ");
 while(1)
 {

 do{
 if(RD2_bit == 1);
 { sen1 = RD2_bit;
 Delay_ms(20);
 }
 if(RD3_bit == 1);
 {
 sen2 = RD3_bit;
 Delay_ms(20);

 }
 if(estado == 1)
 {
 if(sen2 == 1 || sen1 == 1)
 {
 RC0_bit = 1;
 sen1 = 0;
 sen2 = 0;
 tsir = 1;
 }

 }
 else if(estado == 0)
 {
 RC0_bit = 0;

 }
 if(tsir == 1)
 contador++;

 if(contador == 200)
 { RC0_bit = 0;
 contador = 0;
 tsir = 0;
 }

 kp= teclado();
 Delay_ms(30);
 }
 while(!kp);
 if(kp == 48 || kp == 49 || kp == 50 || kp == 51 || kp == 52 || kp == 53 || kp == 54 || kp == 55 || kp == 56 || kp == 57)
 { usuario[i] = kp;
 Lcd_chr_cp('*');
 i++;
 if(i==4)
 {
 Lcd_cmd(1);
 Lcd_out(1,1,"VALIDANDO");
 for(i=0; i<=3; i++)
 {
 if(fija[i] != usuario[i])
 {
 error++;
 }
 Lcd_chr(2,i+1, '*');
 Lcd_chr(3,i+1, usuario[i]);
 delay_ms(200);
 }
 if(error==0)
 {
 if(estado == 1)
 {
 intentos = 0;
 RC1_bit = 0;
 estado = 0;
 Lcd_Cmd(_LCD_CLEAR);
 Lcd_Out(1, 1, "SIS SIN ARMAR");
 Delay_ms(100);
 }
 else
 { intentos = 0;
 estado = 1;
 RC1_bit = 1;
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
 delay_ms(2000);
 lcd_cmd(1);
 Lcd_out(1,1,"DIGITE CONTRASENA");
 Lcd_out(2,1,"CONTRA: ");
 i=0;
 error=0;
 }

 }
 if(kp == 79)
 {
 for(i = 0; i<=3; i++)
 {
 Lcd_Cmd(_LCD_CLEAR);
 Lcd_Out(1, 1, "PASSWORD M?");
 do{
 kpm = Keypad_Key_Click();
 Delay_ms(30);
 }
 while(!kpm);
 kpm = keypadpress(kpm);
 Lcd_Chr(2, i + 1 , '*');

 usuario[i] = kpm;

 }

 if(usuario[0] == maestro[0] && usuario[1] == maestro[1] && usuario[2] == maestro[2] && usuario[3] == maestro[3])
 {
 Lcd_Cmd(_LCD_CLEAR);
 Lcd_Out(1, 1, "INTRO NEW P:");
 contador = 0;
 while(contador>= 0 && contador < 4)
 {
 do{
 kpm = teclado();
 Delay_ms(30);
 }
 while(!kpm);
 switch(contador)
 { case 0: Lcd_Chr(2, 1, kpm);
 usuario[0] = kpm;
 break;
 case 1: Lcd_Chr(2, 2, kpm);
 usuario[1] = kpm;
 break;
 case 2: Lcd_Chr(2, 3, kpm);
 usuario[2] = kpm;
 break;
 case 3: Lcd_Chr(2, 4, kpm);
 usuario[3] = kpm;
 break;
 }
 contador++;
 }
 Lcd_Cmd(_LCD_CLEAR);
 Lcd_Out(1, 1, "INTRO NEW OVEZ:");
 contador = 0;
 while(contador>= 0 && contador < 4)
 {
 do{
 kpm = teclado();
 Delay_ms(30);
 }
 while(!kpm);
 switch(contador)
 { case 0: Lcd_Chr(2, 1, kpm);
 u[0] = kpm;
 break;
 case 1: Lcd_Chr(2, 2, kpm);
 u[1] = kpm;
 break;
 case 2: Lcd_Chr(2, 3, kpm);
 u[2] = kpm;
 break;
 case 3: Lcd_Chr(2, 4, kpm);
 u[3] = kpm;
 break;
 }
 contador++;
 }
 Lcd_Cmd(_LCD_CLEAR);
 if(usuario[0] == u[0] && usuario[1] == u[1] && usuario[2] == u[2] && usuario[3] == u[3])
 {
 Lcd_Cmd(_LCD_CLEAR);
 for(i = 0; i<4; i++)
 fija[i] = usuario[i];
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



 }
 i = 0;
 Lcd_Cmd(_LCD_CLEAR);
 Lcd_out(1,1,"DIGITE CONTRASE�A");
 Lcd_out(2,1,"CONTRA: ");

 }

 }




}
