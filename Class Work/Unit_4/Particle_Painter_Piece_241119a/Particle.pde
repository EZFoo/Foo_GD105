class particle {
 // PROPERTIES
 PVector position, velocity, acceleration;
 int size;
 int diameter = 1100;
 float y;
 
 // CONSTRUCTORS
 particle(float y, int s, float vx, float vy) {
  position = new PVector(random(-width, width ), y);
  velocity = PVector.random2D();
  acceleration = new PVector(vx, vy);
  size = s;
 }

 // METHODS
 // draws the particle to the canvas
 void display(color c, float w){
 stroke(w);
 fill(c);
 rect(position.x, position.y, size , size);
 
 //Draws a circle that resets to the starting pos
 noFill();
 circle(width/2, height/2, diameter);
 }

// updates the particle's state
void update(float resetPos) {
 position.add(velocity);  // move based on velocity
 velocity.add(acceleration);
  
 //resets to the starting position
 float particleDistance = dist(position.x, position.y, width/2, height/2);
 boolean colliding = particleDistance < diameter;
  
 if(!colliding){
  position.set(random(-width, width + width), resetPos);
  acceleration.y = (0);
  acceleration.x = (0);
  }
 }
}
