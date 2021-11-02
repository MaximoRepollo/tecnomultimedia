//Maximo Repollo TP5
int cantb, pantalla;
PImage [] img = new PImage [10];
boolean DEBUG = true;
PFont font;
Chomp chompa;

Juego juego;
void setup(){
  frameRate(60);
  size(600,600);
  juego = new Juego(); 
  img [0]= loadImage("Champa Sprite.png");
  img [1] = loadImage("espacio.jpg");
  img [2] = loadImage("Miraak.jpg");
  
  chompa = new Chomp();
}

void draw(){
  juego.actualizar();
}

void mousePressed(){
  juego.click();
}
