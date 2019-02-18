JSONArray json;
static final int CANVAS_WIDTH = 1000;
static final int CANVAS_HEIGHT = 800;
BeerConnector connector;


void settings()
{
  size(CANVAS_WIDTH, CANVAS_HEIGHT);
  connector = new BeerConnector();
}

String[] breweryType;

void findBreweries()
{
  json = connector.loadBeer("?by_name=cooper");
  //JSONArray breweries = json.getJSONArray("results");
  int breweriesSize =  json.size();
  breweryType = new String[breweriesSize];
  for(int i = 0; i < breweriesSize; i++){
    JSONObject brewery = json.getJSONObject(i);
    breweryType[i] = brewery.getString("brewery_type");
    print(brewery.getString("brewery_type"));
  }
  //print(breweryType);
}

void setup()
{
  findBreweries();
}
