//This code draws a face, pressing the mouse makes it blink and pressing 'B' makes 
//it blush

int move;
int blush;


void setup(){
 size(720, 720);
 noSmooth();
 frameRate(10);
}

void draw(){
 background(35, 108, 78);
 move = 280;
 blush = 0;

 //draws the mouth
 strokeWeight(10);
 stroke(0);
 noFill();
 bezier(148, 460, 117, 704, 383, 583, 346, 416);
 bezier(574, 460, 551, 704, 314, 583, 352, 416);
 
 
 noStroke();
 //sets the transparency to 150 if 'B' was pressed
 if (keyPressed) {
  if (key == 'b' || key == 'B') {
    blush = 150;
   }
 }
 
 //draws an invisible ellipse
 fill(255, 0, 0, blush);
 ellipse(128, 430, 239, 199);
 ellipse(588, 430, 239, 199);
 
 
 //sets move height of the ellipse to zero if mouse was pressed
 if (mousePressed == true) {
    move = 0;
 }
 
 //draws the eyes
 //Cornea
 scale(1.00);
 fill(255);
 ellipse(170, 165, 220, move + 5);
 ellipse(555, 165, 220, move + 5);
 
 //pupil
 scale(0.90);
 fill(0);
 ellipse(190, 184, 220, move);
 ellipse(618, 184, 220, move);
 
 //reflection that vibrates randomly
 int sparkles;
 sparkles = floor(random(10));
 
 scale(0.30);
 fill(255);
 ellipse(746 + sparkles, 394, 220, move);
 ellipse(2193 + sparkles, 391, 220, move);
 
 scale(0.47);
 fill(255);
 ellipse(1042 + sparkles, 1872, 220, move);
 ellipse(4023 + sparkles, 1786, 220, move);

 if(frameCount == 3){
  save("Collage.png");
 }

}
