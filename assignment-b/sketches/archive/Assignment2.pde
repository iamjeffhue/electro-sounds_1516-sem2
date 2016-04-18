   
float time = 0;
    
void setup() {
  size(960, 540, P3D);
  background(255);
  //smooth(0);
}
    
void draw() {
  background(255);
  fill(random(255));
  float x = 0;
  while (x < width) {
    line(500  * noise(x / 100, time), x, 500 * noise(0.1 / 100, time), 500 * noise(x / 100, time));
    x += 1;
  }
  time += 0.013;
}