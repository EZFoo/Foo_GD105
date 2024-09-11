

void setup() {
  size (500, 500);
}

void draw(){

//face var//
 int skin = #fffaec;
 int faceWidth = 684;
 int faceHeight = 754;

//eyes var//
 int eyeX = 129;
 int eyeY = 142;
 int eyeWidth = 245;
 int eyeHeight = 164;
 int irisWidth = 39;
 int irisHeight = 160;
 
//mouth var//
 int mouthX = -93;
 int mouthY = 383;
 int lipHeight = 158;
 int lipWidth = 213;
 int lipSkinX = 1;
 int lipSkinY = 36;
 int lipSkinWidth = 24;
 int lipSkinHeight = -11;
 
 
 background(0);



//face//
 fill(skin);
 ellipse(width/2 , height/2,faceWidth , faceHeight);

//eyes//

//left eye//
 fill(#ffffff);
 stroke(0);
 strokeWeight(5);
 ellipse(width/2 - eyeX, eyeY, eyeWidth, eyeHeight);
 fill(#971818);
 ellipse(width/2 - eyeX, eyeY, irisWidth, irisHeight);
 
//right eye//
 fill(#ffffff);
 stroke(0);
 strokeWeight(5);
 ellipse(width/2 + eyeX, eyeY, eyeWidth, eyeHeight);
 fill(#971818);
 ellipse(width/2 + eyeX, eyeY, irisWidth, irisHeight);
 
//mouth//

//left lip//
 fill(#000000);
 noStroke();
 ellipse(width/2 + mouthX, mouthY, lipWidth, lipHeight);
 fill(skin);
 ellipse(width/2 + mouthX - lipSkinX, mouthY - lipSkinY, lipWidth - lipSkinWidth, 
 lipHeight - lipSkinHeight);

//right lip//

 fill(#000000);
 noStroke();
 ellipse(width/2 - mouthX, mouthY, lipWidth, lipHeight);
 fill(skin);
 ellipse(width/2 - mouthX - lipSkinX, mouthY - lipSkinY, lipWidth - lipSkinWidth, 
 lipHeight - lipSkinHeight);
 
if(frameCount == 1) {
  save("Shape_Piece_240910a.png");
 }
}
