//Canvas, Stroke//
void setup(){
  size(500, 500);
}

//Draw A Maze//
void draw(){
 background(0);
 
  
//Main Vertical Lines//
 stroke(255,255,255);

 line(0, 0, 0, 500);

 line(499, 1, 499, 500 );

 line(100, 0, 100, 500);

 line(200, 0, 200, 500);

 line(300, 0, 300, 500);

 line(400, 0, 400, 500);

// Horizontal Lines//
 line(0, 0 , 500, 0);

 line(0, 499 , 499, 499);

 line(500, 100 , 0, 100);

 line(500, 200 , 0, 200);

 line(500, 300 , 0, 300);

 line(500, 400 , 0, 400);

//Doors//

 stroke(0,255,0);

 line(500, 400 , 0, 400);
 }
