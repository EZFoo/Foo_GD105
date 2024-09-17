//this code draws a tank cat for the game battle cats.
//the reason for this being my personal piece is to use createShape() and thats it.
//got help form the reference page on processing.



PShape pill, pillCenter, pillBottom, pillTop;

void setup(){
 size (720, 720);
 rectMode(CENTER);
 noSmooth();


}


void draw(){
 background(200);
 translate(360, 360);
 
 
 //X and Y location
 int allLocX = 0;
 int allLocY = 0;
 
 //legs
 int legX1 = -96;
 int legY1 = 286;
 int legX2 = -91;
 int legY2 = 340;
 int legX3 = -68;
 int legY3 = 297;
 
 //stroke setup
 strokeWeight(10);
 
 
 //creates a parent group
 pill = createShape(GROUP);
 fill(255);
 stroke(10);
 
 //creates the shapes
 pillCenter = createShape(RECT, 0 + allLocX, -3 + allLocY, -270, -370);
 pillTop = createShape(ARC, 0 + allLocX, -183 + allLocY, 272, 290, -3.2, 0.0); 
 pillBottom = createShape(ARC, 0 + allLocX, 177 + allLocY, 273, 289, 0, PI);
 
//adding the child shapes to the parent group
 pill.addChild(pillCenter);
 pill.addChild(pillTop);
 pill.addChild(pillBottom);

 
 //legs
 //right legs
 fill(255);
 strokeWeight(5);
 triangle(legX1 + allLocX, legY1 + allLocY, legX2 + allLocX, legY2 + allLocY, legX3 + allLocX, legY3 + allLocY);
 triangle(legX1 + 28 + allLocX, legY1 + 13 + allLocY, legX2 + 30 + allLocX, legY2 + -1 + allLocY, legX3 + 20 + allLocX, legY3 + 11 + allLocY);
 
  
 //left legs
 triangle(-legX1 + allLocX, legY1 + allLocY, -legX2 + allLocX, legY2 + allLocY, -legX3 + allLocX, legY3 + allLocY);
 triangle(legX1 - -141 + allLocX, legY1 - -18 + allLocY, legX2 - -146 + allLocX, legY2 - -4 + allLocY, legX3 - -138 + allLocX, legY3 - -2 + allLocY);
 
 
 //body
 strokeWeight(10);
 shape(pill);
  
 //face
 //eyes
 fill(0);
 noStroke();
 circle(-74 + allLocX, -235 + allLocY, 27);
 circle(20 + allLocX, -236 + allLocY, 27);
 
 //mouth
 noFill();
 stroke(10);
 arc(-55 + allLocX, -192 + allLocY, 27, 66, 12.6, 15.6);
 arc(-24 + allLocX, -194 + allLocY, 32, 66, 12.6, 15.6);
 
 fill(0);
 ellipse(-39 + allLocX, -156 + allLocY, -21, 23);
 
 //ears
 fill(255);
 triangle(legX1 - 17 + allLocX, legY1 - 633 + allLocY, legX2 - 16 + allLocX, legY2 - 617 + allLocY, legX3 - 0 + allLocX, legY3 - 607 + allLocY);
 triangle(legX1 - -212 + allLocX, legY1 - 633 + allLocY, legX2 - -196 + allLocX, legY2 - 617 + allLocY, legX3 - -129 + allLocX, legY3 - 607 + allLocY);
}
