class BotonCirc{
  String txt;
  float x , y, diam;
  color col;
  BotonCirc(String txt_, float x_, float y_, float diam_){
    x = x_;
    y = y_;
    txt = txt_;
    diam = diam_ ;
  }
  void dibujar(){
    pushStyle();
  pushMatrix();
  translate(x,y);
  fill(0,0,255);
  ellipse(0,0,diam,diam);
  if (encima()){
      fill(0,200,0);
    }else{
    fill(200,0,0);
          }
  textAlign(CENTER,CENTER);
  text(txt, 0 , 0);
  popMatrix();
  popStyle();
  }
  boolean encima(){
    if(dist(mouseX,mouseY,x,y)<diam/2){
         return true;
  }else{
    return false;
  }
  }
}
