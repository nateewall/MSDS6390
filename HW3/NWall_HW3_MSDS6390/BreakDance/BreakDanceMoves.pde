public void backSpin()
{
     //body
    translate(0, -25);
    rectMode(CENTER);
    rect(0,0,30, 50);
    //head
    ellipseMode(CENTER);
    ellipse(0,-40, 30, 30);
    //left arm
    translate(15,-25);
    rotate(PI/4);
    rect(0, 0, 10, -30);
    //right arm
    translate(-15,25);
    rotate(PI/4);
    rect(0, 0, 10, -30); 
    //right leg
    rectMode(CORNER);
    translate(30,40);
    rect(0, 0, 10, -40);
    //left leg
    rectMode(CORNER);
    translate(0,-50);
    rect(0, 0, 10, -40);
}
