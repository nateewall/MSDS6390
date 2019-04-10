import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class AppalachianMountain extends PApplet {

loadShelters shelters;

//ArrayList<Shelters> shelters;
PImage appMap;


public void setup(){
 
 appMap = loadImage("AppalachianMap.jpg");
 shelters = new loadShelters();
}


public void draw()
{
  background(0);
  camera(mouseX, height/2, (height/2) / tan(PI/6), width/2, height/2, 0, 0, 1, 0);
  //translate(-width/2, -height/2, -100);
  appMap.resize(550, 750);
  image(appMap, 0, 0);
}

class loadShelters
{
 public Table table;
 private String shelterName;
 private float longitude;
 private float latitude;
 private float elevation;
 private float mile;
 PVector position;
 
 public loadShelters(){
   table = loadTable("AT_Shelters.csv", "header");
   println(table.getRowCount() + " total rows in table"); 
   for (TableRow row : table.rows()) {
     //shelters.add(getdata(row));
   }
  }
  
  //public getdata(TableRow row){
  //  shelterName = row.getString("name");
  //  latitude = row.getFloat("lat");
  //  longitude = row.getFloat("lon");
  //  elevation = row.getFloat("elev_num");
  //  mile = row.getFloat("to_spgr");
  //  position = new PVector(latitude, longitude);
  //}
  
}

   
  public void settings() {  size(550, 750, P3D); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "AppalachianMountain" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
