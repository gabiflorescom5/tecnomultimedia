//Alumno: Gabriel Flores
// comision 3
//no pude realizar mi trabajo, no encontré la forma :(
//intente con circulos pero no salio

PImage imagen; 

float angulo;


void setup(){
  size(800,400);
imagen = loadImage("art-op.jpg");
}

void draw(){
  
   background(255);
  
  translate(600,200);
  imagen.resize(400,400);
  dibujaCircMadre(15,200);
  image(imagen,-600,-200);

  invertirColores();
  if (mouseX>400){
    angulo+=0.1;
  }
 
}
 void invertirColores(){
   //rectMode (CORNER);
   //circle(600,200, 200);
   //blendMode (DIFFERENCE);
   triangle(600,200,800,400,800,0);   

 }
      
void mousePressed() {
  angulo=0;
}
