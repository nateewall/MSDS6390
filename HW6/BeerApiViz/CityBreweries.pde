String[] breweryType;
String[] brewName;
String[] street;
String[] website_url;
PVector[] brewPosition;
boolean[] hovered;

void findBreweries()
{
  json = connector.loadBeer("?by_city=Asheville");
  int breweriesSize =  json.size();
  // set up arrays for to build from API response
  breweryType = new String[breweriesSize];
  brewName = new String[breweriesSize];
  street = new String[breweriesSize];
  website_url = new String[breweriesSize];
  brewPosition = new PVector[breweriesSize];
  hovered = new boolean[breweriesSize];
  
  for(int i = 0; i < breweriesSize; i++){
    // get the json objects that I care about
    JSONObject brewery = json.getJSONObject(i);
    breweryType[i] = brewery.getString("brewery_type");
    brewName[i] = brewery.getString("name");
    street[i] = brewery.getString("street");
    website_url[i] = brewery.getString("website_url");
    
    //get the box positioning for the breweries
    int yPosition = (int)map(i, 0, brewName.length - 1, CANVAS_HEIGHT / 2 - 350, CANVAS_HEIGHT / 2 + 350);
    brewPosition[i] = new PVector(50, yPosition);
    
  }
}
