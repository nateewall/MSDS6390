class Controller
{
  private Model model;
  private PApplet mainView;
  private ViewBrewery breweryView;
  private ViewBeers beerView;
  private String selectedBrewery;
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
  
  public void orderBeers(String breweryId)
  {
    model.orderBeers(breweryId);
  }
  
  public ArrayList<Locations> getLocations()
  {
    return model.getLocations();
  }
  
  public void updateBeers(ArrayList<Beers> beers)
  {
    breweryView.updateBeers(beers);
    beerView.updateBeers(beers);
  }
  
  public void setSelectedBrewery(String breweryId)
  {
    selectedBrewery = breweryId;
  }
  
  public String getSelectedBrewery()
  {
    return selectedBrewery;
  }
  
 public ArrayList<Beers> getBeers()
 {
   return model.getBeers();
 }
  
}
