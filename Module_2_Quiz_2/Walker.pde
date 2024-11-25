class Walker
{
  float x;
  float y;
  int alphaVal = int(random(50, 101));
  
  void render()
  {
    circle(x, y, 30);
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
