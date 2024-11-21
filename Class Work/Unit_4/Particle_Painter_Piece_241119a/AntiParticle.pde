class antiParticle {
 // PROPERTIES
 PVector position, velocity, acceleration;
 int size;
 float y;

 // CONSTRUCTORS
 antiParticle(float y, int s) {
  position = new PVector(random(width), y);
  velocity = PVector.random2D();
  acceleration = new PVector(-0.10, -0.08);
  size = s;
 }

 // METHODS
 // draws the particle to the canvas
 void display() {
  fill(50, 20, 80);
  noStroke();
  rect(position.x, position.y, size , size);
 }

 // updates the particle's state
 void update() {
  position.add(velocity);  // move based on velocity
  velocity.add(acceleration);
  
  if(position.y <  0 || position.x < 0){
   position.set(random(width + 720), height + 50);
   acceleration.y = (0);
   acceleration.x = (0);
  }
 }
}
