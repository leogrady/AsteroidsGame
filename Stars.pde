class Stars 
{
  private int starX, starY, starColor;
  Stars(){
  	starX = (int)(Math.random()*500);
  	starY = (int)(Math.random()*500);
  	//starX = 250;
  	//starY = 250;
  	starColor = (int)(Math.random()*150)+100;
  }
  public void show(){
  	int y = (int)(Math.random()*3)+1;
  	fill(255,starColor, 255);
  	noStroke();
  	ellipse (starX,starY,y,y);

  }
}
