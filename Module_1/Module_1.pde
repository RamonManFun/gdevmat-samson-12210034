
void setup()
{
  size(1280, 720, P3D);
  camera(0, 0, -(height/2.0) / tan(PI*30.0 / 180.0), 0, 0, 0, 0, -1, 0);
  
}


void draw()
{
  background(0);
  
  //circle(0, 0, 45);
  
  //strokeWeight(2);
  //color white = color(255, 255, 255);
  //fill(white);
  //stroke(white);
  //line(-75, -75, 75, 75);
  
  drawCartesianPlane();
  drawLinearFunction();
  drawQuadraticFunction();
  drawSineWave();
}

void drawCartesianPlane()
{
  strokeWeight(1);
  color white = color(255, 255, 255);
  fill(white);
  stroke(white);
  line(300, 0, -300, 0);
  line(0, -300, 0, 300);
  
  for (int i = -300; i <= 300; i += 10)
  {
    line(i, -2, i, 2);
    line(-2, i, 2, i);
  }
}

void drawLinearFunction()
{
  color purple = color(255, 0, 255);
  fill(purple);
  noStroke();
  
  for (int x = -80; x <= 80; x++)
  {
    circle(x, -5 * x + 30, 5);
  }
}

void drawQuadraticFunction()
{
  color yellow = color(255, 255, 0);
  fill(yellow);
  stroke(yellow);
  
  for (float x = -300; x <= 300; x += 0.1f)
  {
    circle(x * 10, (float)(Math.pow(x * 5, 2) - (15 * x * 2) - 3), 5);
  }
}

void drawCircle()
{
  color blue = color(0, 0, 255);
  fill(blue);
  stroke(blue);
  float radius = 50;
  
  for (int x = 0; x <= 360; x++)
  {
    circle((float)Math.cos(x) * radius, (float)Math.sin(x) * radius, 5);
  }
}

void drawSineWave()
{
  color blue = color(0, 0, 255);
  fill(blue);
  stroke(blue);
  float radius = 50;
  
  for (float x = -300; x <= 300; x += 0.1f)
  {
    circle(x * 20, (float)Math.sin(x) * radius, 5);
  }
}
