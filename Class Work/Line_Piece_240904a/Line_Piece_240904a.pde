//Canvas, Stroke, Color,   
void setup(){
  size(500, 500);
  stroke(255,255,255);
  strokeCap(ROUND);
}

//Make Rain Hopefully//
 void draw(){
 background(0);
 
  
//The Lines//

line(frameCount, frameCount, frameCount + 20, frameCount + 20);

line(frameCount + 50, frameCount + 0, frameCount + 70, frameCount + 20);

line(frameCount + 100, frameCount + 0, frameCount + 120, frameCount + 20);

line(frameCount + 150, frameCount + 0, frameCount + 170, frameCount + 20);

line(frameCount + 200, frameCount + 0, frameCount + 220, frameCount + 20);

line(frameCount + 250, frameCount + 0, frameCount + 270, frameCount + 20);

line(frameCount + 300, frameCount + 0, frameCount + 320, frameCount + 20);

line(frameCount + 350, frameCount + 0, frameCount + 370, frameCount + 20);

line(frameCount + 400, frameCount + 0, frameCount + 420, frameCount + 20);

line(frameCount + 450, frameCount + 0, frameCount + 470, frameCount + 20);

line(frameCount + 500, frameCount + 0, frameCount + 520, frameCount + 20);
}
