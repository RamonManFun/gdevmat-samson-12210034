class Walker
{
  float x;
  float y;
  PVector walkerPos = new PVector();
  PVector walkerSpeed = new PVector(5, 5);
  
  void render()
  {
    circle(walkerPos.x, walkerPos.y, 30);
  }
  
  void randomWalk()
  {
    int rng = int(random(4));
    //fill(int(random(256)), int(random(256)), int(random(256)), int(random(50, 101)));
    noStroke();
    
    switch(rng) {
      case 0:
        walkerPos.x += walkerSpeed.x;
        break;
      case 1:
        walkerPos.x -= walkerSpeed.x;
        break;
      case 2:
        walkerPos.y += walkerSpeed.y;
        break;
      case 3:
        walkerPos.y -= walkerSpeed.y;
        break;
    }
  }
  
  void moveAndBounce()
  {
    walkerPos.add(walkerSpeed);
    
    if ((walkerPos.x > Window.right) || (walkerPos.x < Window.left))
    { walkerSpeed.x *= -1; }
    
    if ((walkerPos.y > Window.top) || (walkerPos.y < Window.bottom))
    { walkerSpeed.y *= -1; }
  }
}
