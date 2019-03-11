class Model
{
 private static final String url = "http://api.brewerydb.com/v2/";
 private static final String apiKey = "d4d4ffc57e562d28bbd750b51fa61bf6";
 private ArrayList<Locations> locations;
 
 private Controller control;
 
 public Model(Controller _control)
 {
   locations = new ArrayList<Locations>();
   converter = new Converter(USMap.width, USMap.height);
   control = _control;
   JSONObject json = loadJSONObject(url+"locations/?key="+apiKey);
   JSONArray jsonArray = json.getJSONArray("data");
  
   for (int i = 0; i < jsonArray.size(); i++) {
     JSONObject data = jsonArray.getJSONObject(i);
     Locations l = new Locations(data);
     locations.add(l);
   }
   println(locations.size() + " brewery locations returned.");
 }
 
 public void updateCoordinates(
 
 public ArrayList<Locations> getLocations()
 {
   return locations;
 }
 
}
