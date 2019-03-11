class Converter
{
  private int imageWidth;
  private int imageHeight;
  public Converter(int _imageWidth, int _imageHeight)
  {
    imageWidth = _imageWidth;
    imageHeight = _imageHeight;
  }
  public PVector convert2latlon(float x, float y)
  {
    float lat = map(y, imageHeight, 0, 24.7433195, 49.3457868); 
    float lon = map(x, 0, imageWidth, -124.7844079, -66.9513812);
    return new PVector(lat, lon);
  }
  
  public PVector convert2Pixels(float lat, float lon)
  {
    float x = map(lon, -124.7844079, -66.9513812, 0, imageWidth);
    float y = map(lat, 24.7433195, 49.3457868, imageHeight, 0);
    return new PVector(x, y);
  }
}
