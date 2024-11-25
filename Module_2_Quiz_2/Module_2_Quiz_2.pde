void setup()
{
  size(1020, 720, P3D);
  camera(0, 0, -(height/2.0) / tan(PI*30.0 / 180.0), 0, 0, 0, 0, -1, 0);
}

Walker Jim = new Walker();
Walker George = new Walker();

void draw()
{
  Jim.randomWalk();
  Jim.render();
  
  George.randomBiasedWalk();
  George.render();
}
