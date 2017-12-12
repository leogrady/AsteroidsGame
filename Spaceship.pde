class Spaceship extends Floater
{   
	Spaceship(){
		corners = 7;
		xCorners = new int [corners];
		yCorners = new int [corners];
		xCorners[0] = 14;
		yCorners[0] =  0;
		xCorners[1] = -2;
		yCorners[1] = -12;
		xCorners[2] = -14;
		yCorners[2] = -12;
		xCorners[3] = -10;
		yCorners[3] = -10;
		xCorners[4] = -10;
		yCorners[4] =  10;
		xCorners[5] = -14;
		yCorners[5] =  12;
		xCorners[6] = -2;
		yCorners[6] =  12;
		myColor = 255;
		myCenterX = myCenterY = 350;
		myDirectionX = 0;
		myDirectionY = 0;
		myPointDirection = 0;
	}
	public void show ()  //Draws the floater at the current position  
  {             
    fill(myColor);   
    stroke(myColor);    
    
    translate((float)myCenterX, (float)myCenterY);

    float dRadians = (float)(myPointDirection*(Math.PI/180));
    
    rotate(dRadians);
    
    beginShape();
    for (int nI = 0; nI < corners; nI++)
    {
      vertex(xCorners[nI], yCorners[nI]);
    }
    endShape(CLOSE);

    if ((keyPressed == true)&&(keyCode == UP)){
    	strokeWeight(3);
    	stroke(242,81,37);
    	line(-20,0,-34,0);
    	line (-24,-8,-38,-8);
    	line (-24,8,-38,8);
    	stroke(255);
    	strokeWeight(1);
    }
    rotate(-1*dRadians);
    translate(-1*(float)myCenterX, -1*(float)myCenterY);
  }
    public void setX (int x){myCenterX = x;}
    public int getX() { return (int) myCenterX;}
    public void setY (int y){myCenterY = y;}
    public int getY() { return (int) myCenterY;}
    public void setDirectionX (double x) {myDirectionX = x;}
    public double getDirectionX() { return myDirectionX;}
    public void setDirectionY (double y) {myDirectionY = y;}
    public double getDirectionY() { return myDirectionY;}
    public void setPointDirection(int degrees) {myPointDirection = degrees;}
    public double getPointDirection() {return myPointDirection;}


}
