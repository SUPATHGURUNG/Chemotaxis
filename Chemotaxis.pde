OKAY [] yay = new OKAY[100];
void setup()
{
  size(1000, 500);
  frameRate(60);
  int i = 0;
  while (i < yay.length) {
    yay[i] = new OKAY();
    i++;
  }
}
void draw()
{
  background((int)(Math.random()*500));
  for (int i = 0; i < yay.length; i++)
  {
    yay[i].move();
    yay[i].dodge();
    yay[i].show();
  }
}
class OKAY {
  int myX, myY, myColor, mySize;
  OKAY()
  {
    myX = (int)(Math.random()*1000);
    myY = (int)(Math.random()*500);
    mySize = 50;
    myColor = color((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
  }
  void move() {
    myX = myX + (int)(Math.random()*5)-2;
    myY = myY + (int)(Math.random()*5)-2;
  }
  void dodge() {
    if (mouseX - myX <= 0 && dist(myX, myY, mouseX, mouseY) <= mySize/2 + 20) {
      myX = myX + (int)(Math.random()*10)-2; 
    }
  }
  void show() {
    fill(myColor);
    noStroke();
    ellipse(myX, myY, mySize, mySize);
    fill(myColor, myColor, myColor);
    ellipse(myX, myY, 30, 25);
    fill(myColor, myColor, myColor);
    ellipse(myX, myY, 20, 20);
  }
}
