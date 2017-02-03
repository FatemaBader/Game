
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
//Lazor[] lazors= new Lazor[300];
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
  lazor=new Lazor(900,40,5); 
  
    // Create the empty list
  lazors = new ArrayList<Lazor>();
  
 /*for (int i=0;i<lazors.size();i++)
 {
   lazors.add(new Lazor(random(900,30000),random(10,400), 5 ));
   //lazors[i]=new Lazor(random(900,30000),random(10,400), 5 );
   //lazors = new ArrayList<Lazor>();
 }*/
}

void draw() {
  //background(bg);
  textFont(font1, 30);
  fill(255);
  // We must always step through time!
  box2d.step();
  
  //if( lazors[i].display() == user.display() )
  
  image.display();
  image.move();
  
  user.display();
  user.update();
  //user.keyPressed();
  
  //lazor.display();
  //lazor.shoot();
  
  if (frameCount % 60 == 0)
 {
   lazors.add(new Lazor(random(900,width+100),random(10,400), 5 ));
   //lazors[i]=new Lazor(random(900,30000),random(10,400), 5 );
   //lazors = new ArrayList<Lazor>();
 }
    /*for (int i=0;i<300;i++)
  {
    lazors[i].display();
    lazors[i].shoot();
    if (lazors[i].done()) {
      lazors[i].killBody();
    }
  }*/
  //if (random(1) > .5) 
  /*for (int i=0; i<lazors.size(); i++){
    lazors.add(new Lazor(random(900,30000),random(10,400), 5 ));
  }*/
  
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
     
  clock.time();
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
  
  //health.bar();
  if (count ==7)
  {
    background(0);
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
    p2.killBody();
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
    p2.killBody();
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

  //if (o1.getClass() == User.class) {
    
    
    //p.change();
  //}
  
}

  
// Objects stop touching each other
void endContact(Contact cp) {
}