int sum = 0;
int num;
void setup()
{
  size(500,600);
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
        sum = sum + bob.roller;
      }
    }
    rect(140,515,210,50);
    textSize(25);
    fill(0);
    text("Your total is "+ sum, 150, 550);
}
void mousePressed()
{
  redraw();
  sum = 0;
}
class Die //models one single dice cube
{
  int myX, myY, roller;
  Die(int x, int y)
  {
    myX = x;
    myY = y;
    roll();
  }
  
  void roll()
  {
    roller = (int)(Math.random()*6)+1;
  }
  void show()
   {
    fill(255);
    rect(myX,myY,50,50);
    
    if(roller == 1)
    {
      ellipse(myX+25,myY+25,5,5);
      num = num+1;
    }
    if(roller == 2)
    {
      ellipse(myX+15, myY+25 ,5, 5);
      ellipse(myX+35, myY+25, 5, 5);
      num = num+2;
    }
    if (roller == 3)
    {
      ellipse(myX+10, myY+25 ,5, 5);
      ellipse(myX+25, myY+25, 5, 5);
      ellipse(myX+40, myY+25, 5, 5);
      num = num+3;
    }
    if (roller == 4)
    {
      ellipse(myX+15, myY+15 ,5, 5);
      ellipse(myX+15, myY+35, 5, 5);
      ellipse(myX+35, myY+15, 5, 5);
      ellipse(myX+35, myY+35, 5, 5);
      num = num+4;
    }
    if (roller == 5)
    {
      ellipse(myX+15, myY+15 ,5, 5);
      ellipse(myX+15, myY+35, 5, 5);
      ellipse(myX+35, myY+15, 5, 5);
      ellipse(myX+35, myY+35, 5, 5);
      ellipse(myX+25, myY+25, 5, 5);
      num = num+5;
    }
    if (roller == 6)
    {
      ellipse(myX+10, myY+15 ,5, 5);
      ellipse(myX+10, myY+35, 5, 5);
      ellipse(myX+40, myY+15, 5, 5);
      ellipse(myX+40, myY+35, 5, 5);
      ellipse(myX+25, myY+15, 5, 5);
      ellipse(myX+25, myY+35, 5, 5);
      num = num+6;
    }

  }
}  
