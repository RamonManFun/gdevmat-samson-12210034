public class Walker
{
  public PVector position = new PVector();
  public PVector velocity = new PVector();
  public PVector acceleration = new PVector();
  
  public float velocityLimit = 10;
  public float scale = random(10, 30);
  
  public Walker()
  {
  
  }
  
  public void setPos()
  {
    position.x = int(random(30, 900));
    position.y = int(random(30, 900));
  }
  
  PVector mousePos()
{
  float x = mouseX - Window.windowWidth;
  float y = -(mouseY - Window.windowHeight);
  
  return new PVector(x, y);
}
  
  public void update()
  {
    this.acceleration = mousePos();
    this.velocity.add(this.acceleration);
    this.velocity.limit(velocityLimit);
    this.position.add(this.velocity);
  }
  
  public void render()
  {
    circle(position.x, position.y, scale);
  }
  
  public void checkEdges()
  {
    if (this.position.x > Window.right)
    {
      this.position.x = Window.left;
    }
    
    if (this.position.x < Window.left)
    {
      this.position.x = Window.right;
    }
    
    if (this.position.y > Window.top)
    {
      this.position.y = Window.bottom;
    }
    
    if (this.position.y < Window.bottom)
    {
      this.position.y = Window.top;
    }
  }
}
