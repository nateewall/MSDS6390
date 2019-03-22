abstract class GameObject 
{
  protected PVector position;
  protected float angle;
  protected PVector velocity;
  protected int rotation;
  protected int objectColor;

  public GameObject()
  {
    position = new PVector(0,0);
    velocity = new PVector(0,0);
    rotation = 0;
    objectColor = color(0);
  }
   
  public void updatePosition(PVector newPosition)
  {
    position = newPosition;
  }
    
  public void setColor(int pColor)
  {
    objectColor = pColor;
  }
  
  public void setVelocity(PVector pVelocity)
  { 
    velocity = pVelocity;
  }
  
  public void setAngle(float _angle)
  {
    angle = _angle;
  }
  
  public PVector getPosition()
  {
    return position;
  }
  
  public float getAngle()
  {
    return angle;
  }
  
  public abstract void createObject();
  
  public void renderObject()
  {
    pushMatrix();
    translate(position.x, position.y);
    rotate(rotation);
    fill(objectColor);
    stroke(0);
    createObject();
    popMatrix();
  }
  
  public void move()
  {
    position.x += velocity.x;
    position.y += velocity.y;
    if(position.x > WINDOW_WIDTH-10 | position.x < 10)
    {
      velocity.x *= -1;
    }
    if(position.y < 10)
    {
      velocity.y *= -1;
    }
  }
  

}
