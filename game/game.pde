
PImage bg;
float x=0;
float y=0;
void setup() {
  size(710, 397);
  bg = loadImage("Capture.jpg");
}

void draw() {
  //background(bg);
  image(bg,x,y);
  x--;
  if (x< -710)
  {
    x=710;
  }
}