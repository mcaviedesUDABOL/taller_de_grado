char keypadPort at PORTC;
//Definicion pines para el LCD.
sbit LCD_RS at RB4_bit;
sbit LCD_EN at RB5_bit;
sbit LCD_D7 at RB3_bit;
sbit LCD_D6 at RB2_bit;
sbit LCD_D5 at RB1_bit;
sbit LCD_D4 at RB0_bit;
//Definicion de registros TRIS para el LCD.
sbit LCD_RS_Direction at TRISB4_bit;
sbit LCD_EN_Direction at TRISB5_bit;
sbit LCD_D7_Direction at TRISB3_bit;
sbit LCD_D6_Direction at TRISB2_bit;
sbit LCD_D5_Direction at TRISB1_bit;
sbit LCD_D4_Direction at TRISB0_bit
 //Función para decodificar el teclado.
char LeerTeclado( void )
{
     //Estructura switch case para evaluar los valores retornados
     //por la librería del teclado.
     switch(Keypad_Key_Press() )
     {
        case 1: return „1";
        case 2: return „2";
        case 3: return „3";
        case 4: return „A";
        case 5: return „4";
        case 6: return „5";
        case 7: return „6";
        case 8: return „B";
        case 9: return „7";
        case 10: return „8";
        case 11: return „9";
        case 12: return „C";
        case 13: return „*";
        case 14: return „0";
        case 15: return „#";
        case 16: return „D";
        default: return 0; //Tecla no pulsada.
        }
}
void main() {
      //Declaración de variables.
      char Tecla;
      //Configuración e inicialización del PIC.
      Lcd_Init(); //Inicializa el LCD.
      Lcd_Cmd(_LCD_CURSOR_OFF); //Se apaga el cursor.
      Lcd_Out(1, 1,"Tecla:"); //Se imprime texto.
      while(1)//Bucle infinito.
      {
         Tecla=LeerTeclado(); //Se lee el teclado y su resultado se guarda en Tecla.
         Lcd_Chr(2,1,Tecla); //Visualización el valor retornado por el teclado.
}
}