import java.util.*; 
 
String[] brewTypes = {"micro", "regional", "brewpub", "large", "planning", "bar", "contract", "proprietor"};
PVector[] brewTypePosition;
boolean[] selectedType;

void drawBrewtypes()
{
  selectedType = new boolean[brewTypes.length];
  brewTypePosition = new PVector[brewTypes.length];
  for(int i = 0; i < brewTypes.length; i++)
  {
    //get the box positioning for the breweries
    int yPosition2 = (int)map(i, 0, brewTypes.length - 1, CANVAS_HEIGHT / 2 - 250, CANVAS_HEIGHT / 2 + 250);
    brewTypePosition[i] = new PVector(CANVAS_WIDTH - 100, yPosition2); 
  }
  
  for(int i = 0; i < brewTypes.length; i++)
  {
    PVector pos = brewTypePosition[i];
    beerGlass(pos.x,pos.y);
    text(brewTypes[i], CANVAS_WIDTH-75, pos.y+15);
  }
}
