PImage imagen;

void setup(){
  size(800, 400);
  background(#F55252);
imagen = loadImage("herramientas.png");
  imagen.resize(400, 400);
}
void draw(){
 
  
  
quad(667,161, 561,127, 558,90, 669,124);
quad(558,90, 588,68, 694,99, 668,124);
  quad(668,123, 667,160, 691,138, 693,99);
  quad(694,181, 569,307, 591,325, 719,196);
  quad(720,197, 719,205, 594,330, 591,326);
  triangle(569,366, 591,325, 594,330);
  quad(570,307, 591,326, 570,365, 530,335);
  fill(#D3D1CD);
  quad(530,336, 523,341, 565,374, 570,366);
  fill(#F0D07E);
ellipse(700, 310, 40, 40);
fill(#D3D1CD);
ellipse(700, 310,25, 25);

image(imagen, 0, 0);
image(imagen, width/1,0);

fill(#EDCE7F);
beginShape();

vertex(632,138);
vertex(454,315);
vertex(446,315);
vertex(428,297);
vertex(426,283);
vertex(601,117);
vertex(600,116);
vertex(616,115);
vertex(627,119);
vertex(630,124);
vertex(632,135);
vertex(633,138);



endShape();

fill(#6F695C);
beginShape();

vertex(720,205);
vertex(721,197);
vertex(694,181);
vertex(688,187);
vertex(685,184);
vertex(685,177);
vertex(691,172);
vertex(698,173);
vertex(725,186);
vertex(731,193);
vertex(730,200);
vertex(725,207);
vertex(720,205);
endShape();

}
void mousePressed() {
  println("vertex("+mouseX+","+mouseY+");");
}
