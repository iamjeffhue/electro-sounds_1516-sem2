import ddf.minim.*;

Minim minim;
AudioInput in;

float time = 0;
    
void setup() {
  size(960, 540, P3D);
  background(0);
  //fullScreen(P3D);
  //smooth(0);
  minim = new Minim(this);
  minim.debugOn();
  in = minim.getLineIn(Minim.STEREO, width);
}
    
void draw() {
  background(0);
  fill(255);
  float x = 0;
  time += 0.002 + (in.left.get(1) *0.3);
  stroke(80+(in.left.get(1)*5000));

 for(int i = 0; i < in.bufferSize() - 1; i++)
  {
    line(960 * noise(x / 1000, time), 270 + in.left.get(i)*150, i, 480 * noise(x / 100, time));
    x += 1;
  }
 //saveFrame("frames/####.png");
}