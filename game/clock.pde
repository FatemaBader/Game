class Clock
{
  float cposx;
  float cposy;
  int clockcount;
 PImage control;
 PImage control2;
 
  
  Clock(float x,float y)
  {
    this.cposx=x;
    this.cposy=y;
    this.clockcount = 0;
  control = loadImage("controls.png");
  control2 = loadImage("controls2.png");
  }
  
  void time()
  {
    //show image
    
    textSize(35);
    fill(#F02727);
    stroke(0);
    text(clockcount, cposx, cposy);
    if(stop==false)
    {
      clockcount++;
    }
   if (stop ==true)
   {
     fscore=clockcount;
   }
     //if clockcount reaches 200 stop showing image
    if (clockcount<200)
    {
      image(control, 110, 90);
      image(control2, 430, 95);
    }
  }
  
}