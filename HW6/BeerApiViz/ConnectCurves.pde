
void drawConnections()
{
  for(int i = 0; i < breweryType.length; i++)
  {
    int index = -1;
    for (int ind=0; ind < brewTypes.length; ind++) {
      if (brewTypes[ind].equals(breweryType[i])) {
        index = ind;
        break;
      }
    }
    PVector brewPos = brewPosition[i];
    PVector brewTypePos = brewTypePosition[index];
    if(hovered[i])
    {
      stroke(255);
      strokeWeight(3);
    }
    else
    {
      stroke(150);
      strokeWeight(1);
    }
    PVector interPos = new PVector(
    brewPos.x + ((brewTypePos.x - brewPos.x) / 2),
    (brewPos.y + ((brewTypePos.y - brewPos.y) / 2)) - 75
    );
    noFill();
    beginShape();
      curveVertex(brewPos.x, brewPos.y);
      curveVertex(brewPos.x, brewPos.y);
      curveVertex(interPos.x, interPos.y);
      curveVertex(brewTypePos.x, brewTypePos.y);
      curveVertex(brewTypePos.x, brewTypePos.y);
    endShape(); 
   }
   strokeWeight(1);
   stroke(150);
}
