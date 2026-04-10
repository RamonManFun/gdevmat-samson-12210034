Liquid lake = new Liquid(0, -100, Window.right, Window.bottom, 0.1f);
Walker[] walkers = new Walker[10];

void setup()
{
  size(1280, 720, P3D);
  camera(0, 0, Window.eyeZ, 0, 0, 0, 0, -1, 0);
  
  for (int i = 0; i < walkers.length; i++)
  {
    walkers[i] = new Walker();
    walkers[i].position.x = 2 * (Window.windowWidth / 10) * (i - 5);
  }
}

void draw()
{
  background(200);
  lake.render();
  
  for (int i = 0; i < walkers.length; i++)
  {
    walkers[i].render();
    walkers[i].update();
    
    PVector gravity = new PVector(0, -0.15f * walkers[i].mass);
    walkers[i].applyForce(gravity);

    PVector wind = new PVector(0.1, 0);
    walkers[i].applyForce(wind);
    
    walkers[i].checkEdges();
    
    float c = 0.1f;
    float normal = 1;
    float frictionMag = c * normal;
    PVector friction = walkers[i].velocity.copy();
    
    walkers[i].applyForce(friction.mult(-1).normalize().mult(frictionMag));
    
    if (lake.isCollidingWith(walkers[i]))
    {
    PVector dragForce = lake.calculateDrag(walkers[i]);
    walkers[i].applyForce(dragForce);
    }
  }
}
