class Bullet extends Floater
{
	Bullet (Spaceship theShip){
		myCenterX = test.getX() ;
		myCenterY = test.getY() ;
	    myPointDirection = theShip.getPointDirection();
		double dRadians =myPointDirection*(Math.PI/180);
		myDirectionX =  5 * Math.cos(dRadians) + theShip.getDirectionX();
		myDirectionY =  5 * Math.sin(dRadians) + theShip.getDirectionY();
		myColor = color(255,0,0);
		corners = 1;
		xCorners = new int [corners];
		yCorners = new int [corners];
		xCorners[0] =  0;
		yCorners[0] =  0;
	}

    public void move ()   //move the floater in the current direction of travel
    {      
        myCenterX += myDirectionX;    
    	myCenterY += myDirectionY; 
    } 

    public void show ()  //Draws the floater at the current position  
    {
                
        fill(myColor);   
        stroke(myColor);  
		translate((float)myCenterX, (float)myCenterY);
    	float dRadians = (float)(myPointDirection*(Math.PI/180));
    	rotate(dRadians);
    	ellipse(0,0,17,5);
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