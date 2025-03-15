unsigned int aux = 0;
unsigned int contadora = 1, contadord = 256;
void main()
{
     TRISA = 0b00001;
     trisb = 0;
     portb = 0;

     while(1)
     {      if(porta.f0 == 1 && aux == 0)
            {
               delay_ms(40);
               while(porta.f0 == 1);
               aux = 1;
               contadora = 1;
               contadord = 256;
               portb = contadora;
            }
            if(porta.f0 == 1 && aux == 1)
            {
                        delay_ms(40);
                        while(porta.f0 == 1);
                        aux = 0;
            }
            if(aux == 1)
            {
                    if (contadora >= 1 && contadora <256)
                    {
                       portb = contadora;
                       contadora = contadora*2;
                       delay_ms(100);
                       if(contadora == 256)
                           contadord = 256;
                    }
                    else {
                         contadord = contadord/2;
                         portb = contadord;
                         delay_ms(100);
                         if(contadord == 1)
                            contadora = 1;
                    }            
            }
     }
}