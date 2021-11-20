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
}
public void keyPressed()
{
    if(key == 'h'){
      bob.hyperspace();
    }
}
