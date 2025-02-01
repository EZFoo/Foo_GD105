Bar wood, meat, people, houses;
Particle[] peopleParticle;
float BarCanvasLocX = 230, BarCanvasLocY = 40;

void setup() {
  size(720, 720);
  noSmooth();
  rectMode(CENTER);

  wood = new Bar(width/2 - BarCanvasLocX, height/2 - BarCanvasLocY);
  meat = new Bar(width/2 + BarCanvasLocX, height/2 - BarCanvasLocY);
  people = new Bar(width/2 + BarCanvasLocX, height/2 - BarCanvasLocY * 7);
  houses = new Bar(width/2 - BarCanvasLocX, height/2 - BarCanvasLocY * 7);

  peopleParticle = new Particle [1];
  
  for (int i = 0; i < peopleParticle.length; i++) {
    peopleParticle[i] = new Particle(height/2, 100, 0, 0);
  }
}

void draw() {
  background(50);

  //WOOD
  wood.display("wood ");
  wood.update();
  if (wood.barFilled()) {
    wood.storage += 1;
  }

  //HOUSES
  houses.display("houses ");
  if (wood.storageReturn() >= 5) {
    houses.update();
  }

  if (houses.barFilled() && wood.storage >= 5) {
    wood.storage -= 5;
    houses.storage += 1;
  }

  //MEAT
  meat.display("meat ");
  meat.update();
  if (meat.barFilled()) {
    meat.storage += 1;
  }

  // PEOPLE
  people.display("people ");
  if (meat.storageReturn() >= 5) {
    people.update();
  }

  if (people.barFilled() && meat.storage >= 5) {
    meat.storage -= 5;
    people.storage += 1;
  }


  //PEOPLE & HOUSES particles
 for(int i = 0; i < peopleParticle.length; i++){
  peopleParticle[i].display(255, 5);
  peopleParticle[i].update();
 }

}
