
PImage bg;
int y;
int x;

void setup() {
  size(710, 397);
  bg = loadImage("Capture.jpg");
}

void draw() {
  background(bg);
  
  stroke(226, 204, 0);
  strokeWeight(3);
  line(0, y, width, y);
  line(x,0,x,height);
  x--;
  y++;
  if (y > height) {
    y = 0; 
  }
  if(x<width){
    x=width;
  }
}