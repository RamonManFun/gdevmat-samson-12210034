void setup()
{
  camera(0, 0, Window.eyeZ, 0, 0, 0, 0, -1, 0);
  size(1080, 720, P3D);
}

PVector mousePos()
{
  float x = mouseX - Window.windowWidth;
  float y = -(mouseY - Window.windowHeight);
  return new PVector(x, y);
}

PVector reverseMousePos()
{
  float x = mouseX - Window.windowWidth;
  float y = -(mouseY - Window.windowHeight);
  return new PVector(-x, -y);
}

void draw()
{ 
  background(130);
  
  strokeWeight(10);
  stroke(255, 0, 0);
  
  PVector mouse = mousePos();
  PVector reverseMouse = reverseMousePos();
  
  // mouse.mult(0.5);
  mouse.normalize().mult(500);
  reverseMouse.normalize().mult(500);
  
  // red glow
  strokeWeight(15);
  stroke(255, 0, 0, 100);
  line(0, 0, mouse.x, mouse.y);
  
  // white glow
  strokeWeight(5);
  stroke(255, 255, 255);
  line(0, 0, mouse.x, mouse.y);
  
  // black handle
  strokeWeight(15);
  stroke(0, 0, 0);
  line(0, 0, mouse.x / 4, mouse.y / 4);
  
  // DOING IT ALL AGAIN BUT IN REVERSE BABY
  
  // red glow
  strokeWeight(15);
  stroke(255, 0, 0, 100);
  line(0, 0, reverseMouse.x, reverseMouse.y);
  
  // white glow
  strokeWeight(5);
  stroke(255, 255, 255);
  line(0, 0, reverseMouse.x, reverseMouse.y);
  
  // black handle
  strokeWeight(15);
  stroke(0, 0, 0);
  line(0, 0, reverseMouse.x / 4, reverseMouse.y / 4);
  
  println(mouse.mag());
}
