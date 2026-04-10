class BlackHole
{
  PVector position = new PVector();
  
    float gaussX = randomGaussian();
    float gaussY = randomGaussian();
    
    float sdX = 10;
    float sdY = 30;
    
    float meanX = 10;
    float meanY = 40;
    
  void setPos()
  {
    position.x = sdX * gaussX + meanX;
    position.y = sdY * gaussY + meanY;
  }
  
  PVector mousePos()
  {
    float x = mouseX - Window.windowWidth;
    float y = -(mouseY - Window.windowHeight);
  
    return new PVector(x, y);
  }
  
  void render()
  { 
    noStroke();
    fill(255, 255, 255);
    circle(position.x, position.y, 50);
    
    position = mousePos();
  }
}
