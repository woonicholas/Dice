void setup()
{
	size(400,500);
	noLoop();
}

void draw()
{
	background(100,100,100);
	int totalNum=0;
	for (int xD = 0;xD<400;xD=xD+50)
	{
		
		for (int yD = 0;yD<400;yD=yD+50)
		{
			Die myDice = new Die(xD,yD);
			//myDice.roll(); <-- this code is already declared in the constructor
			myDice.show();
			totalNum = totalNum+myDice.myNum; 
			
		}
	}
text("Total: " + totalNum ,20,450);
//System.out.println(totalNum);
	
	
}

void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	//variable declarations here
	int myX, myY;
	int myNum;
	//int num;
	Die(int x, int y) //constructor
	{
		myX = x;
		myY= y;//variable initializations here
		roll();
	}
	void roll()
	{
		myNum = (int)(Math.random()*6)+1;//your code here
   
	}
	void show()
	{
		stroke(0);
		strokeWeight(1);
		fill(255);
		rect(myX,myY,50,50,10);//your code here 
		if (myNum == 1)
		{
			strokeWeight(10);
			stroke(255,0,0);
			point(myX+25,myY+25);
		}
		if (myNum == 2)
		{
			strokeWeight(8);
			stroke(0);
			point(myX+17,myY+25);
			point(myX+33,myY+25);
		}
		if (myNum == 3)
		{
			strokeWeight(8);
			stroke(0);
			point(myX+17,myY+31);
			point(myX+33,myY +31);
			point(myX+25,myY +17);
		}
		if (myNum == 4)
		{
			strokeWeight(8);
			stroke(0);
			for(int x4 =myX;x4<myX+30;x4=x4+17)
			{
				point(x4+16.5,myY+33);
				point(x4+16.5,myY+17);
			}
		}
		if (myNum == 5)
		{
			strokeWeight(8);
			stroke(0);
			for(int x5 =myX;x5<myX+40;x5=x5+21)
			{
				point(x5+15.5,myY+34);
				point(x5+15.5,myY+16);
			}
			point(myX+25.5,myY+25);
		}
		if (myNum ==6) 
		{
			strokeWeight(8);
			stroke(0);
			for(int y6=myY;y6<myY+40; y6=y6+14)
			{
				point(myX+15.5,y6+10);
				point(myX+36.5,y6+10);
			}
		}
	}
	
}
