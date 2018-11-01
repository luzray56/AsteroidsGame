Spaceship andy = new Spaceship();
Star [] wu;
public void setup() 
{
  size(1000,1000);
  wu = new Star[100];
  for (int i=0; i<wu.length; i++)
  {
    wu[i]= new Star(); 
    wu[i].setX((int)(Math.random()*1000));
  	wu[i].getX();
  	wu[i].setY((int)(Math.random()*1000));
  	wu[i].getY();
  }
}
public void draw() 
{
  background(0);
  for (int i=0; i<wu.length; i++)
  {
  	wu[i].show();
  } 
  andy.show();
  andy.move();
}
public void keyPressed()
{
	if (key == 'w') {andy.accelerate(0.5);}
	if (key == 's') {andy.accelerate(-0.5);}
	if (key == 'd') {andy.turn(4);}
	if (key == 'a') {andy.turn(-4);}
	if (key == 'e') //hyperspace
	{
		andy.setX((int)(Math.random()*1000));
		andy.getX();
		andy.setY((int)(Math.random()*1000));
		andy.getY();
		andy.setDirectionX(0);
		andy.getDirectionX();
		andy.setDirectionY(0);
		andy.getDirectionY();
		andy.setPointDirection((int)(Math.random()*360));
		andy.getPointDirection();
	}
}

