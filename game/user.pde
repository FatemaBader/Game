class User
{
  Body b;
  
  PImage craft;
  float imgx;
  float imgy;
  
 User(float x,float y)
 {
   this.imgx=x;
   this.imgy=y;
    craft = loadImage("user.gif");
    
    // Define the polygon
    PolygonShape sd = new PolygonShape();
    // Figure out the box2d coordinates
    float box2dW = box2d.scalarPixelsToWorld(x);
    float box2dH = box2d.scalarPixelsToWorld(y);
    // We're just a box
    sd.setAsBox(box2dW, box2dH);
    
    // Create the body
    BodyDef bd = new BodyDef();
    bd.type = BodyType.STATIC;
    bd.position.set(box2d.coordPixelsToWorld(x,y));
    b = box2d.createBody(bd);
    
    // Attached the shape to the body using a Fixture
    b.createFixture(sd,1);
    
    b.setUserData(this);
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