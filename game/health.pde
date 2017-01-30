class Health
{
  float hposx;
  float hposy;
  
  Health(float x,float y)
  {
    this.hposx=x;
    this.hposy=y;
  }
  
  
  void display()
  {
    stroke(#AAAFB9);
    fill(#AAAFB9);
    rect(hposx,hposy,150,20);
    
    stroke(0);
    strokeWeight(1);
    rect(hposx+2,hposy+5,145,15);
    
    stroke(0);
    strokeWeight(1);
    rect(hposx,hposy,150,20);
    
  }
  
  void bar()
  {
    fill(#0BD824);
    rect(hposx+2,hposy+2,145,15);
    
  }

  
}