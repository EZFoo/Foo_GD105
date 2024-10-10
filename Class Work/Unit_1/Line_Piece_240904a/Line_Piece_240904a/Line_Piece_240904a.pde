//This code draws a simple maze, you start at the red square and end at the green one. 


//Canvas, Stroke//
void setup() {
size(500, 500);
}


void draw() {
 background(0);
 strokeWeight(10);
  
 //Start and End//
   
 //End//
 fill(0, 255, 0);
 stroke(0, 255, 0);
 rect(42, 35, 30, 30);
  
 //Start//
 fill(255, 0, 0);
 stroke(255, 0, 0);
 rect(427, 435, 30, 30);


 //Main Vertical Lines//
 stroke(243);

 line(5, 0, 5, 500);

 line(495, -2, 495, 500 );

 line(110, 0, 90, 500);

 line(210, 0, 190, 500);

 line(310, 0, 290, 500);

 line(410, 0, 390, 500);

 // Horizontal Lines//
 line(13, 4, 500, 5);

 line(0, 496, 515, 494);

 line(500, 110, 0, 90);

 line(500, 210, 0, 190);

 line(500, 310, 0, 290);

 line(500, 410, 0, 390);

 //Doors Vertical//
 stroke(5);
 strokeWeight(14);

 //1st line doors//
 line(98, 323, 96, 363);
 line(100, 223, 100, 268);
 line(105, 123, 103, 167);

 //2nd line doors//
 line(209, 31, 207, 76);
 line(199, 273, 201, 228);
 line(191, 478, 193, 428);

 //3rd line doors//
 line(310, 29, 308, 82);
 line(306, 132, 303, 178);
 line(301, 226, 298, 276);
 line(297, 328, 294, 377);
 line(293, 426, 290, 476);

 //4th line doors//
 line(401, 234, 398, 283);
 line(398, 334, 394, 379);
 line(394, 431, 390, 476);
 line(409, 30, 407, 85);

 //Doors Horizontal//

 //1st line doors//
 line(89, 92, 23, 89);
 line(187, 97, 126, 94);
 line(479, 109, 422, 107);

 //2nd line doors//
 line(285, 202, 223, 198);
 line(485, 210, 420, 206);

 //3rd line doors//
 line(279, 302, 219, 298);
  
 //4th line doors//
 line(172, 397, 116, 395);
 line(376, 406, 317, 402);
  
  
  if(frameCount == 1){
    save("Line_Ass.png");
 }
}
