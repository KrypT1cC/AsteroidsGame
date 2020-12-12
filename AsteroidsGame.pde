Spaceship ship = new Spaceship();
Star [] star = new Star[100];
Asteroid uno = new Asteroid();
ArrayList <Asteroid> asteroids = new ArrayList <Asteroid>();

public void setup() 
{
  size(500, 500);
  for (int i = 0; i < star.length; i++)
  {
    star[i] = new Star();
  }
  for (int i = 0; i < 10; i++)
  {
    asteroids.add(new Asteroid());
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
  
  for (int i = 0; i < asteroids.size(); i++)
  {
    if (dist((float)asteroids.get(i).getCenterX(), (float)asteroids.get(i).getCenterY(), (float)ship.getCenterX(), (float)ship.getCenterY()) < 20)
    {
      asteroids.remove(i);//would continously remove so this is not going to work as intended.
    }
    else
    {
      asteroids.get(i).show();
      asteroids.get(i).move();
    }
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
