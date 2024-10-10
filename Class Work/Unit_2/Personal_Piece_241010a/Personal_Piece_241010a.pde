int win;
int score;

void setup(){
 background(0);
 size(360, 360);
}

void mouseReleased() {
 win = floor(random(2)); 
 if (win == 1){
  score += 1;
 }
 if (win == 0){
  score -= 1;
 }
}

void draw(){
  background(0);
  
 if (win == 1){
   background(0, 255, 0);
   fill(0);
   text("win", width/2, height/2);

   text("score: " + score, 10, 10);
 }
  else{   
  background(255, 0, 0);
  fill(0);
  text("lose", width/2, height/2);
  text("score: " + score, 10, 10);  
 }
 if (frameCount == 1){
 save("Personal_Piece.png");
 }
}
