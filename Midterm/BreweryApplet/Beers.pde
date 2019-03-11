class Beers
{
  private String beerName;
  private String beerId;
  private String abv;
  private String styleName;
  private int styleId;
  private String categoryName;
  //private String icon;
  
  private boolean selected;
  
  public Beers(JSONObject data)
  {
     beerName = data.getString("name");
     beerId = data.getString("id");
     abv = data.getString("abv");
     //JSONObject labels = data.getJSONObject("labels");
     //  icon = labels.getString("icon");
     JSONObject style = data.getJSONObject("style");
       styleName = style.getString("shortName");
       styleId = style.getInt("id");
       JSONObject category = style.getJSONObject("category");
         categoryName = category.getString("name");
  }
  
  public String getBeerId()
  {
    return beerId;
  }
  
  public String getBeerName()
  {
    return beerName;
  }
  
  //public String getIcon()
  //{
  //  return icon;
  //}
  
  public float getAbv()
  {
    float a = float(abv);
    return a;
  }
  
  public String getStyleName()
  {
    return styleName;
  }
  
  public String getCategoryName()
  {
    return categoryName;
  }
  
}
