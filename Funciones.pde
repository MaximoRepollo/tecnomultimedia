
void dibujaBotonCircular(String label_ , float x_, float y_, float diam ){
  pushStyle();
  pushMatrix();
  translate(x_,y_);
  fill(100);
  ellipse(0,0,diam,diam);
  fill(255);
  textAlign(CENTER,CENTER);
  text(label_, 0 , 0);
  popMatrix();
  popStyle();
}

boolean colisionSupCircular( float x_,float y_, float xSup_, float ySup_, float rSup_) {
  float distancia = dist(x_,y_,xSup_,ySup_);
  if(distancia<rSup_){
  return true;
  } else {
    return false;
  }
}

void texto(String s_ , float x_, float y_, float size_, int alin, color color_){
  pushStyle();
  fill(color_);
  textSize(size_);
  textLeading(40);
  textAlign(alin);
  text( s_,x_,y_);
  popStyle();
}
