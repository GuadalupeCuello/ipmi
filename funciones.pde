void dibujarCirculo(float x, float y, float r) {
  float radioInicial = r;
  float stroke = 4;

  while (radioInicial > 0) {
    strokeWeight(stroke);
    circle(x, y, radioInicial);
    radioInicial -= 17;
    stroke -= 0.5;
    if (stroke < 0.5) stroke = 0.5;
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
