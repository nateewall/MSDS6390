class ViewBeers extends PApplet
{
  private Controller control;
  private ArrayList<Beers> beers;

  public ViewBeers(Controller _control)
  {
    control = _control;
    beers = new ArrayList<Beers>();
  }

  public void settings()
  {
    this.size(700, 400);
  }
  
  public void draw()
  {
    this.background(89, 147, 242);
    
    
    if(!beers.isEmpty())
    {
      for(Beers b: beers)
      {
        try{
          float abv = b.getAbv();
          String beerName = b.getBeerName();
          println(beerName + " : " + abv);
        }
        catch(Exception e)
        {
          
        }
      }
    }
  }
  
  public void updateBeers(ArrayList<Beers> _beers)
  {
    beers = _beers;
  }
  
}
