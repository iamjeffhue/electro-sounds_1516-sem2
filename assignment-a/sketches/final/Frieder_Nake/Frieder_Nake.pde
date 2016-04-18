float x1, y1, x2, y2;

void setup () { 
  size (960, 540); 
  background (255);

  x2 = width*0.75;
  y2 = height*0.75;
}

void draw () {
  for (int i = 0; i < 40; i++){
  noLoop();
  stroke(0);
  strokeWeight(2);
  strokeCap(SQUARE);
  x1  = random(80, width-80); //length of line x
  y1 = random(80, height-80);  //length of line y

  line (x1, y1, x2, y2);
  x2 = x1;
  y2 = y1;
 }

}

  //while (keyPressed);  
  {     
   // save("example1.jpg");
  }