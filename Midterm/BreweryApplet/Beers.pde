class Beers
{
  private String beerName;
  private String beerId;
  private String abv;
  private int styleId;
  private String createDate;
  
  private boolean selected;
  
  public Beers(JSONObject data)
  {
     beerName = data.getString("name");
     beerId = data.getString("id");
     abv = data.getString("abv");
     createDate = data.getString("createDate");

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
  
  public int getStyleId()
  {
    return styleId;
  }
  
  public String getCreateDate()
  {
    return createDate;
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
