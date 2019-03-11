class ViewBrewery extends PApplet
{
  private Controller control;
  
  public ViewBrewery(Controller _control)
  {
    control = _control;
  }
  
  public void settings()
  {
    this.size(400,200);
    
  }
  
  public void draw()
  {
    this.background(0,255,0);
  }

}
