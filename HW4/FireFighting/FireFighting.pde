float birthRate = 1;
float particleCount = 0;
int s = 100;
int particles = 1000;
float[] x = new float[particles];
float[] y = new float[particles];
float[] speedX= new float[particles];
float[] speedY= new float[particles];
float[] speedYref = new float[particles];
float[] speedXref = new float[particles];
int radius = 3;
float gravity = 0.01;

void setup(){
 size(1000,700) ;
 for (int i=0; i< particles; i+=1){
   x[i] = random(190,210);
   y[i] = random(540,545);
   speedX[i] = 9.5;
   speedY[i] = -3.5;
   speedXref[i] = random(-.5,.5);
   speedYref[i] = random(2,3);
 }
}

void draw(){
  //background(255);
  fill(255,255,255);
  rect(0,0, width, height);
  fill(255);
  //draw the grass
  fill(96,128,56);
  rect(0,600,width,100);
  //draw the sky
  fill(204,240,255);
  rect(0,0,width,600);
  //Draw house
  house();
  
  //draw firefighter
  fireFighter();
  
  for (int i=0; i< particleCount; i+=1){ 
    //creating the hose drops
    noStroke();
    fill(20,75,200,200);
    ellipse(x[i], y[i], radius*2, radius*2);
    
    //waterParticleMovement
    x[i] += speedX[i] + random(-1,1);
    speedY[i] += gravity + random(-.2,.2);
    y[i] += speedY[i] + random(-1,1);
  
    //call collision function 
    collision(i);
  }
  if (particleCount < particles - birthRate) {
    particleCount += birthRate;
  }
  flameSize(s);
}

void collision(int i){
  //once the particle hits the kid it drops to the ground
  if (x[i] > (width/1.5) - radius){
    speedX[i] = speedXref[i];
    speedY[i] = speedYref[i];
  }
  
  //the water particle drops to the ground and pools
  if (y[i] > 600 - radius){
    speedX[i] = 0;
    speedY[i] = 0;
    y[i] = 600;
  }
}

void flameSize(int s){
  if (particleCount < particles/4){
    //draw fire
    flames(700,400,s);
  }
  else if (particleCount < particles/3){
    //draw fire
    flames(700,400,s/2);
  }
  else if (particleCount < particles/2){
    //draw fire
    flames(700,400,s/3);
  }
  if (particleCount == particles){
    //draw fire
  }
}
  
