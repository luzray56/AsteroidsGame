class Star
{
  private int myX, myY;
  public Star()
  {
  	myX = myY = 0;
  }
  public void setX(int x) {myX = x;}
  public int getX() {return myX;} 
  public void setY(int y) {myY = y;}
  public int getY() {return myY;}
  public void show()
  {
  	fill(255);
    stroke(255);
  	ellipse(myX, myY, 3, 3);
  }
}
