PImage panel1;
PImage panel2;
PImage panel3;

void setup(){
 size(720, 920);
 rectMode(CENTER);
 noSmooth();

panel1 = loadImage("panel1.png");
panel2 = loadImage("panel2.png");
panel3 = loadImage("panel3.png");

}

void draw(){
 background(150);
  
 //Manga Panel
 strokeWeight(10);
 fill(100);

 //third panel

 //panel box
 stroke(0);
 quad(396,307, 690, 318, 695, 890, 506, 888);
 image(panel3, 286, 312, 543, 565);
 
 //second panel
 
 //panel box
 stroke(0);
 quad(35,30, 317, 30, 429, 305, 35, 305);
 image(panel2, -18, 33, 453, 302);
 
 
 //first panel

 //panel box
 stroke(0);
 quad(327,30, 690, 30, 690, 316, 434, 300);
 image(panel1, 362, 33, 372, 301);
 
 
 ////Hides excess image
 //noStroke();
 //fill(150);
 //rect(553, 337, 323, 33);

 


 

  
  
}
