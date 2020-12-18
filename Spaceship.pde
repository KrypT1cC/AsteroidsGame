class Spaceship extends Floater
{
  private int shipHealth;
  public Spaceship()
  {
    corners = 4;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = -8;
    yCorners[0] = -8;
    xCorners[1] = 16;
    yCorners[1] = 0;
    xCorners[2] = -8;
    yCorners[2] = 8;
    xCorners[3] = 0;
    yCorners[3] = 0;
    myCenterX = myCenterY = 250;
    myXspeed = myYspeed = 0;
    myColor = color(255);
    myPointDirection = 0;
    shipHealth = 100;
  }
  
  public void EnterHyperspace()
  {
    myXspeed = 0;
    myYspeed = 0;
    myCenterX = (int)(Math.random() * 501);
    myCenterY = (int)(Math.random() * 501);
    myPointDirection = (int)(Math.random() * 361);
    myColor = color(255);  
  }
  
  public double getCenterX()
  {
    return myCenterX;
  }
  
  public double getCenterY()
  {
    return myCenterY;
  }
  public double getPointDirection()
  {
    return myPointDirection;
  }
  public int getShipHealth()
  {
    return shipHealth;
  }
  public void setShipHealth(int x)
  {
    shipHealth = x;
  }
}
