import java.net.*;
class BeerConnector
{
  private static final String BASE_URL = "https://api.openbrewerydb.org/breweries"; 
  /**
   * This method was created due that swapi does not allow requests directly
   * with loadStrings or loadJSONObject
   */
  public JSONArray loadBeer(String request)
  {
    if(request.contains(BASE_URL))
    {
      request = request.replace(BASE_URL, "");
    }
    JSONArray jsonArray = null;
    try
    {
      URL url= new URL(BASE_URL + request);
      URLConnection connection = url.openConnection();
      connection.setRequestProperty("User-Agent", "BeerNerd/1.0" );
      connection.setRequestProperty("Accept", "application/json" );
      
      String[] results = loadStrings(connection.getInputStream()); 
      jsonArray = parseJSONArray(results[0]);
    } catch(Exception e)
    {
      e.printStackTrace();
    }
    return jsonArray;
  }
}
