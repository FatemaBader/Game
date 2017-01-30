import shiffman.box2d.*;
import org.jbox2d.common.*;
import org.jbox2d.dynamics.joints.*;
import org.jbox2d.collision.shapes.*;
import org.jbox2d.collision.shapes.Shape;
import org.jbox2d.common.*;
import org.jbox2d.dynamics.*;
import org.jbox2d.dynamics.contacts.*;

PFont font1;
// A reference to our box2d world
Box2DProcessing box2d;

Clock clock;
Health health;
Image image;
User user;
Lazor lazor;
Lazor[] lazors= new Lazor[300];

void setup() {
  size(878, 482);
  font1= loadFont("AgencyFB-Bold-48.vlw");
  // Initialize box2d physics and create the world
  box2d = new Box2DProcessing(this);
  box2d.createWorld();

  // Turn on collision listening!
  box2d.listenForCollisions();
  
  clock=new Clock(15,30);
  health=new Health(720,10);
  image= new Image(0,0);  //so it starts at 0,0 pixels
  user=new User(50,300);
  lazor=new Lazor(900,40,5);
 for (int i=0;i<300;i++)
 {
   lazors[i]=new Lazor(random(900,30000),random(10,400), 5 );
 }
}

void draw() {
  //background(bg);
  textFont(font1, 30);
  fill(255);
  // We must always step through time!
  box2d.step();
  
  
  image.display();
  image.move();
  
  user.display();
  user.keyPressed();
  
  lazor.display();
  lazor.shoot();
  for (int i=0;i<300;i++)
  {
    lazors[i].display();
    lazors[i].shoot();
  }
  clock.time();
  health.display();
  health.bar();
}

// Collision event functions!
void beginContact(Contact cp)
{
  // Get both shapes
  Fixture f1 = cp.getFixtureA();
  Fixture f2 = cp.getFixtureB();
  // Get both bodies
  Body b1 = f1.getBody();
  Body b2 = f2.getBody();

  // Get our objects that reference these bodies
  Object o1 = b1.getUserData();
  Object o2 = b2.getUserData();

  if (o1.getClass() == User.class && o2.getClass() == Lazor.class) {
    Lazor p2 = (Lazor) o2;
    p2.delete();
  }

  if (o1.getClass() == Lazor.class) {
    Lazor p = (Lazor) o2;
    p.change();
  }
}

// Objects stop touching each other
void endContact(Contact cp) {
}