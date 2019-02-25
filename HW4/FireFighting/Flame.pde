void flames(int x, int y, int size){
  strokeWeight(5);
  stroke(71,65,26);
  fill(255,0,0) ; 
  beginShape();
  vertex(x-size, y+size);
  vertex(x + (size * 0.05), y - (size * 0.6));
  vertex(x + (size * 0.2) , y - (size * 0.4));
  vertex(x + (size * 0.5) , y - (size * 0.2));
  vertex(x + (size * 0.7) , y - (size * 0.4));
  vertex(x + (size * 0.85), y - (size * 0.2));
  vertex(x + size, y + size);
  endShape();
}
