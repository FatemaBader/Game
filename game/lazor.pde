class Lazor
{
  // We need to keep track of a Body
  Body body;

  Vec2 pos;
  //PImage ex1,ex2,ex3;
  float x;
  float speed;
  float y;

  boolean delete = false;

  Lazor(float x1, float y1, float speed) //900 and 40
  {
    this.x=x1;
    this.y=y1;
    this.speed=speed;

    //ex1 = loadImage("explode1.JPG");
    //ex2= loadImage("exlode2.JPG");
    //ex3= loadImage("explod3.JPG");
    // This function puts the particle in the Box2d world
    makeBody(x1, y1);
    body.setUserData(this);
  }

  void display()
  {
    // We look at each body and get its screen position
    pos = box2d.getBodyPixelCoord(body);
    pushMatrix();
    translate(pos.x, pos.y);
    stroke(#14D836);
    strokeWeight(2);

    rect( 0, 0, 70, 5, 7);
    popMatrix();
  }
  void shoot()
  {
    body.setLinearVelocity(new Vec2(-50, 0));
  }

  // This function removes the particle from the box2d world
  void killBody() 
  {
    box2d.step();
    box2d.destroyBody(body);
  }
  
  /*void delete() 
  {
    delete = true;
  }*/

  // Change color when hit
  void change() {
    //exploding images here
    //image(ex1,x,y);
    //image(ex2,x,y);
    //image(ex3,x,y);
  }

  // Is the bullet ready for deletion?
  boolean done() {
    // Let's find the screen position of the lazor

    if ( delete) {
      killBody();
      return true;
    }
    return false;
  }
  // Here's our function that adds the bullet to the Box2D world
  void makeBody(float x, float y) {
    // Define a body
    BodyDef bd = new BodyDef();
    // Set its position
    bd.position = box2d.coordPixelsToWorld(x, y);
    bd.type = BodyType.DYNAMIC;
    body = box2d.createBody(bd);

    // Make the body's shape a circle
    PolygonShape ps = new PolygonShape();
    float w = box2d.scalarPixelsToWorld(70);
    float h = box2d.scalarPixelsToWorld(5);
    ps.setAsBox(w, h);

    FixtureDef fd = new FixtureDef();
    fd.shape = ps;
    // Parameters that affect physics
    fd.shape = ps;
    fd.density = 1;
    fd.friction = 0.3;
    fd.restitution = 0.5;

    // Attach fixture to body
    body.createFixture(fd);
    

    //body.setAngularVelocity(random(-10, 10));
  }
}