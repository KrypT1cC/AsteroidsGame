Spaceship ship = new Spaceship();
Star [] star = new Star[100];
Asteroid uno = new Asteroid();
ArrayList <Asteroid> asteroids = new ArrayList <Asteroid>();
ArrayList <Bullet> bullets = new ArrayList <Bullet>();

public void setup() 
{
  size(500, 500);
  for (int i = 0; i < star.length; i++)
  {
    star[i] = new Star();
  }
  for (int i = 0; i < (Math.random() * 41) + 10; i++)
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
      ship.setShipHealth(ship.getShipHealth() - 2);
    }
    asteroids.get(i).show();
    asteroids.get(i).move();
    for (int j = 0; j < bullets.size(); j++)
    {
      if (dist((float)asteroids.get(i).getCenterX(), (float)asteroids.get(i).getCenterY(), (float)bullets.get(j).getCenterX(), (float)bullets.get(j).getCenterY()) < 20)
      {
        asteroids.remove(i);
        bullets.remove(j);
        break;
      }
    }
  }
  
  for (int i = 0; i < bullets.size(); i++)
  {   
      bullets.get(i).move();
      bullets.get(i).show();
      if (bullets.get(i).getCenterX() > 500 || bullets.get(i).getCenterX() < 0 || bullets.get(i).getCenterY() > 500 || bullets.get(i).getCenterY() < 0)
       {
         bullets.remove(i);
       }
  }
  
  if (ship.getShipHealth() <= 0)
  {
    textSize(24);
    fill(255);
    text("Game Over! Refresh to restart.", 75, 250);
    noLoop();
  }
  else if (asteroids.size() <= 0)
  {
    textSize(24);
    text("You Win! Refresh to Restart.", 90, 250);
    noLoop();
  }
  
  fill(255);
  textSize(14);
  text("Ship HP: " + ship.getShipHealth(), 10, 20); 
  text("Asteroids Left: " + asteroids.size(), 10, 40);
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
  else if (key == ' ')
  {
    bullets.add(new Bullet(ship));
  }
  else if (key == 'b')
  {
    int size = asteroids.size();
    for (int i = 0; i < size; i++)
    {
      asteroids.remove(0);
    }
  }
}
