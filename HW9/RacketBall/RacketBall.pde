
int gameScreen = 0;
int score = 0;
static final int WINDOW_WIDTH = 600;
static final int WINDOW_HEIGHT = 700; 

ArrayList<GameObject> myObjects;

PVector racketPosition, ballPosition, targetPosition;

/********* SETUP BLOCK *********/

void settings() {
  size(WINDOW_WIDTH, WINDOW_HEIGHT);
  
  myObjects = new ArrayList<GameObject>();
  Racket myRacket = new Racket();
  myRacket.updatePosition(new PVector(WINDOW_WIDTH/2, WINDOW_HEIGHT - 25));
  myRacket.setColor(color(0,0,0));
  
  Ball myBall = new Ball();
  myBall.updatePosition(new PVector(WINDOW_WIDTH/2, WINDOW_HEIGHT/2));
  myBall.setColor(color(0,0,0));
  myBall.setAngle(random(-PI/4,PI/4));
  myBall.setVelocity(new PVector(5*sin(myBall.getAngle()),-5*cos(myBall.getAngle())));
  
  Target myTarget = new Target();
  myTarget.updatePosition(new PVector(random(100, width - 100), random(50, height - 300)));
  myTarget.setColor(color(255,0,0));
 
  myObjects.add(myRacket);
  myObjects.add(myBall);
  myObjects.add(myTarget); 

}


/********* DRAW BLOCK *********/

void draw() {
  // Display the contents of the current screen
  if (gameScreen == 0) {
    initScreen();
  } else if (gameScreen == 1) {
    gameScreen();
    textSize(42);
    text(score, width/2, 50);
    for(int i = 0; i < myObjects.size(); i++)
    {
      GameObject myObject = myObjects.get(i);
      myObject.move();
      myObject.renderObject();
    }
    
    racketPosition = myObjects.get(0).getPosition();
    ballPosition =  myObjects.get(1).getPosition();
    targetPosition = myObjects.get(2).getPosition();
    
    if(ballPosition.x>racketPosition.x-50 && ballPosition.x<racketPosition.x+50 && ballPosition.y>racketPosition.y-10 && ballPosition.y<racketPosition.y+10)
    {
      float diff = (racketPosition.x - ballPosition.x)/50;
      println(diff);
      float rad = 5*PI/12;
      float angle = diff*rad;
      myObjects.get(1).setVelocity(new PVector(-5*sin(angle), -5*cos(angle)));
    }
    
    if (ballPosition.y > height){
      score = 0;
      myObjects.get(1).updatePosition(new PVector(WINDOW_WIDTH/2, WINDOW_HEIGHT/2));
      myObjects.get(1).setAngle(random(-PI/4,PI/4));
      myObjects.get(1).setVelocity(new PVector(5*sin(myObjects.get(1).getAngle()),-5*cos(myObjects.get(1).getAngle())));
      myObjects.get(2).updatePosition(new PVector(random(100, width - 100), random(100, height - 300)));
    }
    
    if (dist(ballPosition.x, ballPosition.y, targetPosition.x, targetPosition.y) < 35)
    {
      myObjects.get(1).velocity.y *= 1.2;
      myObjects.get(2).updatePosition(new PVector(random(100, width - 100), random(100, height - 300)));
      score += 1;
    }
  }
}


/********* SCREEN CONTENTS *********/

void initScreen() {
  background(0);
  textAlign(CENTER);
  text("Click to start", WINDOW_WIDTH/2, WINDOW_HEIGHT/2);
}

void gameScreen() {
    background(255);
}



/********* INPUTS *********/

public void mousePressed() {
  // if we are on the initial screen when clicked, start the game
  if (gameScreen==0) {
    startGame();
  }
}

/*******MOVE RACKET*******/
void keyPressed()
{
  Racket myRacket = (Racket)myObjects.get(0);
  if(key == CODED)
  {
    if(keyCode == RIGHT)
    {
      myRacket.moveRight();
    }
    else if(keyCode == LEFT)
    {
      myRacket.moveLeft();
    }  
  }
}  


/********* OTHER FUNCTIONS *********/

// This method sets the necessary variables to start the game  
void startGame() {
  gameScreen=1;
}
