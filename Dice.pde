Die one;
Die two;
void setup()
{
	noLoop();
	size(3840, 2160);
}
void draw()
{
	background(97, 60, 242);
	for (int i = 0; i < 3840; i = i + 10) {
		for (int j = 0; j < 2160; j = j + 10) {
			one = new Die(0+i,0+j);
			two = new Die(10+i,10+j);
			one.roll();
			two.roll();
			one.show();
			two.show();
		}
	}
}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	int dieX, dieY, numDots;
	Die(int x, int y) //constructor
	{
		dieX = x;
		dieY = y;
	}
	void roll()
	{
		numDots = (int)((Math.random()*6)+1);
	}
	void show()
	{
		noStroke();
		fill(random(0,255),random(0,255),random(0,255));
		rect(dieX, dieY, 50/5, 50/5);
		int dotSize = 2;
		fill(random(0,255),random(0,255),random(0,255));
		if(numDots == 1 || numDots == 3 || numDots == 5)
		{
			ellipse(dieX+25/5,dieY+25/5,dotSize,dotSize);
		}
		if (numDots == 2 || numDots == 4 || numDots == 5 || numDots == 6) 
		{
			ellipse(dieX+15/5,dieY+15/5,dotSize,dotSize);
        	ellipse(dieX+35/5,dieY+35/5,dotSize,dotSize);

		}
		if (numDots == 3 || numDots == 4 || numDots == 5 || numDots == 6) 
		{
			ellipse(dieX+35/5,dieY+15/5,dotSize,dotSize);
        	ellipse(dieX+15/5,dieY+35/5,dotSize,dotSize);

		}
		if (numDots == 6) 
		{
			ellipse(dieX+15/5,dieY+25/5,dotSize,dotSize);
        	ellipse(dieX+35/5,dieY+25/5,dotSize,dotSize);
		}
	}
}