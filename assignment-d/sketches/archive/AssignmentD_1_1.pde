import ddf.minim.*;

Minim minim;
AudioInput in;

int state = 1;
float time = 0;


void setup() {
  size(960, 540, P3D);
  background(0);
  //fullScreen(P3D);
  smooth(100);
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

 if(state==1) {
 for(int i = 0; i < in.bufferSize() - 1; i++)
  {
    line(960 * noise(x / 1000, time), 270 + in.left.get(i)*150, i, 480 * noise(x / 100, time));
    x += 1;
  }
  }

  
  else if(state==2) {
  background(0);
  smooth(100);
  stroke(255,255);
  translate(height/2, width/2, -1000);
  rotateX(mouseY * 0.005);
  rotateY(mouseX * 0.005);
  fill(0);
  sphereDetail(mouseX / 30);
  sphere(400);
  }
}
  
void keyPressed() {
    if (key=='1') {
      state = 1;
    }
    else if (key=='2')  {
      state = 2;
    }
}