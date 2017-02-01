class User
{
  Body b;
  
  Vec2 pos;
  
  PImage craft;
  float x,y;
  float imgw;
  float imgh;
  
 User(float x,float y)
 {
   craft = loadImage("user.gif");
   this.x = x;
   this.y = y;
   this.imgw = craft.width;
   this.imgh = craft.height;
    
    // Define the polygon
    PolygonShape sd = new PolygonShape();
    // Figure out the box2d coordinates
    float box2dW = box2d.scalarPixelsToWorld(imgw/2);
    float box2dH = box2d.scalarPixelsToWorld(imgh/2);
    // We're just a box
    sd.setAsBox(box2dW, box2dH);
    
    // Create the body
    BodyDef bd = new BodyDef();
    bd.type = BodyType.DYNAMIC;
    bd.position.set(box2d.coordPixelsToWorld(x,y));
    b = box2d.createBody(bd);
    
    // Attached the shape to the body using a Fixture
    b.createFixture(sd,1);
    
    b.setUserData(this);
 }
 
 void display()
 {
   pos = box2d.getBodyPixelCoord(b);
   pushMatrix();
   translate(pos.x, pos.y);
   //rect(0,0, imgw, imgh);
   image(craft,0,0);
   popMatrix();
 }
 
 void update()
 {
   if (keyPressed)
   {
     if (keyCode == UP)
     {
       b.setLinearVelocity(new Vec2(0, 10));
     }
     else if (keyCode == DOWN)
     {
       b.setLinearVelocity(new Vec2(0, -10));
     }
   }
   else
   {
     b.setLinearVelocity(new Vec2(0, 0));
   }

 }
}