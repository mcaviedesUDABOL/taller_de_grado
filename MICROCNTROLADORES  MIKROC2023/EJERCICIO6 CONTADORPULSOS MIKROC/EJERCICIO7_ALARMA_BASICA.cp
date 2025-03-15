#line 1 "C:/Users/WINDOWS/Dropbox/PC/Desktop/MICROPROCESADORES Y MICROCONTROLADORES/MICROCNTROLADORES 2023/EJERCICIO6 CONTADORPULSOS MIKROC/EJERCICIO7_ALARMA_BASICA.c"
char keypadPort at PORTC;

sbit LCD_RS at RB4_bit;
sbit LCD_EN at RB5_bit;
sbit LCD_D7 at RB3_bit;
sbit LCD_D6 at RB2_bit;
sbit LCD_D5 at RB1_bit;
sbit LCD_D4 at RB0_bit;

sbit LCD_RS_Direction at TRISB4_bit;
sbit LCD_EN_Direction at TRISB5_bit;
sbit LCD_D7_Direction at TRISB3_bit;
sbit LCD_D6_Direction at TRISB2_bit;
sbit LCD_D5_Direction at TRISB1_bit;
sbit LCD_D4_Direction at TRISB0_bit

char LeerTeclado( void )
{


 switch(Keypad_Key_Press() )
 {
 default: return 0;
 }
}
void main() {

 char Tecla;

 Lcd_Init();
 Lcd_Cmd(_LCD_CURSOR_OFF);
 Lcd_Out(1, 1,"Tecla:");
 while(1)
 {
 Tecla=LeerTeclado();
 Lcd_Chr(2,1,Tecla);
}
}
