OddballParticle Jeff = new OddballParticle();
Particle [] Bobs = new Particle[500]; 
void setup()
{
  size(600,600);
  noStroke();
  for(int i = 0; i < Bobs.length; i++)
{
  Bobs[i] = new Particle();
}
  Bobs[0] = Jeff;
}
void draw()
{
  background(0);
  for(int i = 0; i < Bobs.length; i++)
  {
    Bobs[i].show();
    Bobs[i].move();
  }
}
class Particle
{
  double myX,myY,myAngle,mySpeed;
  int myColor;
  Particle()
  {
    myX = 320;
    myY = 240;
    myAngle = Math.random()*2*Math.PI;
    mySpeed = Math.random()*10;
    myColor = color((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
  }
  void move()
  {
    myX += Math.cos(myAngle) * mySpeed;
    myY += Math.sin(myAngle) * mySpeed;
  }
  void show()
  {
    fill(myColor);
    ellipse((float)myX,(float)myY,7,7);
  }
}
  class OddballParticle extends Particle 
{
   void OddBallParticle()
   {
    myX = 320;
    myY = 240;
   }
   void move()
   {
    myX += (Math.random()*10)-5;
    myY += 1;
   }
   void show()
   {
      fill(myColor);
      rect((float)myX,(float)myY,40,40);
   }
}

