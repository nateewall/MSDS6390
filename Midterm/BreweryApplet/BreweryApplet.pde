import wordcram.*;

Controller control;
PImage USMap;
Converter converter;
ArrayList<Locations> locations;
ArrayList<Beers> beers;
String breweryId;

void settings()
{
  USMap = loadImage("USMap.png");
  size(USMap.width, USMap.height);
  converter = new Converter(USMap.width, USMap.height);
  locations = new ArrayList<Locations>();
}


void setup()
{
  control = new Controller(this);
  locations = control.getLocations();
  String breweryId = null;
}


void draw()
{
  image(USMap, 0, 0);
  
  Locations selectedLoc = null;
  PVector selectedXY = null;
  for(Locations l : locations)
  {
    PVector pos = l.getPosition();
    PVector global = converter.convert2Pixels(pos.x, pos.y);
    float x = global.x;  
    float y = global.y;
    float diameter = 10;
    if(l.isSelected())
    {
      selectedLoc = l;
      selectedXY = new PVector(x, y);
    }
    fill(255);
    ellipse(x, y, diameter, diameter);
  }
  if(selectedLoc != null && selectedXY != null)
  {
    float diameter = 15;
    float x = selectedXY.x;
    float y = selectedXY.y;
    pushMatrix();
      text("Name: " + selectedLoc.getBreweryName(), 5, 15);
      text("Region: " + selectedLoc.getRegion(), 5, 30);
      text("Location Type: " + selectedLoc.getLocationType(), 5, 45);
    popMatrix();
    fill(0);
    ellipse(x, y, diameter, diameter);
  }
}

public void mouseMoved()
{
  for(Locations l : locations)
  {
    l.setSelected(false);
  }
  for(Locations l : locations)
  {
    PVector pos = l.getPosition();
    PVector global = converter.convert2Pixels(pos.x, pos.y);
    float x = global.x;  
    float y = global.y;
    float distance = dist(mouseX, mouseY, x, y);
    if(distance <= 10)
    {
      l.setSelected(true);
      breweryId =l.getBreweryId();
    }
  }
}

void mouseClicked()
{
  if(breweryId != null)
  {
    control.orderBeers(breweryId);
  }
}
