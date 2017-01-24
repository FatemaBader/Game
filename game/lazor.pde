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
   stroke(#14D836);
   strokeWeight(2);
   
   rect(x, y, 70, 5, 7);
   
 }
 void shoot()
 {
   x--;
 }
}