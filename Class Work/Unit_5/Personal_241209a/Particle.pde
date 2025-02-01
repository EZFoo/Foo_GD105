class Particle {
 // PROPERTIES
 PVector position, velocity, acceleration;
 int size;
 float rectWidth = width, rectHeight = height;
 float y;
 
 // CONSTRUCTORS
 Particle(float y, int s, float vx, float vy) {
  position = new PVector(width/2, y);
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
 rect(width/2, height/2, rectWidth, rectHeight);
 }

// updates the particle's state
void update() {
 position.add(velocity);  // move based on velocity
 velocity.add(acceleration);
  
 // inverts the direction after hitting edge
 float particleDistanceX = dist(position.x, position.y, width/2, height/2);
 boolean collidingX = particleDistanceX >= rectWidth;
  
 float particleDistanceY = dist(position.x, position.y, width/2, height/2);
 boolean collidingY = particleDistanceY >= rectHeight;
  
 if(collidingX || collidingY){
  acceleration.y = (0);
  acceleration.x = (0);
  acceleration.y = acceleration.y * -1;
  acceleration.x = acceleration.x * -1;
  println("yerrr");
  }
 }
}
