Aventura aventura;
Juego juego;

void setup(){
  size(600,600);
  aventura = new Aventura();
  juego = new Juego();
}

void draw(){
  aventura.actual();
}

void mousePressed(){
  aventura.click();
}
