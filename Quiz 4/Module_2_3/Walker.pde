class Walker
{
  public float x;
  public float y;
  public float tx = 0, ty = 10000;
  public float r = 255, g = 255, b = 255;
  public float tr = 0, tg = 0, tb = 0;
  public float size;
  public float tSize = 0;
  
  void render()
  {
    noStroke();
    size = map(noise(tSize), 0, 1, 5, 150);

    
    circle(x, y, size);
    tSize += 0.01f;
  }
  
  void perlinWalk()
  {
    x = map(noise(tx), 0, 1, -640, 640);
    y = map(noise(ty), 0, 1, -360, 360);
    
    r = map(noise(tr), 0, 1, 0, 255);
    g = map(noise(tg), 0, 1, 0, 255);
    b = map(noise(tb), 0, 1, 0, 255);
    
    fill(r, g, b);
    
    tx += 0.01f;
    ty += 0.01f;
    
    tr += 0.05f;
    tg += 0.01f;
    tb += 0.08f;
  }
}
