#include "configuracion.h"
//#define sen1 PORTD.RD2_bit
//#define sen2 PORTD.RD3_bit
char kp, kpm;
char usuario[5]=" ";
char u[5]=" ";
char fija[5]="1972";
char maestro[5] = "0000";
unsigned int tiempos = 200;

int i=0, error=0, contador = 0, tsir = 0, estado, intentos = 0, entrada = 0;
int sen1 = 0, sen2 = 0, tsal = 0, ten = 0;
void main() 
{
       //ANSEL = 0;
       ADCON1 = 0x0F;
       T0CON = 0b11000111;
       TRISC = 0x00;
       TRISD2_bit = 1;
       TRISD3_bit = 1;
       PORTC = 0;
       Lcd_init();
       Lcd_cmd(_LCD_CURSOR_OFF);
       Keypad_init();

       contador = 0;
       estado = 0;
       Lcd_out(1,1,"SIS SIN ARMAR");
       Lcd_out(2,1,"CONTRA: ");
       while(1)
       {
            
        do{
           if(RD2_bit == 1);
            {  sen1 = RD2_bit;
              Delay_ms(20);
              }           
           if(RD3_bit == 1);
            {
             sen2 = RD3_bit;
             Delay_ms(20);
             //contador++;
            }
           
             if(estado == 1)
             {
               if(tsal < tiempos)
               {
                   if(tsal%2 == 0)
                   {    RC1_bit = 0;
                        Delay_ms(50);
                        RC1_bit = 1;
                        Lcd_Out(4, 1, "ARMANDO SISTEMA!");
                        Delay_ms(50);
                   }
                }
                if(tsal == tiempos)
                        Lcd_Out(4, 1, "REVIZANDO SENSORES");
               if((sen2 == 1 || sen1 == 1) && tsal >= tiempos)
               {
                    ten = 1;
                    //RC0_bit = 1;
                    sen1 = 0;
                    sen2 = 0;
                    tsir = 1;
                    Lcd_Cmd(_LCD_CLEAR);
                    Lcd_Out(1, 1, "SIS ARMARDO");
                    Lcd_out(2,1,"CONTRA: ");
                  ///  Lcd_Out(4, 1, "ALARMA!!!!");
               }
             }
            else if(estado == 0)
             {
                  RC0_bit = 0;
                  //contador = 0;
             }
            if(ten == 1)
             {
                   entrada++;
                   if(entrada < tiempos)
                   { if(entrada%2 == 0)
                     {    RC1_bit = 0;
                          Delay_ms(50);
                          RC1_bit = 1;
                          Lcd_Out(4, 1, "SENSOR ABIERTO!!!");
                          Delay_ms(50);
                        }
                   }
              }

            if(tsir == 1)
              contador++;
            if(entrada >= tiempos)
            {
               ten = 0;
               entrada = 0;
               RC0_bit = 1;
               contador = 0;
               Lcd_Out(1, 1, "SIS ARMARDO");
               Lcd_out(2,1,"CONTRA: ");
               Lcd_Out(4, 1, "ALARMA!!!!");
              }
            
            if(contador == tiempos)
            {      RC0_bit = 0;
                   contador = 0;
                   tsir = 0;
            }
            tsal++;
            kp= teclado();
            Delay_ms(30);
           }
           while(!kp);
           if(kp == 48 || kp == 49 || kp == 50 || kp == 51 || kp == 52 || kp == 53 || kp == 54 || kp == 55 || kp == 56 || kp == 57)
           {       usuario[i] = kp;
                   //Lcd_chr_cp('*');
                  Lcd_Chr(2, i + 10, '*');
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
                           // Lcd_chr(3,i+1, usuario[i]);
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
                             {    intentos = 0;
                                  estado = 1;
                                  RC1_bit = 1;
                                  Lcd_Cmd(_LCD_CLEAR);
                                  Lcd_Out(1, 1, "SIS ARMADO");
                                  Delay_ms(100);
                                  tsal = 0;

                             }
                         }
                         else
                         {
                              intentos++;
                              //contador = 0;
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
                         delay_ms(1000);
                         lcd_cmd(1);
                         if(estado == 0)
                                        Lcd_Out(1, 1, "SIS SIN ARMAR");
                         if(estado == 1)
                                        Lcd_Out(1, 1, "SIS ARMARDO");
                         Lcd_out(2,1,"CONTRA: ");
                         i=0;
                         error=0;
                  }

             }
            if(kp == 79)
            { if(estado == 0)
              {  Lcd_Cmd(_LCD_CLEAR);
                 for(i = 0; i<=3; i++)
                {

                     Lcd_Out(1, 1, "PASSWORD M?");
                     do{
                           kpm = teclado();
                           Delay_ms(30);
                           
                     }
                     while(!kpm);

                     Lcd_Chr(2, i + 1 , 'X');
                     usuario[i] = kpm;
                    // Lcd_Chr(3, i+1, usuario[i]);
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
                         if(kpm == 48 || kpm == 49 || kpm == 50 || kpm == 51 || kpm == 52 || kpm == 53 || kpm == 54 || kpm == 55 || kpm == 56 || kpm == 57)
                           {
                                switch(contador)
                                {     case 0:  Lcd_Chr(2, 1, kpm);
                                              usuario[0] = kpm;
                                              break;
                                      case 1:  Lcd_Chr(2, 2, kpm);
                                               usuario[1] = kpm;
                                               break;
                                      case 2:  Lcd_Chr(2, 3, kpm);
                                               usuario[2] = kpm;
                                               break;
                                      case 3:  Lcd_Chr(2, 4, kpm);
                                               usuario[3] = kpm;
                                               break;
                                }
                                contador++;
                       
//
                           }
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
                        if(kpm == 48 || kpm == 49 || kpm == 50 || kpm == 51 || kpm == 52 || kpm == 53 || kpm == 54 || kpm == 55 || kpm == 56 || kpm == 57)
                          {
                                    switch(contador)
                                    {    case 0:  Lcd_Chr(2, 1, kpm);
                                                  u[0] = kpm;
                                                  break;
                                         case 1:  Lcd_Chr(2, 2, kpm);
                                                  u[1] = kpm;
                                                  break;
                                         case 2:  Lcd_Chr(2, 3, kpm);
                                                  u[2] = kpm;
                                                  break;
                                                  case 3:  Lcd_Chr(2, 4, kpm);
                                                  u[3] = kpm;
                                                  break;
                                    }
                                    contador++;
                          }
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
               if(estado == 0)
                        Lcd_Out(1, 1, "SIS SIN ARMAR");
               if(estado == 1)
                        Lcd_Out(1, 1, "SIS ARMARDO");

               Lcd_out(2,1,"CONTRA: ");

              }
              else {
               i = 0;
               Lcd_Cmd(_LCD_CLEAR);
               Lcd_out(1,1," SIS ARM");
               Lcd_out(2,1, "NO SE PUEDE MOD!");
               Delay_ms(3000);
               Lcd_Cmd(_LCD_CLEAR);
               if(estado == 0)
                     Lcd_Out(1, 1, "SIS SIN ARMAR");
               if(estado == 1)
                      Lcd_Out(1, 1, "SIS ARMARDO");
               Lcd_out(2,1,"CONTRA: ");

              }


          }
    }



      
}