
class ToadsWatching {
  PImage image;
  
  ToadsWatching()
  {
    image = new PImage();
    image = loadImage("Toads.png");
  }
  
  public void display(float xpos, float ypos) {
    image(image, xpos, ypos);
  }
  
  int getWidth() {
    return image.width;
  }
  
  int getHeight() {
    return image.height;
  }
    
}
