unsigned int aux = 0;
void main() 
{
     TRISA = 0b00001;
     trisb = 0;
     portb = 0;

     while(1)
     {      if(porta.f0 == 1 && aux == 0)
            {
               portb.f0 = 1;
               delay_ms(40);
               while(porta.f0 == 1);
               aux = 1;
            }
            if(porta.f0 == 1 && aux == 1)
            {
                        portb.f0 = 0;
                        delay_ms(40);
                        while(porta.f0 == 1);
                        aux = 0;
            }

    }
}