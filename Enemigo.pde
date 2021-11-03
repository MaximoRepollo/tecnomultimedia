//Clase Enemigo. declaracion de variables.
class Enemigo {
  int vidas;
  float x, y, ancho, alto, velocidad;
  PImage img;

//Constructor de las clases, Ubicar a los enemigos y carga de imagen
  Enemigo() {
    ancho = 80;
    alto = 40;
    vidas = 5;
    Ubic();
    img = loadImage("atk.png");
  }
//Ubicar al azar a los enemigos.
  void Ubic() {
    x= random(0, width);
    y= random (-100, 0);
  }
//Dibujar a los enemigos y a su hitbox.
  void dibujo() {
    pushMatrix();
    pushStyle();
    translate(x, y);
    textAlign(CENTER);
    image(img,0,0,ancho,alto);
    noFill();
    noStroke();
    rect(0, 0, ancho, alto);
    popStyle();
    popMatrix();
  }
  //Funcion para que los enemigos se muevan hacia abajo en funcion a la velocidad.
  void mover() {
    velocidad = random(0.5, 5);
    y+=velocidad;
  }
  //Resetear la posicion del enemigo si excede cierta coordenada de y.
  void resetear(){
    if(y >= 630){
      y=-10;    
    }
  }
  //Calcular colision con el personaje.
  boolean colision(float x_, float y_,float ancho_,float alto_) {
    if (
      x-ancho/2 < x_+ancho_ &&  x+ancho/2 > x_-ancho_/2 
     && y-alto/2 < y_+alto_/2 && y+alto/2 > y_-alto_/2) {
       y=-10;
       Ubic(); 
      return true;
    } else{
      return false;
    }
  }
}
