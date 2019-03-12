class ViewBrewery extends PApplet
{
  private Controller control;
  private ArrayList<Beers> beers;
  private String brewNames;
  
  public ViewBrewery(Controller _control)
  {
    control = _control;
    beers = new ArrayList<Beers>();
  }
  
  public void settings()
  {
    this.size(700, 400);
    randomSeed(0);
  }

  public void draw()
  {
    this.background(89, 147, 242);
    wordCloud();
  }
  
  public void updateBeers(ArrayList<Beers> _beers)
  {
    beers = _beers;
  }
  
  private void wordCloud(){
    brewNames = null;
    if(!beers.isEmpty())
    {
      for(Beers b: beers)
      {
        String beerName = b.getBeerName();
        brewNames = brewNames + " " + beerName;
      }
      
    // Pass in the words to draw.
    WordCram wordcram = new WordCram(this).fromTextString(brewNames);
    // Now we've created our WordCram, we can draw it:
    wordcram.drawAll();
    }
  }

  void mousePressed() {
    noLoop();
  }
  
  void mouseReleased() {
    loop();
  }
}
