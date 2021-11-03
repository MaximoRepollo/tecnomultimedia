//Clase texto
class Texto{
  //Variables para el texto,el tamaño y las coordenadas
  String label;
  float tam,x,y;
  //Constructor con parametros
  Texto(String label_,float x_,float y_,float tam_){
    x=x_;
    y=y_;
    label=label_;
    tam=tam_;
  }
  //Funcion para escribir el texto.
  void escribir(){
    pushMatrix();
    pushStyle();
    font = loadFont ("SitkaSmall-Italic-48.vlw");
    textFont(font);
    textAlign(CENTER);
    textSize(tam);
    fill(255);
    text(label,x,y);
    popMatrix();
    popStyle();
  }
  
}
