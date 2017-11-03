class Asteroid extends Floater

{   private int aSize = (int)(Math.random()*4+2);
	Asteroid(){
		corners = 9;
		xCorners = new int [corners];
		yCorners = new int [corners];
		xCorners[0] = 3*aSize;
		yCorners[0] = -8*aSize;
		xCorners[1] = 9*aSize;
		yCorners[1] = -5*aSize;
		xCorners[2] = 11*aSize;
		yCorners[2] = 0*aSize;
		xCorners[3] = 7*aSize;
		yCorners[3] = 3*aSize;
		xCorners[4] = 2*aSize;
		yCorners[4] = 2*aSize;
		xCorners[5] = -1*aSize;
		yCorners[5] = 4*aSize;
		xCorners[6] = -5*aSize;
		yCorners[6] =  1*aSize;
		xCorners[7] = -7*aSize;
		yCorners[7] = -4*aSize;
		xCorners[8] = -2*aSize;
		yCorners[8] =  -5*aSize;
		myColor = 100;
		myCenterX = (int)(Math.random()*500);
		myCenterY = (int)(Math.random()*500);
		myDirectionX = (int)(Math.random()*3)-1;
		myDirectionY = (int)(Math.random()*3)-1;
		myPointDirection = 0;
		
	}
	private double TurnSpeed  = (int)(Math.random()*5-2);
	public void move ()   
  {  
  	myPointDirection = myPointDirection+ TurnSpeed; 
  	super.move();
  	
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
    public void setTurnSpeed(int a) {TurnSpeed = a;}
    public double getTurnSpeed() {return TurnSpeed;}


}