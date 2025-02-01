ArrayList<particle> balls;
int randomColor, maxBalls = 10;
float ballSize = 10;
color[] fill = {#de004e, #fee440, #f887ff, #1afe49, #7a04eb, #85ebd9, #fbf665, #fe00fe, #ac61b9, #fff69f};
PGraphics[] screenCopy; 
void setup() {
 size(720, 720);
 noSmooth();
 rectMode(CENTER);
 
 for(int i = 0; i < 2; i++){
 screenCopy[i] = createGraphics(i *);
 }
 
 balls = new ArrayList<particle>();
 balls.add(new particle(width/2, height/2, ballSize, random(3), random(3)));
 background(50, 20, 80);

 randomColor = int(random(fill.length));
}

void draw() {
  
  fill(50, 20, 80, 40);
  noStroke();
  rect(width/2, height/2, width, height);
 
 for (int i = balls.size() - 1; i >= 0; i--) {
  particle ball = balls.get(i);
  ball.display(fill[randomColor]);

  // Update ball and check for edge collision
 if (ball.update()) {
  if (floor(random(2)) == 1) { // 50% chance
   if (balls.size() < maxBalls) {
    // Duplicate the ball
    balls.add(new particle(ball.position.x, ball.position.y, ballSize, random(3), random(3)));
   }
  }else {
   if (balls.size() > 1) {
    // Remove the ball
    balls.remove(i);
    }
   }
  }
 }
}
