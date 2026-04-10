class Walker
{
  float x;
  float y;
  
  void render()
  {
    circle(x, y, 30);
  }
  
  void randomWalk()
  {
    int rng = int(random(8));
    fill(int(random(256)), int(random(256)), int(random(256)), int(random(50, 101)));
    noStroke();
    
    switch(rng) {
      case 0:
        y+=10;
        break;
      case 1:
        y-=10;
        break;
      case 2:
        x+=10;
        break;
      case 3:
        x-=10;
        break;
      case 4:
        y+=10;
        x+=10;
        break;
      case 5:
        y-=10;
        x+=10;
        break;
      case 6:
        x-=10;
        y-=10;
        break;
      case 7:
        x-=10;
        y+=10;
        break;
    }
  }
  
  void randomWalkBiased()
  {
    int rng = int(random(8));
    fill(int(random(256)), int(random(256)), int(random(256)), int(random(50, 101)));
    noStroke();    
    
    switch(rng) {
      case 0:
        y+=10;
        break;
      case 1:
        y+=10;
        break;
      case 2:
        x+=10;
        break;
      case 3:
        y-=10;
        break;
      case 4:
        y+=10;
        x-=10;
        break;
      case 5:
        y-=10;
        x+=10;
        break;
      case 6:
        x-=10;
        y-=10;
        break;
      case 7:
        x+=10;
        y+=10;
        break;
      }
    }
}
