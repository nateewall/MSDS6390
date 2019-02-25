String message = "RIP Li'l Sebastian";
PImage img ;
PImage maskImg;
PFont f;
// The radius of a circle
float r = 300;

void setup(){
  size(1500,999);
  img = loadImage("lilSebastian.jpg");
  img.filter(BLUR, 4);
  maskImg = loadImage("lilSebastianMask.jpg");
  f = createFont("Georgia",80,true);
  textFont(f);
  // The text must be centered!
  textAlign(CENTER);
  smooth();
}

void draw(){
  image(img,0,0);
  //image(maskImg,0,0);
  blend(maskImg, 0, 0, 1500, 999, 0, 0, 1500, 999, OVERLAY);
  
  loadPixels();
  for (int i=0; i< pixels.length; i++){
    float r = red(pixels[i]);
    float g = green(pixels[i]);
    float b = blue(pixels[i]);
    r *= 1.2;
    b *= 1.5;
    g *= 1.2;
    pixels[i] = color(r,g,b);
  }
  updatePixels();
  
  //write out the message
  translate(width / 2, height / 2);
  noFill();
  noStroke();
  ellipse(0, 0, r*2, r*2);
    // We must keep track of our position along the curve
  float arclength = 0;

  // For every box
  for (int i = 0; i < message.length(); i++)
  {
    // Instead of a constant width, we check the width of each character.
    char currentChar = message.charAt(i);
    float w = textWidth(currentChar);

    // Each box is centered so we move half the width
    arclength += w/2;
    // Angle in radians is the arclength divided by the radius
    // Starting on the left side of the circle by adding PI
    float theta = PI + arclength / r;    

    pushMatrix();
    // Polar to cartesian coordinate conversion
    translate(r*cos(theta), r*sin(theta));
    // Rotate the box
    rotate(theta+PI/2); // rotation is offset by 90 degrees
    // Display the character
    fill(0);
    text(currentChar,0,0);
    popMatrix();
    // Move halfway again
    arclength += w/2;
  }
}
