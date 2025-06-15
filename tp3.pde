//Guadalupe Cuello

//https://youtu.be/1gn2K57wtcY


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

  //circulos de abajo
  for (int i = 0; i < cant1; i++) {
    for (int j = 0; j < cant1; j++) {
      float x = 400 + i * 100;
      float y = 25 + j * 100;
      fill (colorCirculo);
      stroke(0);
      dibujarCirculo(x, y, 93);
    }
  }

  //circulos de arriba
  for (int i =0; i < cant2; i++) {
    for (int j =0; j < cant1; j++) {
      float x = 450 + i * 100;
      float y = -25 + j * 100;
      fill (colorCirculo);
      stroke(0);
      dibujarCirculo(x, y, 93);
    }
  }

  image (Img40, 0, 0, 400, 400);

  float brillo = calcularBrillo(colorCirculo);

  if (brillo > 127) {
    println("Color claro");
  } else {
    println("Color oscuro");
  }
}
