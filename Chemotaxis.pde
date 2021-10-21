Bacteria[] bacterium = new Bacteria[300]; 

void setup(){
  size(300,300);
  for(int i=0;i<=bacterium.length-1;i++){
  bacterium[i]= new Bacteria((int)(Math.random()*width),(int)(Math.random()*height),
  (int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
}
}

void draw(){
  background(255);
  for(int i=0;i<=bacterium.length-1;i++){
    bacterium[i].move();
    bacterium[i].show();
  }
}

class Bacteria{
  int xPos;
  int yPos;
  int bacColor;
  int bacSize;
  
  Bacteria(int x,int y, int r, int g, int b){
    xPos =x;
    yPos =y;
    bacColor = color(r,g,b);
    bacSize= 10;
  }
  void show(){
    fill(bacColor);
    ellipse(xPos,yPos,bacSize,bacSize);
  }
  void move(){
    xPos+=Math.random()*(10)-5;
    yPos+=Math.random()*10-5;
    if(xPos>width)
      xPos=0;
    if(xPos<0)
    xPos=width;
    if(yPos>height)
    yPos=0;
    if(yPos<0)
    yPos=height;
  }
}
