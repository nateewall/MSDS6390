import java.util.*; 
 
String[] brewTypes;
PVector[] brewTypePosition;

void drawBrewtypes()
{
  brewTypes = new HashSet<String>(Arrays.asList(breweryType)).toArray(new String[0]);
  brewTypePosition = new PVector[brewTypes.length];
  print(brewTypes.length);
  //for(int i = 0; i < brewTypes.length; i++)
  //{
  //  //get the box positioning for the breweries
  //  int yPosition2 = (int)map(i, 0, brewTypes.length - 1, CANVAS_HEIGHT / 2 - 250, CANVAS_HEIGHT / 2 + 250);
  //  brewTypePosition[i] = new PVector(CANVAS_WIDTH - 75, yPosition2); 
  //}
  
  //for(int i = 0; i < brewTypes.length; i++)
  //{
  //  PVector pos = brewTypePosition[i];
  //  beerGlass(pos.x,pos.y);
  //  text(breweryType[i], CANVAS_WIDTH-50, pos.y+15);
  //}
}
