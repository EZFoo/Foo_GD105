class particle {
 // PROPERTIES
 PVector position, velocity, acceleration;
 int size;
 float y;

 // CONSTRUCTORS
 particle(float y, int s) {
  position = new PVector(random(width), y);
  velocity = PVector.random2D();
  acceleration = new PVector(0.10, 0.08);
  size = s;
 }

 // METHODS
 // draws the particle to the canvas
 void display() {
  fill(222, 0, 78);
  noStroke();
  rect(position.x, position.y, size , size);
 }

 // updates the particle's state
 void update() {
  position.add(velocity);  // move based on velocity
  velocity.add(acceleration);
  
  if(position.y > height + 50 || position.x > width + 50){
   position.set(random(-720, width), y);
   acceleration.y = (0);
   acceleration.x = (0);
  }
 }
}