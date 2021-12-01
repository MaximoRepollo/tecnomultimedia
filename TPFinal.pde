//Maximo Repollo TecnoMultimedia1 TP Final
// Link a explicacion del codigo: https://youtu.be/hZLj5bJnOw0
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
