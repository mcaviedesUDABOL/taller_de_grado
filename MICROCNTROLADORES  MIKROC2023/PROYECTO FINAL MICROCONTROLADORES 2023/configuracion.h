extern char kp;
// LCD module connections
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

char  keypadPort at PORTB;

char teclado(){
    kp = 0;
    //do{
      // kp = Keypad_Key_Press();
      kp = Keypad_Key_Click();
      Delay_ms(20);
    //}while (!kp);

    switch (kp) {
      case  1: kp = 79; break; // o
      case  2: kp = 48; break; // 2
      case  3: kp = 61; break; // 3
      case  4: kp = 43; break; // A
      case  5: kp = 49; break; // 4
      case  6: kp = 50; break; // 5
      case  7: kp = 51; break; // 6
      case  8: kp = 45; break; // B
      case  9: kp = 52; break; // 7
      case 10: kp = 53; break; // 8
      case 11: kp = 54; break; // 9
      case 12: kp = 45; break; // C
      case 13: kp = 55; break; // *
      case 14: kp = 56; break; // 0
      case 15: kp = 57; break; // #
      case 16: kp = 47; break; // D

    }
    return kp;
}
/* char keypadpress(char kpr)
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
    // return c;
}
*/
unsigned char readEEPROM(unsigned char add)
{
         EEADR = add; //Address to be read
         EECON1.EEPGD = 0;//Selecting EEPROM Data Memory
         EECON1.RD = 1;//Initialise read cycle
         Delay_ms(20);
         return EEDATA; //Returning data

}

void writeEEPROM(unsigned char address, unsigned char d)
{
         unsigned char INTCON_SAVE;//To save INTCON register value
         EEADR = address; //Address to write
         EEDATA = d; //Data to write
         EECON1.EEPGD = 0; //Selecting EEPROM Data Memory
         EECON1.WREN = 1; //Enable writing of EEPROM
         INTCON_SAVE = INTCON;//Backup INCON interupt register
         INTCON = 0; //Diables the interrupt
         EECON2 = 0x55; //Required sequence for write to internal EEPROM
         EECON2 = 0xAA; //Required sequence for write to internal EEPROM
         EECON1.WR = 1; //Initialise write cycle
         INTCON = INTCON_SAVE;//Enables Interrupt
         EECON1.WREN = 0; //To disable write
         while(PIR2.EEIF == 0);//Checking for complition of write operation
         {
             asm nop; //do nothing
         }

         PIR2.EEIF = 0; //Clearing EEIF bit
        Delay_ms(20);
}