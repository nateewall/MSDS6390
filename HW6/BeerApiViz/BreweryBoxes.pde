
void drawBreweries()
{
  for(int i = 0; i < brewPosition.length; i++)
  {
    PVector pos = brewPosition[i];
    beerGlass(pos.x,pos.y);
    text(brewName[i], 75, pos.y+15);
  }
}
