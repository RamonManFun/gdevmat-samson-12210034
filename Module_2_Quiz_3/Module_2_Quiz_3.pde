void setup()
{
  size(1020, 720, P3D);
  camera(0, 0, -(height/2.0) / tan(PI*30.0 / 180.0), 0, 0, 0, 0, -1, 0);
  background(0);
}

void draw()
{
  float gaussian = randomGaussian();
  float random = random(-1021, 1021);
  int redVal = int(random(256));
  int greenVal = int(random(256));
  int blueVal = int(random(256));
  int alphaVal = int(random(10, 101));
  
  float circleGauss = randomGaussian();
  
  float standardDeviation = 100;
  float mean = 0;
  
  float circleSD = 150;
  float circleMean = 5;
  
  float x = standardDeviation * gaussian + mean;
  float y = random;
  float circleScale = circleSD * circleGauss + circleMean;
  
  noStroke();
  
  fill(redVal, greenVal, blueVal, alphaVal);
  circle(x, y, circleScale);
}
