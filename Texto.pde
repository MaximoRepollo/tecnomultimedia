class Texto{
  String label;
  float tam,x,y;
  
  Texto(String label_,float x_,float y_,float tam_){
    x=x_;
    y=y_;
    label=label_;
    tam=tam_;
  }
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
