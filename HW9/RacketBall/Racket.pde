class Racket extends GameObject
{
  public Racket()
  {
    super();
  }
  
  public void createObject()
  {
    rectMode(CENTER);
    rect(0,0, 100, 20);
  }
  
  public void moveLeft()
  {
    position.x -= 25;
    if(position.x<50){
      position.x = 50;
    }
  }
  public void moveRight()
  {
    position.x += 25;
    if(position.x>width-50){
      position.x = width-50;
    }
  }
}
