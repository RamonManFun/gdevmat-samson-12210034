void setup()
{
  camera(0, 0, Window.eyeZ, 0, 0, 0, 0, -1, 0);
  size(1080, 720, P3D);
}

PVector mousePos()
{
  // i know the provided lectures said to divide these by 2 but doing that makes the middle of the screen not in the center for me
  float x = mouseX - Window.windowWidth;
  float y = -(mouseY - Window.windowHeight);
  
  return new PVector(x, y);
}

void draw()
{
  background(130);

  PVector mouse = mousePos();
  
  //mouse.mult(0.5);
  mouse.normalize().mult(50);
  
  strokeWeight(15);
  stroke(255, 0, 0, 80);
  line(0, 0, mouse.x * 7, mouse.y * 7);
  line(0, 0, -mouse.x * 7, -mouse.y * 7);
  
  strokeWeight(10);
  stroke(255, 255, 255);
  line(0, 0, mouse.x * 7, mouse.y * 7);
  line(0, 0, -mouse.x * 7, -mouse.y * 7);
  
  strokeWeight(20);
  stroke(0, 0, 0);
  line(0, 0, mouse.x * 1.6, mouse.y * 1.6);
  line(0, 0, -mouse.x * 1.6, -mouse.y * 1.6);
  
  println(mouse.mag());
}
