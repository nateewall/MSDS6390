////load images
//PImage img;

//void setup() {
//  img = loadImage("gray_head.jpeg");
//  img.resize(int(img.width*.5), int(img.height*.5));
//  size(img.width, img.height);
//  background(img);
//}


////pixel array 
//void setup(){
//  noStroke();
//  size(1200, 800);
//  int inset = 300;
//  for (int i= 0; i<200; i++){
//    fill(random(255), random(255), random(255), random(255));
//    rect(random(inset, width-inset), random(inset, height-inset), 50,50);
//  }
//  loadPixels();
//  for (int i= 0; i<pixels.length; i++){
//    pixels[i] = color(random(255), random(255), random(255));
//  }
//  updatePixels();
//}

//PImage img;
//void setup(){
//  size(600,800);
//  img = loadImage("Nwall_SelfPortrait.png");
//  image(img,0,0);
  
//  loadPixels();
//  for (int i=0; i< pixels.length; i++){
//    float r = red(pixels[i]);
//    float g = green(pixels[i]);
//    float b = blue(pixels[i]);
//    r *= .5;
//    b *= .5;
//    g *= .5;
//    pixels[i] = color(r,g,b);
//  }
//  updatePixels();
//}

//PImage img;
//void setup(){
//  size(600,800);
//  img = loadImage("Nwall_SelfPortrait.png");
//  image(img,0,0);
  
//  loadPixels();
//  for (int i=0; i< 5000; i++){
//    pixels[int(random(pixels.length))] = color(0);
//  }
//  img.updatePixels();
  
//  image(img, width/2, 0);
//}


//int cols = 20;
//int rows = 20;
//int[][] vals = new int[cols][rows];

//void setup(){
//  size(400,400);
//  background(0,200,200);
//  int colSpan = width/cols;
//  int rowSpan = height/rows;
//  for (int i = 0; i< vals.length; i++){
//    for (int j = 0 ; j<vals[i].length; j++){
//      rect(colSpan*i, rowSpan*j, colSpan, rowSpan);
//    }
//  }
//}

//create states
int[][] states = {
  {0,0,0},
  {0,0,1},
  {0,1,0},
  {0,1,1},
  {1,0,0},
  {1,0,1},
  {1,1,0},
  {1,1,1}
};

int[] rules = {0,1,1,1,1,1,1,0};

void setup(){
  size(800,800);
  background(255);
  
  //initalize source bits
  int[][] srcBits = new int[height][width];
  for(int i=0; i<height; i++){
    for(int j=0; j<height; j++){
      if (i==height - 1 && j == width/2){
        srcBits[i][j] = 1;
      } else {
        srcBits[i][j] = 0;
      }
    }
  }

// update srcBits based on rules
  for(int i = srcBits.length-1; i>0; i--){
    for(int j = 1; j<srcBits[i].length - 1; j++){
      int bit = checkNeighborhood(srcBits[i][j-1],srcBits[i][j],srcBits[i][j+1])
      srcBits[i-1][j] = bit;
    }
  }
//display bits
  loadPixels();
  for(int i=0; i<height; i++){
    for(int j=0; j<height; j++){
      int k = i + width + j;
      if (srcBits[i][j] == 1_{
        pixels[k] = color(0);
      }
    }
  }
  updatePixels();
}
