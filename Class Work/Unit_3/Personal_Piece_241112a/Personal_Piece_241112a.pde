//enemies
PImage easyEnemy;
PImage mediumEnemy;
PImage hardEnemy;

//Variables
float playerLevel = 0;
float enemyLevel = 0;
int winConditionVariable;
int enemyPicker;

//booleans
boolean doOnce;
boolean fight;

//PVectors
PVector imageLocation;

void setup() {
  size(720, 720);
}

void draw() {
  
  //UI
  background(0);
  textSize(30);
  text("You have a 1 in " + enemyLevel + " of winning", 30, 30);
  text("X to run away", 30, 500);
  text("V to fight", 30, 550);
  text("Player level: " + floor(playerLevel), 30, 70);
  

 //picks a number [1..3]
 if (keyPressed) {
  if (key == 'x' || key == 'X') {
   enemyPicker = floor(random(3) + 1);
   }
 }

 //depending on the number picks an enemy
 if (enemyPicker == 1) {
  easyEnemy();
    
  } else if (enemyPicker == 2) {
   mediumEnemy();
   
  } else if (enemyPicker == 3) {
    hardEnemy();
   
 }

 //pressing V will run the boolean function then subtract the player level then
 //if less that one print line win
 if (keyPressed) {
  if (key == 'v' || key == 'V') {
   doOnce = false;
   fight = winCondition(enemyLevel - playerLevel);
   if (fight) {
    println("win");
    playerLevel += 0.01;
    enemyPicker = 0;
    doOnce = true;
    } else {
     println("lose");
     doOnce = true;
     enemyPicker = 0;
   }
  }
 }
imageLocation = new PVector(30, 30);
}

//different enemies
void easyEnemy() {
  fill(0, 255, 0);
  enemyLevel = 3;
  easyEnemy = loadImage("Images/easyEnemy.png");
  image(easyEnemy,imageLocation.x, imageLocation.y);
}

void mediumEnemy() {
  fill(0, 0, 255);
  enemyLevel = 7;
  mediumEnemy = loadImage("Images/mediumEnemy.png");
  image(mediumEnemy, imageLocation.x, imageLocation.y);
}

void hardEnemy() {
  fill(255, 0, 0);
  enemyLevel = 15;
  hardEnemy = loadImage("Images/hardEnemy.png");
  image(hardEnemy, imageLocation.x, imageLocation.y);
}

//the function that checks if a number is less than one if yes return true
boolean winCondition(float n) {
  winConditionVariable = floor(random(n));
  if (winConditionVariable <= 1) {
    return true;
  } else {
    return false;
  }
}
