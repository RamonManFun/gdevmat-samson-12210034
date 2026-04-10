Walker[] walkers = new Walker[8];
PVector[] wind = new PVector[8];
PVector[] gravity = new PVector[8];

void setup()
{
  size(1280, 720, P3D);
  camera(0, 0, Window.eyeZ, 0, 0, 0, 0, -1, 0);
  
  for (int i = 0; i < walkers.length; i++)
  {
    walkers[i] = new Walker();
  }
}


void draw()
{
  background(80);
  
  for (int i = 0; i < walkers.length; i++)
  {
    walkers[i].render();
    walkers[i].position.y = 2 * (Window.windowHeight / walkers.length) * (i - (walkers.length / 2));
    walkers[i].update();
    
    float mew = 0.01f;
    float normal = 1;
    float frictionMag = mew * normal;
    PVector friction = walkers[i].velocity.copy();
    friction.y *= -1;
    friction.normalize();
    friction.y *= (frictionMag);
    
    gravity[i] = new PVector(0.2 * walkers[i].mass, 0);
    walkers[i].applyForce(friction);
    walkers[i].applyForce(gravity[i]);
    
    if (walkers[i].position.y >= Window.windowWidth)
    {
      mew = 0.4f;
    }
    
    
    walkers[i].checkEdges();
  }
}
