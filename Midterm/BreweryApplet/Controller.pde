class Controller
{
  private Model model;
  private PApplet mainView;
  private ViewBrewery breweryView;
  private ViewBeers beerView;
  
  public Controller(PApplet _mainView)
  {
    
    mainView = _mainView;
    breweryView = new ViewBrewery(this);
    beerView = new ViewBeers(this);
    model = new Model(this);
  
    
    PApplet.runSketch(new String[]{"Brewery View"}, breweryView);
    PApplet.runSketch(new String[]{"Beer View"}, beerView);
    
  }
  
  //public void loadLocations(String request)
  //{
  //  model.loadLocations("locations");
  //}
  
  public ArrayList<Locations> getLocations()
  {
    return model.getLocations();
  }
  
}
