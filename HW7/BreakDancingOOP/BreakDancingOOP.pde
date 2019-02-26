BreakdanceMario mario1, mario2;
ToadsWatching toads; 
ToaderLoad toaderload;

float mario1PosX;
float mario1PosY;
float mario1Width;
float mario1Height;
float mario2PosX;
float mario2PosY;
float mario2Width;
float mario2Height;

float toadSet;
boolean goCrazy = false;
boolean over1 = false;
boolean over2 = false;

void settings() {
  size(800, 400);
  mario1PosX = 600;
  mario1PosY = 200;
  mario2PosX = 200;
  mario2PosY = 200;
  toadSet = 50;
}

void setup() {
  //size(640, 360);
  background(2, 171, 11);
  frameRate(10);
  mario1 = new BreakdanceMario("Mario", 8);
  mario2 = new BreakdanceMario("Mario", 8);
  toads = new ToadsWatching();
  toaderload = new ToaderLoad("ToadOverload", 21);
}

void draw() {
 if (mouseX > mario1PosX-mario1.getWidth()/2 && mouseX < mario1PosX+mario1.getWidth()/2 && mouseY > mario1PosY-mario1.getHeight()/2 && mouseY < mario1PosY+mario1.getHeight()/2) 
 {
  mario1Height = mario1PosY-mario1.getHeight()/2;
  mario1.display(mario1PosX-mario1.getWidth()/2, mario1PosY-mario1.getHeight()/2);
  toads.display(mario1PosX - toads.getWidth()/2, mario1PosY - mario1Height - toadSet);
  over1 = true;
  if(goCrazy) 
  {
    toaderload.display(mario2PosX-toaderload.getWidth()/2, mario2PosY-toaderload.getHeight()/2);
  }
 }
 else
 {
 background(2, 171, 11);
 mario1.getFirstImage(mario1PosX-mario1.getWidth()/2, mario1PosY-mario1.getHeight()/2);
 over1 = false;
 }
 
 if (mouseX > mario2PosX-mario2.getWidth()/2 && mouseX < mario2PosX+mario2.getWidth()/2 && mouseY > mario2PosY-mario2.getHeight()/2 && mouseY < mario2PosY+mario2.getHeight()/2) 
 {
  mario2Height = mario2PosY-mario2.getHeight()/2;
  mario2.display(mario2PosX-mario2.getWidth()/2, mario2PosY-mario2.getHeight()/2);
  toads.display(mario2PosX - toads.getWidth()/2, mario2PosY - mario2Height - toadSet);
  over2 = true;
  if(goCrazy) 
  {
    toaderload.display(mario1PosX-toaderload.getWidth()/2, mario1PosY-toaderload.getHeight()/2);
  }
 }
 else
 {
   //background(2, 171, 11);
   //mario1.getFirstImage(mario1PosX-mario1.getWidth()/2, mario1PosY-mario1.getHeight()/2);
   mario2.getFirstImage(mario2PosX-mario2.getWidth()/2, mario2PosY-mario2.getHeight()/2);
   over2 = false;
 }
}

void mousePressed() {
  if(over1){
    goCrazy = true; 
  }
  if(over2){
    goCrazy = true;
  }
}

void mouseReleased() {
  goCrazy = false;
}
