//Guadalupe Cuello

//https://youtu.be/63ZDgGJ9Vf0?si=ABbeLls-OvUJxdbj


//variables
PImage Img40;
int cant1=5;
int cant2=4;
color colorCirculo = color (255);

void setup () {
  size (800, 400);
  Img40 = loadImage ("40.jpg");
}

void draw () {
  background (255);
  println(mouseX, mouseY);
  dibujarGrilla();
  image (Img40, 0, 0, 400, 400);
}
