char *puntero, password[5], texto[10];

char keypadPort at PORTD;
//Definicion pines para el LCD.
sbit LCD_RS at RB4_bit;
sbit LCD_EN at RB5_bit;
sbit LCD_D4 at RB0_bit;
sbit LCD_D5 at RB1_bit;
sbit LCD_D6 at RB2_bit;
sbit LCD_D7 at RB3_bit;

sbit LCD_RS_Direction at TRISB4_bit;
sbit LCD_EN_Direction at TRISB5_bit;
sbit LCD_D4_Direction at TRISB0_bit;
sbit LCD_D5_Direction at TRISB1_bit;
sbit LCD_D6_Direction at TRISB2_bit;
sbit LCD_D7_Direction at TRISB3_bit;

 //Función para decodificar el teclado.
char LeerTeclado()
{
     //Estructura switch case para evaluar los valores retornados
     //por la librería del teclado.
     switch(Keypad_Key_Press())
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
        default: return 0; //Tecla no pulsada.
        }
}
//char leerCadena()
void main() {
     //Keypad_Init();                           // Initialize Keypad
      //Declaración de variables.
     char Tecla;
      //Configuración e inicialización del PIC.
    Lcd_Init(); //Inicializa el LCD.
    Lcd_Cmd(_LCD_CURSOR_OFF); //Se apaga el cursor.
    Lcd_Out(1, 1,"Tecla:"); //Se imprime texto.
    while(1)//Bucle infinito.
    {   do {
           Tecla = LeerTeclado();
           delay_ms(40);
          }          
        while(!Tecla); //Se lee el teclado y su resultado se guarda en Tecla.
        Lcd_Chr(2,1,Tecla);
        delay_ms(40); //Visualización el valor retornado por el teclado.
    }
}