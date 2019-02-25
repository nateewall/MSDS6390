void setup()
{
  size(500,500);
}
void draw()
{
  /*first create the point*/
  strokeWeight(10);
  stroke(255, 0, 0);
  point(250, 250);
  
  /*then create my line*/
  stroke(0, 0, 0);
  line(100, 100, 250, 400);
  
  /*now I want a blue rect*/
  stroke(0, 0, 255);
  strokeWeight(1);
  fill(0, 0, 255);
  rectMode(CENTER);
  rect(250, 255, 100, 145);
 
 /*create a transparent ellipse that overlaps the rectangle*/
  stroke(0, 0, 0);
  strokeWeight(5);
  noFill();
  ellipseMode(CORNER);
  ellipse(250, 255, 100, 145);
}
