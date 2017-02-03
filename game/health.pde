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
    
    fill(#0BD824);
    rect(hposx+2,hposy+2,145,15);
    fill(255);
  }
  
  void update()
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
    
    //inner grey bar that doesnt change
    fill(#AAAFB9);
    stroke(0);
    strokeWeight(1);
    rect(hposx+2,hposy+2,145,15);
    //bar
        fill(#2B9822); //dark green
        rect(hposx+2,hposy+2,130,15);
        fill(255);
    
  }
void update2()
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
    
    //inner grey bar that doesnt change
    fill(#AAAFB9);
    stroke(0);
    strokeWeight(1);
    rect(hposx+2,hposy+2,145,15);
    //bar
        fill(#757C1F); //cacky green
        rect(hposx+2,hposy+2,115,15);
        fill(255);
  }
  void update3()
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
    
    //inner grey bar that doesnt change
    fill(#AAAFB9);
    stroke(0);
    strokeWeight(1);
    rect(hposx+2,hposy+2,145,15);
    //bar
        fill(#BF5C0F); // orange/brown
        rect(hposx+2,hposy+2,90,15);
        fill(255);
  }
  void update4()
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
    
    //inner grey bar that doesnt change
    fill(#AAAFB9);
    stroke(0);
    strokeWeight(1);
    rect(hposx+2,hposy+2,145,15);
    //bar
        fill(#CB1020); // Bright red
        rect(hposx+2,hposy+2,65,15);
        fill(255);
  }
  void update5()
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
    
    //inner grey bar that doesnt change
    fill(#AAAFB9);
    stroke(0);
    strokeWeight(1);
    rect(hposx+2,hposy+2,145,15);
    //bar
        fill(#DE1627); // Darker red
        rect(hposx+2,hposy+2,30,15);
        fill(255);
  }
  void update6()
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
    
    //bar
        fill(#DE1627); // Darker red
        rect(hposx+2,hposy+2,10,15);
        fill(255);
  }
  

  
}