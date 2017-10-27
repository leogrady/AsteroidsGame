Spaceship test;
Stars sky[] = new Stars[50];

public void setup() 
{
  size (500,500);
  test = new Spaceship();
  for (int i=0; i < sky.length; i++){ sky[i] = new Stars();}
}
public void draw() 
{
 background(0);	
 for (int i =0; i <sky.length; i++){sky[i].show();}
 test.show();
 test.move();
 
  
}

 void keyPressed(){
 	if (key == CODED){
 		if (keyCode == UP){
 		test.accelerate(0.2);
 		}
 	if (keyCode == RIGHT){
 		test.turn(15);
 		}
 	if (keyCode == LEFT){
 		test.turn(-15);
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