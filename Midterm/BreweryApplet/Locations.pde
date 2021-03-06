class Locations
{
  private String breweryName;
  private String breweryId;
  private float longitude;
  private float latitude;
  private String region;
  private String locationType;
  
  PVector position;
  
  private boolean selected;
  
  public Locations(JSONObject data)
  {
     latitude = data.getFloat("latitude");
     longitude = data.getFloat("longitude");
     region = data.getString("region");
     locationType = data.getString("locationTypeDisplay");
     JSONObject brewery = data.getJSONObject("brewery");
     breweryName = brewery.getString("name");
     breweryId = brewery.getString("id");
     position = new PVector(latitude, longitude);
  }

  public String getBreweryId()
  {
    return breweryId;
  }
  
  public String getLocationType()
  {
    return locationType;
  }
  
  public PVector getPosition()
  {
    return position;
  }
  
  public String getBreweryName()
  {
    return breweryName;
  }
  
  public String getRegion()
  {
    return region;
  }
  
  public void setSelected(boolean b)
  {
    selected = b;
  }
  
  public boolean isSelected()
  {
    return selected;
  }
  
}
