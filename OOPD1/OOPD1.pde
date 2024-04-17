final color BLACK = #000000;
final color WHITE = #FFFFFF;
final color BLUE = #99FFEA;

int[] dotX = {40, 30, 60};
int[] dotY = {50, 100, 150};
int dotSize = 20;
int dotColor = BLUE;
int mirrorX = 140;

void setup () {
 smooth ();
 size(400,300);
 background(BLACK);
 
 int[] mirroredX = mirror(dotX, mirrorX);
 println (mirroredX);
 
 drawDots(dotX, dotY, dotColor);
 drawMirror(mirrorX);
 drawDots(mirroredX, dotY, dotColor);
}

int[] mirror(int[] xCoordinate, int xMirror) {
  int[] mirroredArray = new int[xCoordinate.length];
  for (int i = 0; i < xCoordinate.length; i++){
    mirroredArray[i] = xMirror + xMirror - xCoordinate[i];
  }
  return mirroredArray;
}

void drawDots(int[] xCoordinate, int[] yCoordinate, int dotColor) {
  for (int i = 0; i < xCoordinate.length; i++) {
    drawDot(xCoordinate[i], yCoordinate[i], dotSize, dotColor);
  }
}

void drawDot(int x, int y,int size, int dotColor) {
 noStroke();
 fill (dotColor);
 ellipse (x, y, size, size);
}

void drawMirror(int x) {
  int mirrorY = 0;
  stroke(WHITE);
  line(x, mirrorY, x, height);
}
