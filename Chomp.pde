
class Chomp{
  float x,y,ancho,alto;
  int vida, puntaje;
  float desp = 5;
  
  
  Chomp(){
    x = width/2;
    y = 500;
    ancho= 70;
    alto=70;
    vida = 3;
    puntaje = 0;
  }
  
  void dibujar(){
    pushMatrix();
    pushStyle();
    image(img[0],x,y,ancho,alto);
    rectMode(CENTER);
    popMatrix();
    popStyle();
    pushStyle();
    noStroke();
    noFill();
    rect(x,y,ancho,alto);
    popStyle();
    
    
    if (keyPressed){
      if (keyCode==LEFT){
        x-=desp;
      }else if(keyCode==RIGHT){
        x+=desp;
      }
      x = constrain (x,0,width);
    }
  }
  void mover(){
    x= mouseX;
  }
  
  
}
