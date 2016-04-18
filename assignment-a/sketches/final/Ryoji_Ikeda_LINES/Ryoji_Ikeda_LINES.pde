void setup() {
  size(960, 540);
  background(255,255,255);
}

void draw() {
 noLoop();
for (int i = 0; i < 960; i++) {
  float r = random(50);
  stroke(0);
  strokeWeight(random(r/15));
  strokeCap(SQUARE);
  line(i, 270, i, -100+r);

}

translate(0,540);
scale(1,-1);
for (int i = 0; i < 960; i++) {
  float r = random(50);
  stroke(0);
    strokeCap(SQUARE);
  strokeWeight(random(r/15));
  //line(960, i, -100+r, i);
  line(i, 270, i, -100+r);
  
}

  
}