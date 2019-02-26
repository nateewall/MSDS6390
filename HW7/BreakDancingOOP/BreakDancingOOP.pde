BreakdanceMario mario1;

float mario1PosX;
float mario1PosY;
float mario1Width;
float mario1Height;

void settings() {
  size(800, 400);
  mario1PosX = 600;
  mario1PosY = 200;
}

void setup() {
  //size(640, 360);
  background(255, 204, 0);
  frameRate(10);
  mario1 = new BreakdanceMario("Mario", 8);
}

void draw() {
 if (mouseX > mario1PosX-mario1.getWidth()/2 && mouseX < mario1PosX+mario1.getWidth()/2 && mouseY > mario1PosY-mario1.getHeight()/2 && mouseY < mario1PosY+mario1.getHeight()/2) 
 {
  mario1.display(mario1PosX-mario1.getWidth()/2, mario1PosY-mario1.getHeight()/2);
 }
 else
 {
 mario1.getFirstImage(mario1PosX-mario1.getWidth()/2, mario1PosY-mario1.getHeight()/2);
 }
}
