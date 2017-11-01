Spaceship test;
Stars sky[] = new Stars[50];
Asteroid boulder[] = new Asteroid [4];

public void setup() 
{
  size (500,500);
  test = new Spaceship();
  for (int i=0; i < sky.length; i++){ sky[i] = new Stars();}
  for (int j = 0; j< boulder.length; j++){boulder[j] = new Asteroid();}
}

public void draw() 
{
 background(0);	
 for (int i =0; i <sky.length; i++){sky[i].show();}
 for (int j = 0; j<boulder.length; j++){
 	boulder[j].show();
 	boulder[j].move();
 }
 test.show();
 test.move();
 int findColorX = test.getX() + 15;
 if ((get(findColorX, test.getY()) == color(100,100,100) ))
 {
 	fill (255,0,0);
 	test.setDirectionX(0);
 	test.setDirectionY(0);
 	for (int i=0; i <boulder.length; i++){
 		boulder[i].setTurnSpeed(0);
 	}
 	textSize(50);
 	text ("You Lose",150,200);

 }

 
  
}

 void keyPressed(){
 	if (key == CODED){
 		if (keyCode == UP){
 		test.accelerate(0.2);
 		}
 	if (keyCode == RIGHT){
 		test.turn(30);
 		}
 	if (keyCode == LEFT){
 		test.turn(-30);
 		}
 	if (keyCode == SHIFT){
 		test.setDirectionX(0);
 		test.setDirectionY(0);
 		test.setX((int)(Math.random()*500));
 		test.setY((int)(Math.random()*500));
 		test.setPointDirection((int)(Math.random()*360));
 		}
 	}

 }