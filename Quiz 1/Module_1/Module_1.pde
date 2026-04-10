void setup()
{
  size(1280, 720, P3D);
  camera(0, 0, -(height/2.0) / tan(PI*30.0 / 180.0), 0, 0, 0, 0, -1, 0);
}

void draw()
{
  background(130);
  
  drawCartesianPlane();
  drawYellowFunction();
  drawPurpleFunction();
  drawSineWave();
}

void drawCartesianPlane()
{
  strokeWeight(3);
  stroke(0, 0, 0);
  line(300, 0, -300, 0);
  line(0, 300, 0, -300);
  
  for (int i = -300; i <= 300; i += 10)
  {
    line(i, -3, i, 3);
    line(-3, i, 3, i);
  }
}

void drawLinearFunction()
{
  
  stroke(255, 255, 255);
  for (int x = -200; x <= 200; x++)
  {
    circle(x, x + 2, 1);
  }
  
}

void drawQuadraticFunction()
{
  stroke(255, 0, 255);
  for (float x = -300; x <= 300; x+=0.1f)
  {
    circle(x * 10, ((float)Math.pow(x, 2) + (x*2) - 5), 1);
  }
}

void drawCircle()
{
  color col = color(0, 255, 255);
  stroke(col);
  fill(col);
  float radius = 50;
  
  for (int x = 0; x <= 360; x++)
  {
    circle((float)Math.cos(x) * radius, (float)Math.sin(x) * radius, 5);
  }
}

void drawYellowFunction()
{
  stroke(255, 255, 0);
  for (float x = -300; x <= 300; x+=0.1f)
  {
    circle(x * 10, ((float)Math.pow(x, 2) + (x*-15) - 3), 3);
  }
}

void drawPurpleFunction()
{
  stroke(255, 0, 255);
  for (int x = -200; x <= 200; x++)
  {
    circle(x, (-5 * x) + 30, 3);
  }
}

void drawSineWave()
{
  stroke(25, 192, 90);
  for (int x = -300; x <= 300; x++)
  {
    circle(x, 30 * (float)Math.sin(3.14 * x * 40), 3);
  }
}
