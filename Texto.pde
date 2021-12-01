//Clase texto
class Texto{
  //Variables para el texto,el tamaño y las coordenadas
  String label;
  float tam,x,y;
  color col;
  PFont font;
  //Constructor con parametros
  Texto(String label_,float x_,float y_,float tam_, color col_){
    x=x_;
    y=y_;
    label=label_;
    tam=tam_;
    col = col_;
  }
  //Funcion para escribir el texto.
  void escribir(){
    pushMatrix();
    pushStyle();
    font = loadFont ("SitkaSmall-Italic-48.vlw");
    textFont(font);
    textAlign(CENTER);
    textSize(tam);
    fill(col);
    text(label,x,y);
    popMatrix();
    popStyle();
  }
  
}
