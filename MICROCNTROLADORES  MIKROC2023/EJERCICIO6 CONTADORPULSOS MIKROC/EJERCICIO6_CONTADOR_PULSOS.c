unsigned int k =1;
unsigned int aux = 0;

void main() 
{
     TRISA = 0B00001;
     TRISB = 0;
     PORTB = 0;
     
     while(1)
     {
             if(PORTA.F0 == 1 && aux == 1)
             {
                 aux = 1;
                 while(PORTA.F0 == 1);
                 if()
                }
      }
}