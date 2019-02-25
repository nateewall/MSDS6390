void house(){
  strokeWeight(5);
  stroke(0);
  fill(80,45,25);
  //house
  rect(600, 400, 200, 200);
  // roof
  triangle(600, 400, 700, 300, 800, 400);
  // door
  fill(180,10,10);
  rect(685, 550, 30, 50);
  //// left windows
  fill(0);
  rect(635, 450, 30, 30);
  //// right windows
  rect(735, 450, 30, 30);
}
