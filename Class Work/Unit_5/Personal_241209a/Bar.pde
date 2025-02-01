class Bar {
  // PROPERTIES
  PVector barLoc;
  int rectHeightVar = 31, s, storage = 0;
  float rectWidth, rectHeight;
  boolean filledUp;

  // CONSTRUCTOR
  Bar(float x, float y) {
    barLoc = new PVector(x, y);
    rectWidth = 220;
  }

  // METHODS
  void display(String w) {
    textAlign(CENTER);
    rectMode(CENTER);

    fill(255);
    rect(barLoc.x, barLoc.y, rectWidth, rectHeight);
    fill(0);
    text(w + storage, barLoc.x, barLoc.y);
  }

  void update() {
    if (abs(mouseX - barLoc.x) < 111 && abs(mouseY - barLoc.y) < 20 && mousePressed) {
      rectHeight = frameCount % rectHeightVar;

      storage = constrain(storage, 0, 99);
    }
  }


  boolean barFilled() {
    filledUp = false;

    if (rectHeight == 0) {
      filledUp = true;
      rectHeight += 0.001;
    }


    return filledUp;
  }

  float storageReturn() {
    return storage;
  }
}
