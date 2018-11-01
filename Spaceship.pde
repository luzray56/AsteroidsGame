class Spaceship extends Floater  
{   
	public Spaceship()
	{
		corners = 3;
		//int[] xS = {0,30,30,40,50,50,30,40,10,20,-20,-10,-40,-30,-50,-50,-40,-30,-30,0};
		//int[] yS = {-80,-50,10,-10,10,30,30,40,40,30,30,40,40,30,30,10,-10,10,-50,-80};
		int[] xS = {60,-20,-20};
		int[] yS = {0,20,-20};
		xCorners = xS;
		yCorners = yS;
		myColor = 255;
		myCenterX = myCenterY = 500;
		myDirectionX = myDirectionY = 0;
		myPointDirection = 0;
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

}
