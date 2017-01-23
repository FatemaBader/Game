class User
{
  PImage craft;
  float imgx;
  float imgy;
  
 User(float x,float y)
 {
   this.imgx=x;
   this.imgy=y;
    craft = loadImage("user.JPG");
 }
 
 void display()
 {
   image(craft,imgx,imgy);
 }
 void keyPressed()
   {
     if (keyCode == UP)
     {
       imgy--;
     }
          if (keyCode == DOWN)
     {
       imgy++;
     }
          if (keyCode == LEFT)
     {
       imgx--;
     }
          if (keyCode == RIGHT)
     {
       imgx++;
     }
    }
}