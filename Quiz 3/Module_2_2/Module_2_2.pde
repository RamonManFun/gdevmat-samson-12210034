void setup()
{
  size(1020, 720, P3D);
  camera(0, 0, -(height/2.0) / tan(PI*30.0 / 180.0), 0, 0, 0, 0, -1, 0);
  background(130);
}

void draw()
{
  float gauss = randomGaussian();
  float gauss2 = randomGaussian();
  float rand = random(-721, 721);
  
  float standardDeviation = 100;
  float mean = 0;
  
  float standardDeviation2 = 20;
  float mean2 = 30;
  
  float x = standardDeviation * gauss + mean;
  float circleSize = standardDeviation2 * gauss2 + mean2;
  
  noStroke();
  
  fill(int(random(256)), int(random(256)), int(random(256)), int(random(10, 101)));
  circle(x, rand, circleSize);
}
