import shiffman.box2d.*;
import org.jbox2d.common.*;
import org.jbox2d.dynamics.joints.*;
import org.jbox2d.collision.shapes.*;
import org.jbox2d.collision.shapes.Shape;
import org.jbox2d.common.*;
import org.jbox2d.dynamics.*;
import org.jbox2d.dynamics.contacts.*;

float changecount=0;
boolean stop=false;
int fscore;

PImage img;
PFont font1;
// A reference to our box2d world
Box2DProcessing box2d;

int count=1;
boolean barchange1=false;
boolean barchange2=false;
boolean barchange3=false;
boolean barchange4=false;
boolean barchange5=false;
boolean barchange6=false;
Clock clock;
Health health;
Image image;
User user;
Lazor lazor;
Score score;
ArrayList<Lazor> lazors;

float userx=50, usery=300;

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
  user=new User(userx,usery); //userx=50 usery=300
  score=new Score(260,height);
  lazor=new Lazor(900,40,5); 
  
    // Create the empty list
  lazors = new ArrayList<Lazor>();
  
  img = loadImage("Gameover.JPG");
}

void draw() {
  textFont(font1, 30);
  fill(255);
  // We must always step through time!
  box2d.step();
  
  image.display();
  image.move();
  
  user.display();
  user.update();
  
  
  if (frameCount % 20 == 0)
 {
   
   lazors.add(new Lazor(random(1400,5000),random(10,400), 5 ));
 }
  
  // Look at all particles
  for (int i = lazors.size()-1; i >= 0; i--) 
  {
    Lazor p = lazors.get(i);
    p.display();
    p.shoot();
    
    if (p.pos.x+70 < 0)
    {
      p.killBody();
      lazors.remove(p);
    }
  }
     
  
  if( barchange1 == false )
  {
    health.display();
  }
  else
  {
    health.update();
  }
  
  if (barchange2==true)
  {
    health.update2();
  }
  if (barchange3==true)
  {
    health.update3();
  }
  if (barchange4==true)
  {
    health.update4();
  }
  if (barchange5==true)
  {
    health.update5();
  }
  if (barchange6==true)
  {
    health.update6();
  }
  clock.time();
  //health.bar();
  if (count ==7)
  {
    background(0);
    image(img, 230, 20);
    stop=true;
    
    score.goUp();
    //textSize(60);
    //text("YOUR SCORE: ", 260,320);
    //text("THANKS FOR PLAYING",260,390);
    //text(fscore, 550,320);
  }
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
    //p2.delete();
    lazors.remove(p2);
    //p2.change();
    p2.killBody();
    p2.change();
    if (count==6)
    {
      barchange6=true;
      health.update6();
      count++;
    }
    if (count==5)
    {
      barchange5=true;
      health.update5();
      count++;
    }
    if (count==4)
    {
      barchange4=true;
      health.update4();
      count++;
    }
    if (count==3)
    {
      barchange3=true;
      health.update3();
      count++;
    }
        if (count==2)
    {
      barchange2=true;
      health.update2();
      count++;
    }
        if (count==1)
    {
      barchange1=true;
      health.update();
      count++;
    }
  }
  else if (o1.getClass() == Lazor.class && o2.getClass() == User.class) 
  {
    Lazor p2 = (Lazor) o1;
    //p2.delete();
    lazors.remove(p2);
    //p2.change();
    p2.killBody();
    p2.change();
    if (count==6)
    {
      barchange6=true;
      health.update6();
      count++;
    }
    if (count==5)
    {
      barchange5=true;
      health.update5();
      count++;
    }
    if (count==4)
    {
      barchange4=true;
      health.update4();
      count++;
    }
    if (count==3)
    {
      barchange3=true;
      health.update3();
      count++;
    }
    if (count==2)
    {
      barchange2=true;
      health.update2();
      count++;
    }
    if (count==1)
    {
      barchange1=true;
      health.update();
      count++;
    }
  }
  if (o1.getClass() == User.class) {
    Lazor p = (Lazor) o2;
   changecount=0;
    p.change();
  }
  if (o2.getClass() == User.class) {
    Lazor p = (Lazor) o1;
     changecount=0;
    p.change();
  }
  
}

  
// Objects stop touching each other
void endContact(Contact cp) {
}