//This code draws a clock with sun and moon as the hands of the clock.

//calls PImages
PImage tree;
PImage cloud;
PImage background;

//Calls PVectors
PVector leaf1;

void setup(){
 size(720, 720);
 rectMode(CENTER);
 imageMode(CENTER);
 
 //loads in images
 tree = loadImage("Images/tree.png");
 cloud = loadImage("Images/cloud.png");
 background = loadImage("Images/background.png");

}

void draw(){
 background(200);
 
 
 //Begins the transformation
 pushMatrix();
 
 //moves the origin point to the center bottom
 translate(360, 720);
 
 
 
 //The total seconds that have passed since midnight
 int totalSecondsHour = hour() * 3600 + minute() * 60 + second();
 
 //The total seconds passed since the last hour
 float totalSecondsMinute = map(minute() * 60 + second(), 0, 3600, TAU * 0.75, TAU * 1.23);

 //Maps the total seconds since midnight passed to TAU
 float hour; 
 hour = map(totalSecondsHour, 0, 86400, TAU * 0.75, TAU * 1.75);
 

 //Draws sun and moon(hour hands of the clock)
 //also the background
 pushMatrix();
 rotate(hour);
 noStroke();
 
 //background
 image(background, 0, 0, 1612, 1635);
 
 //Sun 
 fill(250, 171, 2);
 circle(-460, 0, 140);
 
 //moon
 fill(40, 40, 40);
 circle(460, 0, 140);
 popMatrix();
 
 //draws the cloud(minute hand)
 pushMatrix();
 rotate(totalSecondsMinute);
 image(cloud, -2, -341, 200, 200);
 popMatrix();
 
 //draws lines that tell the hours
 float radius = 489;
 
 for (int i = 0; i < 24; i++) {// draws a line 24 times
  float hourAngle = map(i, 0, 24, TAU * 0.75, TAU * 1.75); //Maps i to a TAU value
  float x1 = cos(hourAngle) * radius;
  float y1 = sin(hourAngle) * radius;
  float x2 = cos(hourAngle) * (radius - 270); //line length
  float y2 = sin(hourAngle) * (radius - 270);
  stroke(255, 0, 0);
  strokeWeight(6);
  line(x1, y1, x2, y2);
 }
 
 //resets all tranformation
 popMatrix();
 
 //Draws a tree at the center of rotation
 fill(255, 0, 0);
 circle(360, 670, 419);
 image(tree, 430, 537, 600, 600);
  
if (frameCount == 1){ // saves the first frame
 save("Clock.png");
 }
}
