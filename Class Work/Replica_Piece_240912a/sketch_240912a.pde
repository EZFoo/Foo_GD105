//this code draws a very bad magic the gathering logo. 


void setup(){
 size(720, 720);
 noSmooth();
}


void draw(){
 background(0);
 noStroke();
 
 
 //moves the origin point in relation to the center
 int translateX = 0;
 int translateY = 0;
  
 //triangle
 int locX1 = 0;
 int locY1 = -330;
 int locX2 = -40;
 int locY2 = 40;
 int locX3 = 31;
 int locY3 = 40;
 int moveS = 148;
 
 //contols the main body of the logo
 int locX = -412;
 int locY = 280;
 int size = 744;

 translate(width/2 + translateX, height/2 + translateY);

 //top portion
 fill(255);
 triangle(locX1, locY1, locX2, locY2, locX3, locY3);
 
 scale(0.84);
 triangle(locX1 + moveS , locY1, locX2 + moveS, locY2, locX3 + moveS, locY3);
 
 triangle(locX1 + moveS + 100 , locY1, locX2 + moveS + 100, locY2, locX3 + moveS + 100, locY3);

 triangle(locX1 - moveS , locY1, locX2 - moveS, locY2, locX3 - moveS, locY3);
 
 triangle(locX1 - moveS - 100 , locY1, locX2 - moveS - 100, locY2, locX3 - moveS - 100, locY3);
  
 //body
 fill(255);
 scale(1.02);
 circle(0, 197, 640);
 fill(0);
 ellipse(locX, locY, size, size + -135);
 ellipse(-locX, locY, size, size - 135);
}
