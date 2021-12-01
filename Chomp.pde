//Clase del personaje
class Chomp{
  //Variables de personaje,posicion,dimensiones,velocidad y la imagen del personaje
  float x,y,ancho,alto;
  int  puntaje;
  float desp = 8;
  PImage chom;
  
  //Constructor del personaje
  Chomp(){
    x = width/2;
    y = 500;
    ancho= 70; 
    alto=70;
    puntaje = 0;
    chom= loadImage("Champa Sprite.png");
  }
  //Funcion que dibuja al personaje y su hitbox.
  void dibujar(){
    pushMatrix();
    pushStyle();
    image(chom,x,y,ancho,alto);
    rectMode(CENTER);
    popMatrix();
    popStyle();
    pushStyle();
    noStroke();
    noFill();
    rect(x,y,ancho,alto);
    popStyle();
    
    //Los controles del personaje, se mueve de derecha a izquierda.
    if (keyPressed){
      if (keyCode==LEFT){
        x-=desp;
      }else if(keyCode==RIGHT){
        x+=desp;
      }
      //Los limites de X para que el personaje no se pase.
      x = constrain (x,0,width);
    }
  } 
}
