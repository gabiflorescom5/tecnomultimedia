PFont fuenteInicial, fuenteUno, fuenteDos, fuenteTres, fuenteCuatro;
PImage p1, p2, p3, p4, p5;


int contador = 0;
int colorFondo;
int radio = 150;
int pantalla;
int a, b, c, d;

float velocidad1, velocidad2;
float posX1, posY1;
float posX2, posY2;
float posX3;

float tinte;
float medidaText;

boolean botonInicio = false;
boolean botonFinal = false;


void setup() {
  size (640, 480);
  background(colorFondo);

  colorFondo = 0;
  fuenteInicial = loadFont("CalifornianFB-Reg-25.vlw"); //letra boton inicio


  //para pantalla uno
  p1 = loadImage("imagen1.jpg"); // imagen uno
  posX1 = -80;
  posY1 = 0;
  posX2 = 700;
  velocidad1 = 3;
  fuenteUno = loadFont ("Arial-Black-25.vlw");//letra pantalla uno
 

  //para pantalla dos
  posY2 = 480;
  p2 = loadImage("imagen2.jpg"); //imagen dos
  fuenteDos = loadFont("Dutch801BT-ExtraBold-48.vlw");
  tinte = 50;

  //para pantalla tres
  posX3 = -900;
  p3 = loadImage("imagen3.jpg"); //imagen tres
  fuenteTres = loadFont("FranklinGothic-Heavy-48.vlw");
  velocidad2 = 3;
  medidaText = 35;
  

  //para pantalla cuatro
  p4 = loadImage ("imagen4.jpg"); //imagen cuatro
  fuenteCuatro = loadFont("SitkaSubheading-BoldItalic-48.vlw");
 
  
  //para pantalla cinco
  p5 = loadImage ("imagen5.png"); //imagen cuatro
  fuenteCuatro = loadFont("SegoeScript-Bold-48.vlw");
  a = 420;
  b = 400;
  c = 200;
  d = 50;
}

void draw() {
  println("contador", contador);

  if (pantalla == 0) {

    background(colorFondo);
    noStroke();
    fill(255,0,0);
    circle(width/2, height/2, radio);
    fill(0);
    textAlign(CENTER, LEFT);
    textSize(25);
    textFont(fuenteInicial);
    text("Comenzar", width/2, height/1.95);
  }

  //pantalla uno
  if (pantalla == 1) {

    contador ++;
    background(colorFondo);
    image (p1, posX2, posY1);
    p1.resize(740, 480);
    posX2 -= velocidad1;
  }
  if (posX2 == posX1) {
    velocidad1 = 0;
  }
  if (contador>=240) {

    //texto pantalla uno
    fill(colorFondo);
    noStroke();
    textFont(fuenteUno);
    fill(#406254);
    stroke(#406254);
    strokeWeight(6);
    line(90, 376, 550,376);

    text("Una motosierra...¿como funciona?", 20, 350, 600, 320);
  }

  //pantalla dos
  if (contador>=600) {
    background(colorFondo, tinte/10);
    tint(255, tinte++);
    image (p2, 0, 0);
    p2.resize(640, 480);

    //texto pantalla dos
    textFont(fuenteDos);
    textSize(medidaText);
    text("Esta herramienta funciona con un motor que energiza una cadena metálica, impulsada por un embrague centrífugo, la cual se mueve a altas velocidades alrededor de una ranura en la barra guía de aserrado.", 20, posY2, 600, 320);
    posY2 --;
  }

  //pantalla tres
  if (contador>=1350) {
    contador ++;

    image (p3, posX3, 0);
    posX3 += velocidad2;
  }

  if (posX3 == -150) {

    velocidad2 = 0;
    


    //texto pantalla tres
    fill(255);
    textFont(fuenteDos);
    textSize(medidaText);
    text("Cuando la cadena en movimiento hace contacto con la madera, sus afilados dientes se deslizan por la superficie y cortan la madera.", 30, 150, 550, 400);
  }
  //pantalla cuatro
  if (contador>=2400) {

    image (p4, 0, 0);
    p4.resize(640, 480);
    

   
    
  }
  //pantalla cinco
  if (contador>=3450) {

    image (p5, 0, 0);
    
    fill(255, 250, 80);
    textSize(50);
    textFont(fuenteCuatro);
    text("¡Gracias por ver!", 330, 250);

    fill(50);
    strokeWeight(3);
    rect(a, b, c, d);

    fill(240, 0, 90);
    textSize(25);
    text("volver a ver", 520, 435);
   }
}


void mousePressed() {
  
  println("vertex("+mouseX+","+mouseY+");");

  //boton de inicio
  if (dist(mouseX, mouseY, width/2, height/2) < radio/2) {
    botonInicio = true;
    pantalla = 1;
  }
  if (mouseX>a && mouseX<a+c && mouseY>b && mouseY<b+d) {
    botonFinal = true;
    contador = 0;
    pantalla = 0;
    posX1 = -80;
    posY1 = 0;
    posX2 = 700;
    velocidad1 = 3;
    
    posY2 = 480;
    tinte = 50;
    posX3 = -900;
    velocidad2 = 3;
    medidaText = 35;
    
  }
}
