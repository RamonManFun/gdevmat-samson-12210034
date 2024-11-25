class Walker
{
  PVector position = new PVector();
  PVector speed = new PVector(5, 8);
  
  void render()
  {
    circle(position.x, position.y, 30);
  }
  
  void moveAndBounce()
    {
      position.add(speed);
      
      if ((position.x > Window.right) || (position.x < Window.left))
    {
      speed.x *= -1;
    }
  
    if ((position.y > Window.top) || (position.y < Window.bottom))
    {
      speed.y *= -1;
    }
  }
  
  void randomWalk()
  {
    int rng = int(random(8));
    
    if (rng == 0)
    {
      position.y += 10;
    }
    else if (rng == 1)
    {
      position.y -= 10;
    }
    else if (rng == 2)
    {
      position.x += 10;
    }
    else if (rng == 3)
    {
      position.x -= 10;
    }
    else if (rng == 4)
    {
      position.x += 10;
      position.y += 10;
    }
    else if (rng == 5)
    {
      position.x -= 10;
      position.y += 10;
    }
    else if (rng == 6)
    {
      position.x -= 10;
      position.y -= 10;
    }
    else if (rng == 7)
    {
      position.x += 10;
      position.y -= 10;
    }
  }
}
