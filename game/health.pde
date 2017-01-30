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
    
  }

  
}