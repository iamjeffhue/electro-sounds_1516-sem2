import ddf.minim.*;

Minim minim;
AudioInput in;

int state = 2;
float time = 0;
float jeff = 4 ;
float speedo = 0.01;


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
  float y = 2;
  // time += 0.002 + (in.left.get(1) *0.3);
  //stroke(80+(in.left.get(1)*5000));

  if (state==1) {
    //WebLines
    time += 0.002 + (in.left.get(1) *0.3);
    stroke(80+(in.left.get(1)*5000));
    for (int i = 0; i < in.bufferSize() - 1; i++)
    {
      //line (noise(x,0,width,height );
      //line (width * noise(x / 1000, time), noise(time, x/1000)+in.left.get(i)*150, i*time, height * noise(time, x/100));
      line(width * noise(x / 1000, time), 270 + in.left.get(i)*200, i, 480 * noise(x / 100, time));
      x += 1;
    }
  } else if (state==2) {
    time += 0.002 + (in.left.get(1) *0.3);
    stroke(80+(in.left.get(1)*50));
    for (int i = 0; i < in.bufferSize() - 1; i++)
    {

      stroke(255, 255);
      //translate((noise(x, time)*(in.left.get(i)/100))+width*2, (noise(y, time)*0.001), -1000);
      translate(width/2, (in.left.get(i)*5));
      //rotateX((noise(x , time)*(in.left.get(i)*0.01)));
      //rotateY(2);
      rotateY(frameCount*0.01);
      // rotateX(frameCount*0.01);
      fill(0);
      //sphereDetail(mouseX / 200);
      jeff -= speedo;
      sphereDetail(int(jeff)); 
      if ( jeff < 1) {
        jeff = 4;
      }//////
      sphere(50);

      x += 1;
      y += 2;
    }
  } else if (state==3) {
        time += 0.002 + (in.left.get(1) *0.3);
    stroke(80+(in.left.get(1)*50));
    for (int i = 0; i < in.bufferSize() - 1; i++)
    {

      stroke(255, 255);
      //translate((noise(x, time)*(in.left.get(i)/100))+width*2, (noise(y, time)*0.001), -1000);
      translate(width/2+(in.left.get(i)*5), height/2);
      //rotateX((noise(x , time)*(in.left.get(i)*0.01)));
      //rotateY(2);
      rotateY(frameCount*0.01);
      // rotateX(frameCount*0.01);
      fill(0);
      //sphereDetail(mouseX / 200);

      sphereDetail(mouseX / 170); 

      sphere(200);

      x += 1;
      y += 2;
    }
  }
}

void keyPressed() {
  if (key=='1') {
    state = 1;
  } else if (key=='2') {
    state = 2;
  } else if (key=='3') {
    state = 3;
  }
}