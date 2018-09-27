Die bob;

void setup()
{
	size(500,500);
	noLoop();
}
void draw()
{
    background(0);
    bob = new Die(50,50);
    bob.show();
}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	//variable declarations here
	
	Die(int x, int y) //constructor
	{
		//variable initializations here
	}
	void roll()
	{
		//your code here
	}
	void show()
	{
		//your code here
	}
}
