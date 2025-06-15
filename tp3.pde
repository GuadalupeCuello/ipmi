//variables
PImage Img40;
int cant=5;

void setup () {
  size (800,400);
  Img40 = loadImage ("40.jpg");
}

void draw () {
  background (255);
  println(mouseX,mouseY);
  
 // dibujarCirculo(400,25,93);
  image (Img40,0,0,400,400);
 for(int i=0; i<cant; i++){
   dibujarCirculo(400,25,i);
}
}
