void fireFighter()
{
 strokeWeight(5);
 line(190,500, 190, 580) ; // body
 line(190,580, 170,600) ; // left leg
 line(190,580, 210,600) ; // left leg
 line(190,520, 200,540) ; // left arm
 line(190,520, 220,545) ; // left arm
 fill(255,0,0) ; // grey for head fill
 ellipse(190,500,20,20) ; // head
 
 strokeWeight(10);
 stroke(155);
 line(220,540, 0,540);
 strokeWeight(15);
 stroke(71,65,26);
 point(220,540);
}
