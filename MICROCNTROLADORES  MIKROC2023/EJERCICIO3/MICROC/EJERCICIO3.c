void main() 
{ trisa = 0b00001;
  trisb = 0;
  portb = 0;
  
  while(1)
  {    if(porta.f0 == 1)
       {
         portb.f0 = 1;
         delay_ms(40);
       }
       else
       {
           portb.f0 = 0;
           delay_ms(40);
         }
   }
}