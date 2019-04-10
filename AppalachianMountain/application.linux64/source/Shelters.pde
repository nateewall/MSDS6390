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

   
