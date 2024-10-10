//this codes draws a tree with the branches slowly froming, but it looks like smoke
//so that's what it is now

PVector branches;

void setup() {
  size (720, 720);
  background(0);
  noStroke();
  noSmooth();

  branches = new PVector(360, 720);
}

void draw() {


//branches
  fill(255, 50);
  circle(branches.x, branches.y, 10);


  //move the branches
  float movement = 0.9;
  float jumpiness = 1.0;
  branches.y -= random(movement) * 2; // move up one pixel every frame
  branches.x -= random(-jumpiness, jumpiness); //moves random between the - or + of jumpiness 

//if the circle y axies is less than a cetain number it does this each frame
if(branches.y < 450) { 
  branches.x = branches.x += random(-10, 10); //adds a random number between 10 and -10 to branches when used as x
  jumpiness = jumpiness + 5; // adds 5 to jumpiness
 
 }
 
 //reset the circle when off screen to a x position between 320 and 400
 if(branches.y < -2 || branches.x > width + 1){
    branches.set(random(320, 400), 720);
 }

 //saves  frames of the code made
 boolean start = false;
 
 
// if(start); {
//   if (frameCount >= 200){
//    saveFrame("frames/frame-####.png"); //<>//
//  }
// } 
   if (frameCount >= 500 && frameCount <= 600){
     start = true;}
   else{
     start = false;
  }
 if (start == true){
   saveFrame("frames/frame-####.png");
 }
 
   //if(frameCount >= 260){
   //  start = false;
   //  print("3"); }
}
