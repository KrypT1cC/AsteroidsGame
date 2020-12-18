class Bullet extends Floater
{
   public Bullet(Spaceship theShip)
   {
     myCenterX = theShip.getCenterX();
     myCenterY = theShip.getCenterY();
     myPointDirection = theShip.getPointDirection();
     accelerate(10);
   }
   public void show()
   {
     fill(255);
     ellipse((float)myCenterX, (float)myCenterY, 5, 5);
   }
   
   public void move()
   {
       myCenterX += myXspeed;    
       myCenterY += myYspeed;
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
