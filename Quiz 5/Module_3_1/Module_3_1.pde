void setup()
{
  size(1280, 720, P3D);
  camera(0, 0, Window.eyeZ, 0, 0, 0, 0, -1, 0);
}

PVector pos = new PVector();
PVector speed = new PVector(5, 5);
Walker vecWalker = new Walker();
Walker bounceWalker = new Walker();

void draw()
{
  background(130);
  
  vecWalker.render();
  vecWalker.randomWalk();
  
  bounceWalker.render();
  bounceWalker.moveAndBounce();
}
