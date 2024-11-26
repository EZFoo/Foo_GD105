particle[] rain;
particle[] antiRain;
color[] fill = {#860029, #de004e};
int randomColor;

void setup(){
 size(720, 720);
 noSmooth();
 rain = new particle[128];
 antiRain = new particle[100];
 
 for(int i = 0; i < rain.length; i++){
  rain[i] = new particle(-50, 20, 0.01, 0.01); 
 }
 for(int i = 0; i < antiRain.length; i++){
  antiRain[i] = new particle(height + 50, 20, -0.01, -0.01); 
 }
 
 background(#321450);
}

void draw(){
  randomColor = int(random(2));
  for(int i = 0; i < antiRain.length; i++){
  antiRain[i].display(#321450, 0);
  antiRain[i].update(height + 20);
 }
  
 for(int i = 0; i < rain.length; i++){
  rain[i].display(fill[randomColor], 5);
  rain[i].update(-50);
 }
 
  
}
