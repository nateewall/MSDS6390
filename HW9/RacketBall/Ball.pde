class Ball extends GameObject
{
  public Ball()
  {
    super();
  }
  
  public void createObject()
  {
    ellipseMode(CENTER);
    ellipse(0,0, 20, 20);
  }
 
  
}
