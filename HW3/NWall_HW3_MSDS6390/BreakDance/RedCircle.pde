public void drawRed()
{  
  fill(255,0,0);
  pushMatrix();
    oddAngle += oddSpeed;
    rotate(oddAngle);
    backSpin();
  popMatrix();
}
