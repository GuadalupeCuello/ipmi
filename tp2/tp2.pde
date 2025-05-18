//Cuello Guadalupe

//variables
PImage Img01, Img02, Img03, Img04;
PFont fuente;

int pantalla = 1;
int contador = 0;
int tiempoPorPantalla = 300;

float textoY = 400;
float textoX = 50;
float textoX2 = 50;
float textoY2 = 300;
float texto3X = 80;
float texto3Y = 400;
float texto4X = -300;
float texto4Y = 390;
float velocidadY = 0.5;
float velocidadY2 = 0.5;
float opacidad3 = 0;
float velocidadOpacidad3 = 2;
float velocidadTexto4 = 3;
float destinoX = 320; 

int letra1 = 0;
int velocidadTexto = 4;
int botonX = 250;
int botonY = 350;
int botonAncho = 140;
int botonAlto = 40;


void setup() {
  size(640, 480);
  Img01 = loadImage("HTTYD_fixed01.jpg"); 
  Img02 = loadImage("HTTYD_fixed02.jpg");
  Img03 = loadImage("HTTYD_fixed03.jpg");
  Img04 = loadImage("HTTYD_fixed04.jpg");
  fuente = createFont("Arial", 30);
  textFont(fuente);
}

void draw() {
  background(0);
  contador++;
  
  //pantalla 1
  if (pantalla == 1) {
    image(Img03,0,0,640,480);
    
    //texto letra por letra
   String mensajePantalla1 =  "Esto es como entrenar a tu dragon 2,\n"+
    "La segunda de una trilogia de peliculas \n"+
    "con una historia increible!";
    
    letra1 = min(letra1 + 1, mensajePantalla1.length());
    escribirTexto(mensajePantalla1, letra1, textoX, textoY);
    
      if (contador > tiempoPorPantalla) {
    pantalla = 2;
    contador = 0;
    letra1 = 0; 
  }
  }
  
  //pantalla 2
  else if (pantalla ==2) {
     image(Img01,0,0,640,480);
     
     //texto de arriba hacia abajo
  String mensajePantalla2 = "Llena de momentos tanto emotivos...";
  animarTexto(mensajePantalla2, 50, textoY2);
  textoY2 += velocidadY2;

  if (contador > tiempoPorPantalla) {
    pantalla = 3;
    contador = 0;
    textoY2 = 200;
  }
  }
  
  //pantalla 3
  else if (pantalla == 3) {
     image(Img02,0,0,640,480);
     
  String mensajePantalla3 = "Como emocionantes...\n"+
    "Te invito a que la veas!";
    
     fill(255, opacidad3);
    
     textAlign(LEFT);
  text(mensajePantalla3, texto3X, texto3Y);
    
     
      if (opacidad3 < 255) {
    opacidad3 += velocidadOpacidad3;
  } 
  
   if (contador > tiempoPorPantalla) {
    pantalla = 4;
    contador = 0;
    opacidad3 = 0;
  }
}

//pantalla 4
else if (pantalla == 4) {
     image(Img04,0,0,640,480);
    String mensajePantalla4 = "Gracias por ver!";
    
    fill(255);
  textAlign(LEFT);
  text(mensajePantalla4, texto4X, texto4Y);
  
  if (texto4X < destinoX) {
    texto4X += velocidadTexto4;
    
    if (texto4X > destinoX) {
      texto4X = destinoX;
}
}
//boton
fill(100);
  rect(240, 400, 160, 50); 
  
 fill(255);
  textAlign(CENTER, CENTER);
  textSize(20);
  text("Reiniciar", 320, 425);  
}
}

//texto pantalla 2
void animarTexto(String mensaje,float posX, float posY) {
  fill(255);
  textAlign(LEFT);
  text(mensaje, posX, posY);
}

//texto pantalla 1
void escribirTexto(String mensaje, int letrasMostradas, float posX, float posY) {
  fill(255);
  textAlign(LEFT);
  text(mensaje.substring(0, letrasMostradas),posX, posY);
}

//boton
void mousePressed() {
  if (pantalla == 4) {
    if (mouseX > 240 && mouseX < 400 && mouseY > 400 && mouseY < 450) {
       pantalla = 1;
      contador = 0;
      letra1 = 0;
      textoY = 400;
      textoX2 = 50;
      textoY2 = 300;
      texto3X = 80;
      texto3Y = 400;
      texto4X = -300;
      opacidad3 = 0;
       textSize(30); 
      textFont(fuente);
    }
  }
}
