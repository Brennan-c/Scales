void setup() {
  size(600, 600);

}

void draw() {
  int r = 0;
  int g = 0;
  int b = 0;
  for (int y = 0; y<650; y = y + 30)
    for (int x = 0; x<626; x = x + 25) {
      //scales(x,y);
      if (x%2 == 0) {

        scales(x, y, r, g, b);

      } else {
        r=r+1;
        g=g+1;
        b=b+1;
        scales(x, y+15, r, g, b);
      }
    }
}
void scales(int x, int y, int r, int g, int b) {
  
  //outside ellipses
  fill(150, 225, 225);
  ellipse(x, y, 30, 50);
  fill((r*3)/2,255 - (g*2)/3,255 -b*2);
  ellipse(x, y, 20, 40);
  fill((r*3)/2,255 - (g*2)/3,255 -b*2);
  ellipse(x, y, 10, 30);
  
  // inside triangles
  fill(255, 255, 255);
  triangle(x, y-14, x - 5, y - 2, x + 5, y - 2);

  triangle(x, y - 7, x - 5, y +4, x + 5, y +4);

  triangle(x, y, x - 5, y +10, x + 5, y +10);
}
