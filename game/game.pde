
Image image;
User user;
Lazor lazor;
Lazor[] lazors= new Lazor[100];

void setup() {
  size(878, 482);
  image= new Image(0,0);
  user=new User(50,300);
  lazor=new Lazor(900,40);
 for (int i=0;i<100;i++)
 {
   lazors[i]=new Lazor(random(900,9000),random(10,400) );
 }
}

void draw() {
  //background(bg);
  
  image.display();
  image.move();
  
  user.display();
  user.keyPressed();
  
  lazor.display();
  lazor.shoot();
  for (int i=0;i<100;i++)
  {
    lazors[i].display();
    lazors[i].shoot();
  }
}