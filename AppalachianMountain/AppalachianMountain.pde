loadShelters shelters;

//ArrayList<Shelters> shelters;
PImage appMap;


void setup(){
 size(550, 750, P3D);
 appMap = loadImage("AppalachianMap.jpg");
 shelters = new loadShelters();
}


void draw()
{
  background(0);
  camera(mouseX, height/2, (height/2) / tan(PI/6), width/2, height/2, 0, 0, 1, 0);
  //translate(-width/2, -height/2, -100);
  appMap.resize(550, 750);
  image(appMap, 0, 0);
}
