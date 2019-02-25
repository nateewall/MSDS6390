PImage myBackground;

float oddSpeed = 0.01;
float oddAngle = PI;

float evenSpeed = 0.01;
float evenAngle = PI;

void settings()
{
  myBackground = loadImage("breakdanceBackground.jpg");
  int myWidth = myBackground.width;
  int myHeight = myBackground.height;
  size(myWidth, myHeight);
}

void draw()
{
  background(myBackground);
  stroke(0);
  //blue circle
  pushMatrix();
    translate(200, 200);
    drawBlue();
  popMatrix();
  
  //yellow circle
  pushMatrix();
    translate(300,400);
    drawYellow();
  popMatrix();
  
  //black circle
  pushMatrix();
    translate(400,200);
    drawBlack();
  popMatrix();
  
  //green circle
  pushMatrix();
    translate(500,400);
    drawGreen();
  popMatrix();
  
  //red circle
  pushMatrix();
    translate(600,200);
    drawRed();
  popMatrix();
}
