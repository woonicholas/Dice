void setup()
{
	size(400,400);
	noLoop();
}
void draw()
{
	background(100,100,100);
	Die myDice = new Die(200,200);
	myDice.roll();
	myDice.show();
}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	//variable declarations here
	int myX, myY;
	int num=0;
	Die(int x, int y) //constructor
	{
		myX = x;
		myY= y;//variable initializations here
	}
	void roll()
	{
		num = num + (int)(Math.random()*3);//your code here
	}
	void show()
	{
		stroke(0);
		strokeWeight(1);
		fill(255);
		rect(myX,myY,50,50,30);//your code here
		if (num == 1)
		{
			strokeWeight(10);
			stroke(255,0,0);
			point(myX+25,myY+25);
		}
		if (num == 2)
		{
			strokeWeight(8);
			stroke(0);
			point(myX+17,myY+25);
			point(myX+33,myY+25);
		}
	}
}
