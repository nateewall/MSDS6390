public void drawGreen()
{  
  fill(0,255,0);
  pushMatrix();
    evenAngle += evenSpeed;
    rotate(-evenAngle);
    backSpin();
  popMatrix();
}
