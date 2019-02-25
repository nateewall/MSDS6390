void setup()
{
  size(800,500);
  background(220);
}
void draw()
{
  /*first create the point*/
  strokeWeight(35);
  stroke(34, 139, 34);
  point(130, 265);
  
  /*then we create the yellow polygon*/
  stroke(175, 170, 0);
  strokeWeight(1);
  fill(175, 170, 0);
  beginShape();
  vertex(355,0);
  vertex(535,0);
  vertex(490,250);
  vertex(362,246);
  endShape();
  
  /*then we create the blue bar polygon*/
  stroke(0, 0, 160);
  strokeWeight(1);
  fill(0, 0, 160);
  beginShape();
  vertex(140,175);
  vertex(640,220);
  vertex(640,240);
  vertex(140,195);
  endShape();
  
  /*create the cats head*/
  stroke(0, 0, 0);
  strokeWeight(1);
  fill(0, 0, 0);
  beginShape();
  vertex(185,80);
  vertex(225,120);
  vertex(280,120);
  vertex(320,80);
  vertex(323,255);
  vertex(183,250);
  endShape();
  
  /*below we make the cats body*/
  /*leg 1*/
  stroke(0, 0, 0);
  strokeWeight(1);
  fill(0, 0, 0);
  beginShape();
  vertex(180,325);
  vertex(260,340);
  vertex(261,355);
  vertex(180,340);
  endShape();
  
  /*leg 2*/
  stroke(0, 0, 0);
  strokeWeight(1);
  fill(0, 0, 0);
  beginShape();
  vertex(195,395);
  vertex(260,385);
  vertex(261,400);
  vertex(195,410);
  endShape();
  
  /*torso*/
  stroke(0, 0, 0);
  strokeWeight(1);
  fill(0, 0, 0);
  beginShape();
  vertex(265,340);
  vertex(375,300);
  vertex(400,360);
  vertex(290,400);
  endShape();
  
  /*tail 1*/
  stroke(0, 0, 0);
  strokeWeight(1);
  fill(0, 0, 0);
  beginShape();
  vertex(385,300);
  vertex(485,170);
  vertex(500,175);
  vertex(390,315);
  endShape();
  
  /*tail 2*/
  stroke(0, 0, 0);
  strokeWeight(1);
  fill(0, 0, 0);
  beginShape();
  vertex(490,165);
  vertex(535,75);
  vertex(555,82);
  vertex(515,170);
  endShape();
  
  /*leg 3 */
  stroke(0, 0, 0);
  strokeWeight(1);
  fill(0, 0, 0);
  beginShape();
  vertex(405,320);
  vertex(450,310);
  vertex(451,325);
  vertex(408,335);
  endShape();
  
  /*leg 4*/
  stroke(0, 0, 0);
  strokeWeight(1);
  fill(0, 0, 0);
  beginShape();
  vertex(405,355);
  vertex(485,370);
  vertex(486,385);
  vertex(405,370);
  endShape();
  
  /*red squares 1*/
  stroke(180, 0, 0);
  strokeWeight(1);
  fill(180, 0, 0);
  beginShape();
  vertex(360,390);
  vertex(440,385);
  vertex(441,420);
  vertex(361,425);
  endShape();
  
  /*red squares 2*/
  stroke(180, 0, 0);
  strokeWeight(1);
  fill(180, 0, 0);
  beginShape();
  vertex(425,435);
  vertex(550,440);
  vertex(551,450);
  vertex(425,445);
  endShape();
}
