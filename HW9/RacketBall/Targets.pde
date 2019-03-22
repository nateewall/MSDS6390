class Target extends GameObject
{  
  public Target()
  {
    super();
  }
  
  public void createObject()
  {
    ellipseMode(CENTER);
    ellipse(0,0, 50, 50);
  }
  
}
