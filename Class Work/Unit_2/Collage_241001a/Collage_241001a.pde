//This code draws a manga panel, the guy in the photos is a friend of mine 
//and the Mahoraga photo cane from https://pin.it/1HDsnZN5s

//Declaring images
PImage panel1;
PImage panel2;
PImage panel3;
PImage panel4;

PImage overlayPanel1;
PImage overlayPanel2;
PImage overlayPanel3;

//Declaring text
PFont voice;
PFont loudVoice;

void setup(){
 size(720, 920);
 rectMode(CENTER);
 noSmooth();

 //loads in the main image
 panel1 = loadImage("Panels/panel1.png");
 panel2 = loadImage("Panels/panel2.png");
 panel3 = loadImage("Panels/panel3.png");
 panel4 = loadImage("Panels/panel4.png");
 //loads in the overlays
 overlayPanel1 = loadImage("Panels/overlayPanel1.png");
 overlayPanel2 = loadImage("Panels/overlayPanel2.png");
 overlayPanel3 = loadImage("Panels/overlayPanel3.png");
 
 //loads text
 voice = loadFont("ComicSansMS-62.vlw");
 loudVoice = loadFont("BodoniMTBlack-64.vlw");
}

void draw(){
 background(255);
 
 //Manga panel. This is where the images and text resides
 strokeWeight(10);
 fill(100);

 //third panel

 //panel box
 stroke(0);
 quad(396,307, 690, 318, 695, 890, 506, 888);
 image(panel3, 286, 312, 543, 577);
 
 //second panel
 
 //panel box
 stroke(0);
 quad(35,30, 317, 30, 429, 305, 35, 305);
 image(panel2, -18, 33, 453, 302);
 
 
 //first panel

 //panel box
 stroke(0);
 quad(327,30, 690, 30, 690, 308, 434, 303);
 image(panel1, 388, 33, 339, 271);
 
 //forth panel

 //panel box
 stroke(0);
 quad(36,306, 402, 308, 500, 886, 38, 798);
 image(panel4, -53, 310, 536, 583);

 //Hides excess image and define margins better. The image proportion are a bit off
 // had to hide them somehow
 
 //Excess image
 strokeWeight(40);
 stroke(255);
 line(10, 300, 10, 895);
 line(715, 300, 717, 895);
 strokeWeight(55);
 line(18, 871, 478, 911);
 line(18, 871, 478, 911);
 
 //Margins
 stroke(3);
 strokeWeight(10);
 line(38, 846, 500, 888);
 line(35, 305, 35, 845);
 line(409, 308, 497, 884);
 line(38, 299, 688, 306);
 line(693, 890, 690, 306);
 line(506, 886, 687, 888);
 
 //Text boxes for each panel 
 noStroke();
 fill(255);
 
 //first panel
 quad(335, 34, 478, 34, 517, 300, 432, 299);
 
 //second panel
 quad(272, 111, 359, 124, 421, 300, 304, 295);
 
 //third panel
 quad(416, 313, 687, 313, 686, 540, 451, 539);
 
 //forth panel
 quad(343, 438, 421, 440, 490, 878, 371, 865);

 //Overlay images. These are here to help the panel look better
 image(overlayPanel1, 388, 33, 339, 271);
 
 image(overlayPanel2, -18, 33, 453, 302);
 
 image(overlayPanel3, 286, 312, 543, 577);
 
 //Text
 fill(0);
 
 textFont(voice, 31);
 text("You think\n    I'm \n    going\n     down", 348, 65);
 
 textFont(loudVoice, 30);
 text("Nah,", 293 + random(3), 144 + random(3));
 
 textFont(voice, 31);
 text(" we \n going\n  down", 294, 181);
 
 textFont(voice, 20);
 text("Here's how we going to do\n this roses are red, violets\n  are blue, weapons against\n   me won't        prospa, with\n    this                 sacred trea-\n    -sure,              I summon" , 424, 345);
 
 textFont(loudVoice, 30);
 text("Big\n\nRaga\n\n The\n\n Opp\n\n Stopa", 360 + random(3), 503 + random(3));

 if(frameCount == 3){
  save("Collage.png");
 }

}
