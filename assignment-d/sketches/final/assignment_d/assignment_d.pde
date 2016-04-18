import codeanticode.syphon.*;
SyphonServer server;

import ddf.minim.*;
import peasy.*;



PeasyCam cam;

Minim minim;
AudioInput in;

int state = 1;
float time = 0;
float jeff = 4;
float speedo = 0.01;

void settings() {
    size(1280, 720, P3D);
     PJOGL.profile=1;
}
void setup() {
//  size(1280, 720, P3D);
  
  server = new SyphonServer(this, "Processing Syphon");
    
    //PJOGL.profile=1;
 
  //fullScreen(P3D);
  smooth(8);
  minim = new Minim(this);
  minim.debugOn();
  in = minim.getLineIn(Minim.STEREO, width);
  cam = new PeasyCam(this, 800);
  cam.setMinimumDistance(0);
  cam.setMaximumDistance(1600);

}

void draw() {
  background(0);
    server.sendScreen();
  fill(255);
  float x = 0;
  float y = 2;
  // time += 0.002 + (in.left.get(1) *0.3);
  //stroke(80+(in.left.get(1)*5000));

  rotateX(-.3);
  rotateY(-.3);
  //fill(255, 0, 0);
  //box(10);



  if (state==1) {
    //WebLines
      //camera(map(1500, 0, height, 0, 0), 300, 220.0, // eyeX, eyeY, eyeZ
      // 0.0, 0.0, 0.0, // centerX, centerY, centerZ
      //0.0, 1.0, 0.0); // upX, upY, upZ
        
    camera();
    camera(900, 280, -800, 700.0, height/2, 0.0, 
      0.0, 1.0, 0.0);
    println(mouseX, mouseY);

    time += 0.002 + (in.left.get(1) *0.3);
    stroke(80+(in.left.get(1)*800));
    for (int i = 0; i < in.bufferSize() - 1; i++)
    {

     line(width * noise(x / 1000, time), height/2 + in.left.get(i), i, width/2 * noise(x / 100, time));
   
      //line(width * noise(x / 1000, time), 270 + in.left.get(i)/200, i, 480 * noise(x / 100, time), 10 * noise(x / 1000, time), i);

      //line(width * noise(x / 1000, time), 270 + in.left.get(i)*200, height * noise(x / 1000, time), i, 480 * noise(x / 100, time), 250 * noise(x / 100, time));
      x += 1;
    }
  } else if (state==2) {
    time += 0.002 + (in.left.get(1) *0.3);
    stroke(80+(in.left.get(1)*50));
    for (int i = 0; i < in.bufferSize() - 1; i++)
    {

      stroke(255, 255);
      //translate((noise(x, time)*(in.left.get(i)/100))+width*2, (noise(y, time)*0.001), -1000);
      translate(width/2, (in.left.get(i)*1));
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
      sphere(20);

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
      translate(width/2, height/2);

      rotateY(frameCount*0.01);
      // rotateX(frameCount*0.01);
      fill(0);
      sphereDetail(mouseX / 220); 

      sphere(200);

    }
  }
   else if (state==4) {
    //time += 0.002 + (in.left.get(1) *0.3); 
    //stroke(80+(in.left.get(1)*1000));
    
    stroke(200);
    //for (int i = 0; i < in.bufferSize() - 1; i++)
    background(0);
    {
    camera();
    camera(height, 150, 400, width/2, height/2, height/2.0, 
      0.0, 1.0, 0.0);
    println(mouseX, mouseY);
      //stroke(0);
      //translate((noise(x, time)*(in.left.get(i)/100))+width*2, (noise(y, time)*0.001), -1000);
      translate(width/2, height/2);
    
      rotateY(frameCount*0.01);
      // rotateX(frameCount*0.01);
      fill(0);
      sphereDetail(30); 

      sphere(500);
    }
   }  else if (state==5) {
    //time += 0.002 + (in.left.get(1) *0.3);
    stroke(80+(in.left.get(1)*1000));
    //for (int i = 0; i < in.bufferSize() - 1; i++)
    background(255); 
    {
    camera();
    camera(height, 150, 400, width/2, height/2, height/2, 
      0.0, 1.0, 0.0);
    println(mouseX, mouseY);
      //stroke(0);
      //translate((noise(x, time)*(in.left.get(i)/100))+width*2, (noise(y, time)*0.001), -1000);
      translate(width/2, height/2);
    
      rotateY(-frameCount*0.03);
      // rotateX(frameCount*0.01);
      fill(255);
      // star(0, 0, 5, 70, 3);
      sphereDetail(30); 

      sphere(500);
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
  } else if (key=='4') {
    state = 4;
  } else if (key=='5') {
    state = 5;
  } else if (key=='6') {
    state = 6;
  } else if (key=='7') {
    state = 7;
  }
}