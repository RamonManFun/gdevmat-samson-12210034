BlackHole vacuum = new BlackHole();
Matter[] cluster = new Matter[100];
PVector[] directions = new PVector[100];

void setup()
{
  camera(0, 0, Window.eyeZ, 0, 0, 0, 0, -1, 0);
  size(1080, 720, P3D);
  
  vacuum.setPos();

  for (int i = 0; i < cluster.length; i++)
  {
    cluster[i] = new Matter();
    cluster[i].setPos();
  }
}

void doSimulation()
{
  background(0);
  
  for (int i = 0; i < cluster.length; i++)
  {
    directions[i] = PVector.sub(vacuum.position, cluster[i].position);
    directions[i].normalize();
    directions[i].mult(int(random(6, 13)));
    cluster[i].position.add(directions[i]);
    cluster[i].render();
  }
  
  vacuum.render();
}

void draw()
{
  doSimulation();
}
