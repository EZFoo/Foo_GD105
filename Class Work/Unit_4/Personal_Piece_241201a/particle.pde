class particle {
 // PROPERTIES
 PVector position, velocity, acceleration, boundaryLoc;
 float size, resetDist = 10;
 float rectSize = second() * 10;
 boolean hitEdge = false;
  
 // CONSTRUCTOR
 particle(float x, float y, float s, float vx, float vy) {
  position = new PVector(x, y);
  velocity = new PVector(vx, vy);
  acceleration = new PVector(0, 0);
  size = s;
 }

 // METHODS
 void display(color c) {
  noFill();
  stroke(c);
  rect(position.x, position.y, size, size);
  
  // Draw the boundary rectangle
  stroke(c);
  boundaryLoc = new PVector(width/2, height/2);
  rect(boundaryLoc.x, boundaryLoc.y, rectSize, rectSize);
 }

 boolean update() {
 boolean edgeHit = false;
  
  //reverse velocity if outside the bounds
  if (position.x <= width/2 - rectSize/2 || position.x >= width/2 + rectSize/2) {
   velocity.x *= -1; // Reverse direction
   velocity.x += random(1); // Add randomness
   edgeHit = true; // makes the boolean true
  }
  
  if (position.y <= height/2 - rectSize/2 || position.y >= height/2 + rectSize/2) {
   velocity.y *= -1;
   velocity.y += random(1);
   edgeHit = true;
  }
  
  if (position.y <= height/2 - rectSize/2 - resetDist || position.y >= height/2 + rectSize/2 + resetDist 
  || position.x <= width/2 - rectSize/2 - resetDist || position.x >= width/2 + rectSize/2 + resetDist) {
   position.set(width/2, height/2); 
  }
  
  // Update position
  position.add(velocity);
  velocity.add(acceleration);
  velocity.limit(20); // Limit max speed
 
  return edgeHit; // Return whether it hit the edge
 }
}
