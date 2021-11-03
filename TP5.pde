//TP5 Maximo Repollo

//inicializar variables.
//arreglo de imagenes para los fondos.
PImage [] img = new PImage [10];
//Variable De fuente para el texto del juego.
PFont font;
//Crear un objeto de la clase juego
Juego juego;
void setup(){
  //establecer tamaño
  size(600,600);
  //inicializar juego
  juego = new Juego(); 
  //cargar imagenes
  img [1] = loadImage("espacio.jpg");
  img [2] = loadImage("Miraak.jpg");
  
  
}

void draw(){
  //Evento que activa el juego.
  juego.actualizar();
}

void mousePressed(){
  //Eventos que requieren de clickear el mouse.
  juego.click();
}
