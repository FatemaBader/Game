class User
{
  PImage craft;
  float imgx;
  float imgy;
  
 User(float x,float y)
 {
   this.imgx=x;
   this.imgy=y;
    craft = loadImage("user.gif");
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
       if (imgy<0)
       {
         imgy=0;
       }
     }
     if (keyCode == DOWN)
     {
       imgy++;
       if (imgy>435)
       {
         imgy=434;
       }
     }
     if (keyCode == LEFT)
     {
       imgx--;
       if (imgx<0)
       {
         imgx=0;
       }
     }
     if (keyCode == RIGHT)
     {
       imgx++;
       if (imgx==785)
       {
         imgx=784;
       }
     }
    }
}