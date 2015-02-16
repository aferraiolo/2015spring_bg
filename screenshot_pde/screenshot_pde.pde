//screenshot

//sketch name
String sketchName;

//sketch window
int w;
int h;

// color
int r;
int g;
int b;
int a;

//circle
int x;
int y;
int rd;//radius

void setup(){
  
  //sketch window
  w = 800;
  h = 600;
  
  //sketch name
  sketchName = "screenshot";
  
  //background 
  r = 200;
  g = 0;
  b = 200;
  a = 255;
  
  //circle
  x = w/2;
  y = h/2;
  rd = 60;
  
  size(w, h);
  background(r,g,b,a);
  noStroke();
}

//screenshot
void keyPressed(){
  if(key =='`'){
    saveFrame(sketchName + "_" + frameCount + ".png");
  }
}


void draw(){
  background (r,g,b,a);
  
  //draw a circle
  fill(r*2,g,b/2,a);
  ellipse(x,y,rd*2,rd*2);
}
