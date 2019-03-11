class ViewBeers extends PApplet
{
  private Controller control;
  public ViewBeers(Controller _control)
  {
    control = _control;
  }

  public void settings()
  {
    this.size(400,200);
    
  }
  
  public void draw()
  {
    this.background(255,0,0);
  }
  
}
