void dibujarGrilla(){

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


  float brillo = calcularBrillo(colorCirculo);

  if (brillo > 127) {
    println("Color claro");
  } else {
    println("Color oscuro");
  }

}
void dibujarCirculo(float x, float y, float r) {

for (float radio = r; radio > 0; radio -= 17) {
  float stroke = map(radio, r, 0, 4, 0.5);
  strokeWeight(stroke);
circle(x, y, radio);
  }
}

void mousePressed() {
  colorCirculo = color(random(255), random(255), random(255));
}

void keyPressed() {
  if (key == 'r' || key == 'R') {
    colorCirculo = color(255);
  }
}

float calcularBrillo(color c) {
  float r = red(c);
  float g = green(c);
  float b = blue(c);
  return (r + g + b) / 3.0;
}
