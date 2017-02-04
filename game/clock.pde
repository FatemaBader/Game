class Clock
{
  float cposx;
  float cposy;
  int clockcount;
  
  Clock(float x,float y)
  {
    this.cposx=x;
    this.cposy=y;
    this.clockcount = 0;
  }
  
  void time()
  {
    
    
    textSize(30);
    fill(255);
    text(clockcount, cposx, cposy);
    if(stop==false)
    {
      clockcount++;
    }
   if (stop ==true)
   {
     fscore=clockcount;
   }
    
  }
  
}