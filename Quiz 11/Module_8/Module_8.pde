Walker[] walkers = new Walker[10];

void setup()
{
  size(1280, 720, P3D);
  camera(0, 0, Window.eyeZ, 0, 0, 0, 0, -1, 0);
  
  for (int i = 0; i < walkers.length; i++)
  {
    walkers[i] = new Walker();
    walkers[i].position = new PVector(random(-550, 550), random(-440, 440));
  }
  
}

void draw()
{
  background(200);
  
  for (int i = 0; i < walkers.length; i++)
  {
    walkers[i].update();
    walkers[i].render();
    
    for (int j = 0; j < walkers.length; j++)
    {
      if (i != j)
      {
        walkers[i].applyForce(walkers[j].calculateAttraction(walkers[i]));
      }
    }
  }
}
