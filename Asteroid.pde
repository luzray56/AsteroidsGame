class Asteroid extends Floater
{
	private int myRotSpeed;
	public Asteroid()
	{
		corners = 13;
		int[] xS = {0,10,15,25,25,20,10,0,-10,-20,-15,-15,0};
		int[] yS = {-15,-20,-10,-15,0,10,15,10,10,5,-5,-15,-15};
		xCorners = xS;
		yCorners = yS;
		myColor = 210;
		myCenterX = ((int)(Math.random()*1000));
		myCenterY = ((int)(Math.random()*1000));
		myDirectionX = ((double)(Math.random()*3));
		myDirectionY = ((double)(Math.random()*3));
		myPointDirection = ((int)(Math.random()*360));
		if (Math.random()<.5) {myRotSpeed = (int)(Math.random()*3)-3;}
		else {myRotSpeed = (int)(Math.random()*3);}
	}
	public void setX(int x) {myCenterX = x;}
	public int getX() {return (int)myCenterX;}
	public void setY(int y) {myCenterY = y;}  
  	public int getY() {return (int)myCenterY;}   
 	public void setDirectionX(double x) {myDirectionX = x;}   
	public double getDirectionX() {return myDirectionX;}
	public void setDirectionY(double y) {myDirectionY = y;}
	public double getDirectionY() {return myDirectionY;}   
  	public void setPointDirection(int degrees) {myPointDirection = degrees;}   
	public double getPointDirection() {return myPointDirection;}
	public void setRotSpeed(int x) {myRotSpeed = x;}
	public int getRotSpeed() {return myRotSpeed;}
}