Walker[] walkerNation = new Walker[100];
PVector[] directions = new PVector[100];

void setup()
{
  size(1280, 720, P3D);
  camera(0, 0, Window.eyeZ, 0, 0, 0, 0, -1, 0);
  
  //myWalker.acceleration = new PVector(-0.01, 0.1);
  
  for (int i = 0; i < walkerNation.length; i++)
  {
    walkerNation[i] = new Walker();
    walkerNation[i].setPos();
  }
}

PVector mousePos()
{
  float x = mouseX - Window.windowWidth;
  float y = -(mouseY - Window.windowHeight);
  
  return new PVector(x, y);
}

void draw()
{
  background(80);
  
  PVector mouse = mousePos();
  
  for (int i = 0; i < walkerNation.length; i++)
  {
    directions[i] = PVector.sub(mouse, walkerNation[i].position);
    directions[i].normalize().mult(5.2);
    walkerNation[i].position.add(directions[i]);
    walkerNation[i].update();
    walkerNation[i].render();
  }
}
