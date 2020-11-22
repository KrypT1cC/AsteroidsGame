Spaceship ship = new Spaceship();
Star [] star = new Star[100];

public void setup() 
{
  size(500, 500);
  for (int i = 0; i < star.length; i++)
  {
    star[i] = new Star();
  }
}
public void draw() 
{
  background(0);
  ship.move();
  ship.show();  
  for (int i = 0; i < star.length; i++)
  {
    star[i].show();
  }
}
public void keyPressed()
{
  if (key == 'w')
  {
    ship.accelerate(0.5);
  }
  else if (key == 's')
  {
    ship.accelerate(-0.5);
  }
  else if (key == 'a')
  {
    ship.turn(-10);
  }
  else if (key == 'd')
  {
    ship.turn(10);
  }
  else if (key == 'q')
  {
    ship.EnterHyperspace();
  }
}
