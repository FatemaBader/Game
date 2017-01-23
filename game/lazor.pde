class Lazor
{
  float x;
  float y;
  
 Lazor(float x1,float y1) //900 and 40
 {
   this.x=x1;
   this.y=y1;
 }
 
 void display()
 {
   fill(0);
   ellipse(x,y,30,30);
 }
 void shoot()
 {
   x--;
 }
}