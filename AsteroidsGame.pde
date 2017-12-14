Spaceship test = new Spaceship();
Stars sky[] = new Stars[100];
ArrayList <Asteroid> theList;
int healthBar = 80;
ArrayList <Bullet> bangList;
Bullet bang = new Bullet(test);

public void setup() 
{
  size (700,700);
  for (int i=0; i < sky.length; i++){ 
  	 sky[i] = new Stars();
  	}
  theList = new ArrayList <Asteroid>();
  bangList = new ArrayList <Bullet>();
  for (int i = 0; i < 20; i++){
 	theList.add (new Asteroid());
  }
}

void keyPressed()
{
    if (key == CODED)
 	{
 		if (keyCode == UP){
 		test.accelerate(0.2);
		
 		}
 	    if (keyCode == RIGHT)
 	    {
 		test.turn(30);
 		}
 	    if (keyCode == LEFT)
 	    {
 		test.turn(-30);
 		}
 	    if (keyCode == SHIFT)
 	    {
 		test.setDirectionX(0);
 		test.setDirectionY(0);
 		test.setX((int)(Math.random()*500));
 		test.setY((int)(Math.random()*500));
 		test.setPointDirection((int)(Math.random()*360));
 		}
 		if (keyCode == DOWN)
 		{
			bangList.add(0,new Bullet (test));
		}
 	}
}

public void draw() 
{
 background(0);	
 for (int i =0; i <sky.length; i++){
 	sky[i].show();
 }

 for (int j = 0; j< theList.size(); j++){
 	theList.get(j).show();
 	theList.get(j).move();
 }

 test.show();
 test.move();
 
 for (int l = 0; l < bangList.size(); l++){
 	bangList.get(l).show();
	bangList.get(l).move();
 }

for (int k = 0; k < theList.size(); k++){
	if((bangList.size() > 0) &&(dist(bangList.get(0).getX(), bangList.get(0).getY(), theList.get(k).getX(), theList.get(k).getY())<30))
		theList.remove(k);
	
}
 if (theList.size()==0){
		textSize(50);
 	    text ("You Win",250,350);
 }

 stroke(255);
 fill(0);
 rect (3,3,82,20);
 noStroke();
 
 int findColorXRight = test.getX() + 15;
 int findColorXLeft = test.getX() - 15;
 int findColorYDown = test.getY() + 15;
 int findColorYUp = test.getY() - 15;
 
  if ((get(findColorXRight, test.getY()) == color(100)) || (get(findColorXLeft, test.getY()) == color (100)) || (get(findColorYUp, test.getX()) == color (100)) || (get(findColorYDown, test.getX()) == color (100)))
 {
 	healthBar = healthBar - 1;
 }

 fill(0,255,0);
 rect(4,4,healthBar,18);

 if (healthBar <= 0)
 {
 	fill (255,0,0);
 	healthBar = 0;
 	test.setDirectionX(0);
 	test.setDirectionY(0);
 	for (int i=0; i < theList.size(); i++)
 	{
 		theList.get(i).setTurnSpeed(0);
 		theList.get(i).setDirectionY(0);
 		theList.get(i).setDirectionX(0);
 	}
 	textSize(50);
 	text ("You Lose",250,350);
 }
}

