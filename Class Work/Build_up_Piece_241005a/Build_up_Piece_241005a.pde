//this codes draws a tree with the branches slowly froming

PVector branches;

void setup() {
  size (720, 720);
  background(0);
  noStroke();
  noSmooth();

  branches = new PVector(0, 360);
}

void draw() {

  translate(360, 360);

//branches
  circle(branches.x, branches.y, 10);


  //move the branches
  float jumpiness = 0.9;
  branches.y -= random(jumpiness) * 2; // move down one pixel every frame
  branches.x -= random(-jumpiness, jumpiness);

if(branches.y < 50) { 
  branches.x = branches.x + frameCount * 0.001;
 }

 if(branches.y 

}
