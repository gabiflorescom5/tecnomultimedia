void dibujaCircMadre(float cant_, float radio_){
//esta funcion espera un valor
//para cantidad de circulo y dibuja
//alrededor de la circunferencia segun el radio
push();
float step = 360/ cant_;
for (int i = 0; i <75 ; i+=5){
  //fill( i%2*255);
  rotate(radians(step));
  //ellipse(100, 20, 200,200);
  //scale(0.9);
 curveTightness(0);
  curve(150,150,0,0,250,50,600,400);
  //beizer(1,1,0,0,250,50,600,400);
  //line(0,0,800,400);
   //strokeWeight(5);
  if (mouseX>400){
    angulo+=0.1;
  }

 }
 pop();
}
