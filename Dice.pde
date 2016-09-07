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
		num = num + (int)(Math.random()*4)+1;//your code here
	}
	void show()
	{
		stroke(0);
		strokeWeight(1);
		fill(255);
		rect(myX,myY,50,50,10);//your code here
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
		if (num == 3)
		{
			strokeWeight(8);
			stroke(0);
			point(myX+17,myY+29);
			point(myX+33,myY +29);
			point(myX+25,myY +19);
		}
		if (num == 4)
		{
			strokeWeight(8);
			stroke(0);
			for(int x4 =myX;x4<myX+30;x4=x4+17)
			{
				point(x4+16.5,myY+33);
				point(x4+16.5,myY+17);
			}
		}
		if (num == 5)
		{
			strokeWeight(8);
			stroke(0);
			for(int x4 =myX;x4<myX+40;x4=x4+20)
			{
				point(x4+16.5,myY+33);
				point(x4+16.5,myY+17);
			}
		}
	}
}
