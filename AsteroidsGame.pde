Spaceship andy = new Spaceship();
ArrayList <Asteroid> wuford = new ArrayList <Asteroid>();
Star [] wu;
boolean aPressed = false;
boolean sPressed = false;
boolean dPressed = false;
boolean wPressed = false;
public void setup() 
{
  size(1000,1000);
  wu = new Star[200];
  for (int i=0; i<wu.length; i++)
  {
    wu[i] = new Star(); 
    wu[i].setX((int)(Math.random()*1000));
  	wu[i].getX();
  	wu[i].setY((int)(Math.random()*1000));
  	wu[i].getY();
  }
  for (int i=0; i<13; i++)
  {
  	wuford.add(new Asteroid());
  }  
}
public void draw() 
{
  background(0);
  for (int i=0; i<wu.length; i++)
  {
  	wu[i].show();
  } 
  for (int i = 0; i < wuford.size(); i++)
  {
	wuford.get(i).show();
	wuford.get(i).move();
	wuford.get(i).turn(wuford.get(i).getRotSpeed());
	float d = dist(andy.getX(), andy.getY(), wuford.get(i).getX(), wuford.get(i).getY());
	if (d < 20)
		wuford.remove(i);
  } 
  if (wPressed == true) {andy.accelerate(0.08);}
  if (sPressed == true) {andy.accelerate(-0.08);}
  if (dPressed == true) {andy.turn(3);}
  if (aPressed == true) {andy.turn(-3);}
  if (wPressed == false) {andy.accelerate(0);}
  if (sPressed == false) {andy.accelerate(0);}
  andy.show();
  andy.move();
}
public void keyPressed()
{
	if (key == 'w') {wPressed = true;}
	if (key == 's') {sPressed = true;}
	if (key == 'd') {dPressed = true;}
	if (key == 'a') {aPressed = true;}
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
public void keyReleased()
{
	if (key == 'w') {wPressed = false;}
	if (key == 's') {sPressed = false;}
	if (key == 'd') {dPressed = false;}
	if (key == 'a') {aPressed = false;}
}