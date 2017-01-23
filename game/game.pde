
Image image;
User user;

void setup() {
  size(878, 482);
  image= new Image(0,0);
  user=new User(50,300);
}

void draw() {
  //background(bg);
  
  image.display();
  image.move();
  
  user.display();
  user.keyPressed();
}