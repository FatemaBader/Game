class Clock
{
  float cposx;
  float cposy;
  int count;
  
  Clock(float x,float y)
  {
    this.cposx=x;
    this.cposy=y;
    this.count = 0;
  }
  
  void time()
  {
    //textSize(20);
    //fill(#144E7E);
    //text("0",cposx,cposy);
    //    textSize(20);
    //fill(#144E7E);
    //text("0",cposx+12,cposy);
    
    //    textSize(20);
    //fill(#144E7E);
    //text("0",cposx+24,cposy);
    
    //    textSize(20);
    //fill(#144E7E);
    //text("0",cposx+36,cposy);
    
    //    textSize(20);
    //fill(#144E7E);
    //text("0",cposx+48,cposy);
    
    textSize(30);
    fill(255);
    text(count, cposx, cposy);
    
    count++;
   if (frameCount % 60 == 0)
   {
      //for(int i=0;i<9;i++)
      //{
      //    textSize(20);
      //  fill(#144E7E);
      //  text(i,cposx+60,cposy);
      //  if (i==9)
      //  {
      //    i=0;
      //  }
      //}
    }

    
  }
  
}