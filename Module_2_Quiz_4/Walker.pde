class Walker
{
  public float x;
  public float y;
  public float tx = 0, ty = 10000;
  
  public float tScale = 0;
  
  public float tRed = 0;
  public float tGreen = 0;
  public float tBlue = 0;
  
  int alphaVal = int(random(50, 101));
  
  void render()
  {
    float scale = 5;
    scale = map(noise(tScale), 0, 1, 5, 150);
    tScale += 0.01f;
    circle(x, y, scale);
    
    float Red = 0;
    float Green = 0;
    float Blue = 0;
    
    Red = map(noise(tRed), 0, 1, 0, 255);
    Green = map(noise(tGreen), 0, 1, 0, 255);
    Blue = map(noise(tBlue), 0, 1, 0, 255);
    
    tRed += 0.01f;
    tGreen += 0.01f;
    tBlue += 0.01f;
    
    fill(Red, Green, Blue);
  }
  
  void perlinWalk()
  {    
    x = map(noise(tx), 0, 1, -640, 640);
    y = map(noise(ty), 0, 1, -360, 360);
    
    tx += 0.01f;
    ty += 0.01f;
  }
  
  void randomWalk()
  {
    int rng = int(random(8));
    int redVal = int(random(256));
    int blueVal = int(random(256));
    int greenVal = int(random(256));
    
    if (rng == 0)
    {
      y += 10;
    }
    else if (rng == 1)
    {
      y -= 10;
    }
    else if (rng == 2)
    {
      x += 10;
    }
    else if (rng == 3)
    {
      x -= 10;
    }
    else if (rng == 4)
    {
      x += 10;
      y += 10;
    }
    else if (rng == 5)
    {
      x -= 10;
      y += 10;
    }
    else if (rng == 6)
    {
      x -= 10;
      y -= 10;
    }
    else if (rng == 7)
    {
      x += 10;
      y -= 10;
    }
    
    fill(redVal, greenVal, blueVal, alphaVal);
  }
  
  void randomBiasedWalk()
  {
    int rng = int(random(8));
    int redVal = int(random(256));
    int blueVal = int(random(256));
    int greenVal = int(random(256));
    
    if (rng == 0)
    {
      y += 10;
    }
    else if (rng == 1)
    {
      y -= 10;
    }
    else if (rng == 2)
    {
      x += 10;
    }
    else if (rng == 3)
    {
      x -= 10;
    }
    else if (rng == 4 || rng == 0)
    {
      x += 10;
      y += 10;
    }
    else if (rng == 5 || rng == 0)
    {
      x -= 10;
      y += 10;
    }
    else if (rng == 6)
    {
      x -= 10;
      y -= 10;
    }
    else if (rng == 7)
    {
      x += 10;
      y -= 10;
    }
    
    fill(redVal, greenVal, blueVal, alphaVal);
  }
}
