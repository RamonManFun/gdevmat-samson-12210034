class Matter
{
  PVector position = new PVector();
  
    float gaussX = randomGaussian();
    float gaussY = randomGaussian();
    
    float sdX = 500;
    float sdY = 500;
    
    float meanX = 0;
    float meanY = 10;
    
    int r = int(random(256)), g = int(random(256)), b = int(random(256));
    int size = int(random(10, 30));
    
  void setPos()
  {
    position.x = sdX * gaussX + meanX;
    position.y = sdY * gaussY + meanY;
  }
  
  void render()
  { 
    noStroke();
    fill(r, g, b);
    
    circle(position.x, position.y, size);
  }
}
