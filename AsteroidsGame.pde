Spaceship test;
Stars sky[] = new Stars[50];
ArrayList <Asteroid> theList;
int healthBar = 80;

public void setup() 
{
  size (500,500);
  test = new Spaceship();
  for (int i=0; i < sky.length; i++){ sky[i] = new Stars();}
  theList = new ArrayList <Asteroid>();
 for (int i = 0; i < 6; i++){
 	theList.add (new Asteroid());
 }
  //for (int j = 0; j< boulder.length; j++){boulder[j] = new Asteroid();}
 }

 public void draw() 
 {
 background(0);	
 for (int i =0; i <sky.length; i++){sky[i].show();}
 for (int j = 0; j< theList.size(); j++){
 	theList.get(j).show();
 	theList.get(j).move();
 }

 test.show();
 test.move();


for (int k = 0; k < theList.size(); k++){
	if (dist(test.getX(), test.getY(), theList.get(k).getX(), theList.get(k).getY())<30)
		theList.remove(k);
}



 /*
 CODE WITH HEALTHBAR AND EVERYTHING
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
 	text ("You Lose",150,200);
 }*/
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
 	}
}