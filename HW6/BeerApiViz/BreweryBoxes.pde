
void drawBreweries()
{
  for(int i = 0; i < brewPosition.length; i++)
  {
    PVector pos = brewPosition[i];
    
    if (hovered[i]) {
      hovered[i] = true;
    }
    else
    {
      if(mouseX > pos.x && mouseX < (pos.x+20) && mouseY > pos.y && mouseY < (pos.y+20))
      {
        hovered[i] = true;
      }
      else
      {
        hovered[i] = false;
      }
    }
    beerGlass(pos.x,pos.y);
    text(brewName[i], 75, pos.y+15);
  }
}
