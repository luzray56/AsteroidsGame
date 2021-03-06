class Bullet extends Floater
{
	Bullet(Spaceship andy)
	{
		myCenterX = andy.getX();
		myCenterY = andy.getY();
		myPointDirection = andy.getPointDirection();
		double dRadians = myPointDirection * (Math.PI/180);
		myDirectionX = 5 * Math.cos(dRadians) + andy.getDirectionX();
		myDirectionY = 5 * Math.sin(dRadians) + andy.getDirectionY();
	}
	public void show()
	{
		fill(20,98,224);
		stroke(20,98,224);
		ellipse((float)myCenterX, (float)myCenterY, 3, 3);
	}
	public void move ()   //move the floater in the current direction of travel
  	{         
    	myCenterX += myDirectionX;    
    	myCenterY += myDirectionY;     
  	}   
	public void setX (int x) {myCenterX = x;}
	public int getX() {return (int)myCenterX;}
	public void setY(int y) {myCenterY = y;}
	public int getY() {return (int)myCenterY;}
	public void setDirectionX(double x) {myDirectionX = x;}  
	public double getDirectionX() {return myDirectionX;}
	public void setDirectionY(double y) {myDirectionY = y;}  
	public double getDirectionY() {return myDirectionY;}  
	public void setPointDirection(int degrees) {myPointDirection = degrees;} 
	public double getPointDirection() {return myPointDirection;}
}