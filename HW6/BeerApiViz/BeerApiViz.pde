JSONArray json;
static final int CANVAS_WIDTH = 1000;
static final int CANVAS_HEIGHT = 800;
BeerConnector connector;


void settings()
{
  size(CANVAS_WIDTH, CANVAS_HEIGHT);
  connector = new BeerConnector();
}

void findBreweries()
{
  json = connector.loadBeer("?by_name=cooper");
  //JSONArray breweries = json.getJSONArray("results");
  int breweriesSize =  json.size();
  print(breweriesSize);
}

void setup()
{
  findBreweries();
}
