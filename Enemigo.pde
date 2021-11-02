
class Enemigo {
  float x, y, ancho, alto, velocidad;
  PImage img;

  Enemigo() {
    ancho = 80;
    alto = 40;
    Ubic();
  }

  void Ubic() {
    x= random(0, width);
    y= random (0,  100);
  }

  void dibujo() {
    pushMatrix();
    pushStyle();
    translate(x, y);
    textAlign(CENTER);
    fill(200, 0, 0);
    rect(0, 0, ancho, alto);
    popStyle();
    popMatrix();
  }
  void mover() {
    velocidad = random(0.5, 1.5);
    y+=velocidad;
  }
  void resetear(){
    if(y == 650){
      y=-10;
    }
  }
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
