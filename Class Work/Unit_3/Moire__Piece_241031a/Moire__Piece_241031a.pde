//This code creates a canvas filled with rows of static and rotating triangles, changing colors every 5 seconds

int lastUpdateTime = 0;
float backColor = 0;
float frontColor = 0;

void setup() {
 size(720, 720);
 lastUpdateTime = second();

}

void draw() {
 background(0);
  
 float rotateBy = map(frameCount, 0, 400, 0, 1);
 int currentTime = second();

 // Check if 5 seconds have passed since the last update
 if ((currentTime - lastUpdateTime + 60) % 60 >= 5) {
 backColor = random(256);  //[0...255]
 frontColor = random(256);  
 
 // Update the last update time to the current time
 lastUpdateTime = currentTime;
 }

 // Loop to draw static triangles filling the screen
 for (float TriY = 0; TriY <= height; TriY += 30) { //change update to increase/decrease the amount of triangles in a row/column
 for (float TriX = 20; TriX <= width; TriX += 40) {
 fill(255, backColor, 255);
 triangle(TriX, TriY, TriX - 20, TriY + 30, TriX + 20, TriY + 30);
  }
 }

 translate(360, 360);  // Move the origin to the center of the canvas

 // Loop to draw rotating triangles filling the screen
 for (float TriY = -360; TriY <= height; TriY += 30) { //change update to increase/decrease the amount of triangles in a row/column
  for (float TriX = -340; TriX <= width; TriX += 40) {
   pushMatrix();
   fill(255, frontColor, 255);
   rotate(TAU * rotateBy);
   triangle(TriX, TriY, TriX - 20, TriY + 30, TriX + 20, TriY + 30);
   popMatrix();
   }
  }
}
