void dibujarCirculo(float x, float y, float r){
  float currentR = r;
  float stroke = 3;

  while (currentR > 0) {
    strokeWeight(stroke);
    circle(x, y, currentR);
    currentR -= 17;// se achica el radio
    stroke -= 0.5;// se achica el ancho de la linea
    if (stroke < 0.5) stroke = 0.5;
  }
  }
