    // LCD module connections
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
char kp,kpm, umil, ucent, udec, unid, passwordc[4], passwordm[4] = {48, 48, 48, 48};

int contador = 0, intentos = 0, i, mcontador;
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
      /* case 1: c = 1; break;
       case 2: c = 2; break;
       case 3: c = 3; break;
       case 4: c = 65; break;
       case 5: c = 4; break;
       case 6: c = 5; break;
       case 7: c = 6; break;
       case 8: c = 66; break;
       case 9: c = 1; break;
       case 10: c = 2; break;
       case 11: c = 3; break;
       case 12: c = 65; break;
       case 13: c = 4; break;
       case 14: c = 5; break;
       case 15: c = 6; break;
       case 16: c = 66; break;
       */}
    // return c;
}

void main() 
{
     TRISB0_bit = 1;
     TRISB7_bit = 0;
     TRISE = 0b11111;
     Keypad_Init();
      Lcd_Init();
      Lcd_Cmd(_LCD_CLEAR);
      Lcd_Cmd(_LCD_CURSOR_OFF);
      EEPROM_Write(0,49);
      EEPROM_Write(1,57);
      EEPROM_Write(2,55);
      EEPROM_Write(3,50);
      
      
      estado = 0;
      Lcd_Out(1, 1, "SIS SIN ARMAR");
      while(1){

         //kp = 0;
         do {
           kp = Keypad_Key_Press();
           Delay_ms(200);
           //while(kp);
           }         
         while(!kp);
         //Lcd_Out(2, 1, kp);
         kp =  keypadpress(kp);
         Lcd_Chr(2, 14, kp);
         if(kp == 79 || kp == 61 || kp == 43 || kp == 42 || kp == 45 || kp == 47 )
          { 
            if(kp == 79 && estado == 0)
            {  Lcd_Cmd(_LCD_CLEAR);
               Lcd_Out(1, 1, "INTRO NEW P:");
               mcontador = 0;
               while(mcontador>= 0 && mcontador < 4)
               {
                   do{
                    kpm = Keypad_Key_Press();
                    Delay_ms(200);
                   }
                   while(!kpm);
                   kpm = keypadpress(kpm);
                   switch(mcontador)
                   {    case 0:  Lcd_Chr(2, 1, kpm);
                                 umil = kpm;
                                 break;
                        case 1:  Lcd_Chr(2, 2, kpm);
                                 ucent = kpm;
                                 break;
                        case 2:  Lcd_Chr(2, 3, kpm);
                                 udec = kpm;
                                 break;
                        case 3:  Lcd_Chr(2, 4, kpm);
                                 unid = kpm;
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
                    Delay_ms(200);
                   }
                   while(!kpm);
                   kpm = keypadpress(kpm);
                   switch(mcontador)
                   {    case 0:  Lcd_Chr(2, 1, kpm);
                                 passwordc[0] = kpm;
                                 break;
                        case 1:  Lcd_Chr(2, 2, kpm);
                                 passwordc[1] = kpm;
                                 break;
                        case 2:  Lcd_Chr(2, 3, kpm);
                                 passwordc[2] = kpm;
                                 break;
                        case 3:  Lcd_Chr(2, 4, kpm);
                                 passwordc[3] = kpm;
                                 break;
                   }
                   mcontador++;
               }
               Lcd_Cmd(_LCD_CLEAR);
               if(passwordc[0] == umil && passwordc[1] == ucent && passwordc[2] == udec && passwordc[3] == unid)
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
               Lcd_Out(1, 1, "SIS SIN ARMAR");
               
            }
            else{
                    Lcd_Cmd(_LCD_CLEAR);
                    Lcd_Out(1, 1, "SIS ARM");
                    Lcd_Out(2, 1, "CAM SOLO EN DARM");
                    Delay_ms(3000);
                 }
            Lcd_Cmd(_LCD_CLEAR);
            if(estado == 0)
                      Lcd_Out(1, 1, "SIS SIN ARMAR");
            if(estado == 1)
                      Lcd_Out(1, 1, "SIS ARMARDO");
            contador = 0;
           }
           else{
                     contador++;
                     switch(contador){
                        case 1: Lcd_Chr(2, 1, kp);
                                //Lcd_Chr(1, 10, kp);
                                umil = kp;
                                break;
                        case 2: Lcd_Chr(2, 2, kp);
                                //Lcd_Chr(1, 11, kp);
                                ucent = kp;
                                break;
                        case 3: Lcd_Chr(2, 3, kp);
                                //Lcd_Chr(1, 12, kp);
                                udec = kp;
                                break;
                        case 4: contador = 0;
                                Lcd_Chr(2, 4, kp);
                                //Lcd_Chr(1, 13, kp);
                                for(i = 0; i<4; i++)
                                      passwordc[i] = EEPROM_Read(i);
                                //Lcd_Chr(2, 1, umil);
                               if(passwordc[0] == umil && passwordc[1] == ucent && passwordc[2] == udec && passwordc[3] == kp)
                                {
                                          if (estado == 0)
                                          {    intentos = 0;
                                               Delay_ms(5000);
                                               estado = 1;
                                               RB7_bit = 1;
                                                Lcd_Cmd(_LCD_CLEAR);
                                               Lcd_Out(1, 1, "SIS ARMADO");
                                               break;
                                          }
                                          if(estado == 1)
                                          {
                                               intentos = 0;
                                               Delay_ms(5000);
                                               RB7_bit = 0;
                                               estado = 0;
                                                Lcd_Cmd(_LCD_CLEAR);
                                               Lcd_Out(1, 1, "SIS SIN ARMAR");
                                               break;
                                          }

                                 }
                                 else
                                 {   intentos++;
                                     contador = 0;
                                     Lcd_Cmd(_LCD_CLEAR);
                                     Lcd_Out(1, 1, "NO VALIDO");
                                      Delay_ms(2000);
                                      if(estado == 0)
                                                Lcd_Out(1, 1, "SIS SIN ARMAR");
                                      if(estado == 1)
                                                Lcd_Out(1, 1, "SIS ARMARDO");
                                     if(intentos >= 3)
                                     { intentos = 0;
                                       Lcd_Out(1, 1, "3 intentos....");
                                       Lcd_Out(2, 1, "Alarm Bloq");
                                       i = 2;
                                       while(i > 0);
                                       { i--;
                                         Delay_ms(5000);
                                       }
                                     }
                                     break;
                                  }

                     }
           }
         //  if(estado == 1)
           //{
              /* Radc = ADC_Read(0);
               Pre = 0.10861*Radc+10,5555;
               PreI = Pre;
              if(Pre >= 25 && Pre <= 35 )
              {
                 RB0_bit = 1;
                 Delay_ms(5000);
                 RB0_Bit = 0;
              }
               */
             /*/ if(RE0_bit == 1)
              {
                    RB0_bit = 1;
                    Delay_ms(3000);
                    RB0_bit = 0;
              }
              */


          // }

           
      }
}