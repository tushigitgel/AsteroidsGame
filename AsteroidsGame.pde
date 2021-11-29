Star[] nightSky = new Star[200];
Spaceship bob = new Spaceship();
public void setup() 
{
  size(500,500);
  for (int i = 0; i < nightSky.length; i++)
  {
    nightSky[i] = new Star();
  }
}
public void draw() 
{
  background(0);
  for(int i = 0; i < nightSky.length; i++)
  {
    nightSky[i].show();
  }
  bob.show();
  bob.move();
}
public void keyPressed()
{
    if(key == 'h'){
      bob.hyperspace();
    }
    if(key == 'a'){
      bob.accelerate(0);
      bob.turn(-20);
    }
    if(key == 'd'){
      bob.accelerate(0);
      bob.turn(20);
    }
    if(key == 'w'){
      bob.accelerate(1);
    }
    if(key == 's'){
      bob.accelerate(-1);
    }
}
