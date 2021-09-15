//Funcion para dibujar los circulos de opciones, escribirles dentro y colorearlos.
void dibujaBotonCircular(String txt_ , float x_, float y_, float diam, color color_ ){
  pushStyle();
  pushMatrix();
  translate(x_,y_);
  fill(color_);
  ellipse(0,0,diam,diam);
  fill(255);
  textAlign(CENTER,CENTER);
  text(txt_, 0 , 0);
  popMatrix();
  popStyle();
}
//Funcion que calcula la colision con las superficies circulares.
boolean colisionSupCircular( float x_,float y_, float xSup_, float ySup_, float rSup_) {
  float distancia = dist(x_,y_,xSup_,ySup_);
  if(distancia<rSup_){
  return true;
  } else {
    return false;
  }
}
//Funcion para escribir texto, modificar su alineacion, tamaño y color.
void texto(String s_ , float x_, float y_, float size_, int alin, color color_, PFont f_){
  pushStyle();
  fill(color_);
  textFont(f_);
  textSize(size_);
  textLeading(40);
  textAlign(alin);
  text( s_,x_,y_);
  popStyle();
}
