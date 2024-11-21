particle[] rain;
antiParticle[] antiRain;

void setup(){
 size(720, 720);
 noStroke();
 noSmooth();
 rain = new particle[128];
 antiRain = new antiParticle[80];
 
 for(int i = 0; i < rain.length; i++){
  rain[i] = new particle(-50, 20); 
 }
 
 for(int i = 0; i < antiRain.length; i++){
  antiRain[i] = new antiParticle(height + 50, 20); 
 }
 
  background(50, 20, 80);
}

void draw(){
  
  for(int i = 0; i < antiRain.length; i++){
  antiRain[i].display();
  antiRain[i].update();
 }
  
 for(int i = 0; i < rain.length; i++){
  rain[i].display();
  rain[i].update();
 }
 
  
}
