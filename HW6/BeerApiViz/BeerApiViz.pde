JSONArray json;
PImage bg;
int CANVAS_WIDTH;
int CANVAS_HEIGHT;
BeerConnector connector;

void settings()
{
  bg = loadImage("New-England-IPA.jpg");
  CANVAS_WIDTH = bg.width;
  CANVAS_HEIGHT = bg.height;
  size(CANVAS_WIDTH, CANVAS_HEIGHT);
  connector = new BeerConnector();
}

void setup()
{
  background(bg);
  //print('loading Raleigh Breweries');
  findBreweries();
}

void draw()
{
  drawBreweries();
  drawBrewtypes();
}
