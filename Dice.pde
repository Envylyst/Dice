void setup()
{
	size(500,500);
	noLoop();
}
void draw()
{
    for(int y = 7 ; y <= 500 ; y+=62)
    {
    	for(int x = 7 ; x<=500 ; x+=62)
    	{
    		Die bob = new Die(x,y);
    		bob.show();
    	}
    }
}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	int myX, myY, dotX, dotY, roller;
	Die(int x, int y)
	{
		myX = x;
    	myY = y;
    	dotX = x;
    	dotY = y;
	}
	void roll()
	{
		int roller = (int)((Math.random()*6)+1);
	}
	void show()
	{
		rect(myX,myY,50,50);
		if(roller == 1)
		{
			ellipse(dotX+25,dotY+25,5,5);
		}
		
	}
}	
