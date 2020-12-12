class Asteroid extends Floater
{
  private int rotationSpeed;
  private boolean isDestroyed;
  public Asteroid()
  {
    corners = 5;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = -8;
    yCorners[0] = -8;
    xCorners[1] = 4;
    yCorners[1] = 8;
    xCorners[2] = 16;
    yCorners[2] = 0;
    xCorners[3] = 4;
    yCorners[3] = -8;
    xCorners[4] = -8;
    yCorners[4] = -8;
    myCenterX = (int)(Math.random() * 501);
    myCenterY = (int)(Math.random() * 501);
    myXspeed = (int)(Math.random() * 4) - 2;
    myYspeed = (int)(Math.random() * 4) - 1;
    myColor = color(121);
    myPointDirection = (int)(Math.random() * 361);
    rotationSpeed = (int)(Math.random() * 5) - 2;
  }
  
  public void move()
  {
      super.move();
      myPointDirection += rotationSpeed;
  }
  
  public double getCenterX()
  {
    return myCenterX;
  }
  
  public double getCenterY()
  {
    return myCenterY;
  }
}
