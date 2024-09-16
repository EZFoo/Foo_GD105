//this code draws a very bad magic the gathering logo. 
//also i started to use too many variables, which is not a 
//problem but using them inefficiently is.


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
  
 //controls the crown of the logo
 int locX1 = 0;
 int locY1 = -330;
 int locX2 = -40;
 int locY2 = 40;
 int locX3 = 31;
 int locY3 = 40;
 int moveS = 148; // moves it along the X-axis
 
 //contols the main body of the logo
 int locX = -412;
 int locY = 280;
 int size = 744;

 translate(width/2 + translateX, height/2 + translateY);

 //top portion, 
 fill(#ff8a8a);
 triangle(locX1, locY1, locX2, locY2, locX3, locY3);
 fill(#c43a3a);
 triangle(locX1, locY1 + 60, locX2, locY2, locX3, locY3);
 
 
 scale(0.84);
 
 fill(#ff8a8a);
 triangle(locX1 + moveS , locY1, locX2 + moveS, locY2, locX3 + moveS, locY3);
 fill(#c43a3a);
 triangle(locX1 + moveS, locY1 + 60, locX2 + moveS, locY2, locX3 + moveS, locY3);
 
 fill(#ff8a8a);
 triangle(locX1 + moveS + 100 , locY1, locX2 + moveS + 100, locY2, locX3 + moveS + 100, locY3);
 fill(#c43a3a);
 triangle(locX1 + moveS + 100 , locY1 + 60, locX2 + moveS + 100, locY2, locX3 + moveS + 100, locY3);

 fill(#ff8a8a);
 triangle(locX1 - moveS , locY1, locX2 - moveS, locY2, locX3 - moveS, locY3);
 fill(#c43a3a);
 triangle(locX1 - moveS , locY1 + 60, locX2 - moveS, locY2, locX3 - moveS, locY3);
 
 fill(#ff8a8a);
 triangle(locX1 - moveS - 100 , locY1, locX2 - moveS - 100, locY2, locX3 - moveS - 100, locY3);
 fill(#c43a3a);
 triangle(locX1 - moveS - 100 , locY1 + 60, locX2 - moveS - 100, locY2, locX3 - moveS - 100, locY3);
  
 //body
 fill(#c43a3a);
 scale(1.02);
 circle(0, 197, 640);
 fill(0);
 ellipse(locX, locY, size, size + -135);
 ellipse(-locX, locY, size, size - 135);
}
