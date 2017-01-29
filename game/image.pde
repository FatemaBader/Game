class Image
{
  PImage bg,bg2;
  float imgx;
  float imgy;
  float imgx2=878;
  float imgy2=0;
  
 Image(float x,float y) //0,0
 {
   this.imgx=x;
   this.imgy=y;
    bg = loadImage("Capturee.JPG");
    bg2= loadImage("Capturee2.JPG");
 }
 
 void display()
 {
   image(bg,imgx,imgy);
    image(bg2,imgx2,imgy2);
 }
 void move()
 {
  imgx--;
  imgx2--;
    if (imgx == -877 )
    {
      imgx=878;
      imgx--;
    }
    if( imgx2 == -877)
    {
      imgx2=878;
      imgx2--;
    }
  }
}