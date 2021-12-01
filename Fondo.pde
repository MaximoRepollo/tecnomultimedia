//Clase Fondo

class Fondo{
PImage [] img = new PImage [24];
  
  Fondo(){
    img [0]= loadImage("Chomp1.jpg");
  img [1]= loadImage("Chomp2.jpg");
  img [2]= loadImage("Chomp3.jpg");
  img [3]= loadImage("Chomp4.jpg");
  img [4]= loadImage("Chomp5.jpg");
  img [5]= loadImage("Chomp6.jpg");
  img [6]= loadImage("Chomp7.jpg");
  img [7]= loadImage("Chomp8.jpg");
  img [8]= loadImage("Chomp9.jpg");
  img [9]= loadImage("Chomp10.jpg");
  img [10]= loadImage("Chomp11.png");
  img [11]= loadImage("Chomp12.png");
  img [12]= loadImage("Chomp13.png");
  img [13]= loadImage("Chomp14.png");
  img [14]= loadImage("Chomp15.jpg");
  img [15]= loadImage("Chomp16.jpg");
  img [16]= loadImage("Chomp17.jpg");
  img [17]= loadImage("Chomp18.jpg");
  img [18]= loadImage("Chomp19.jpg");
  img [19]= loadImage("Chomp20.jpg");
  img [20]= loadImage("Chomp21.png");
  img [21]= loadImage("Chomp22.jpg");
  img [22]= loadImage("skyrim-1.jpg");
  img [23]= loadImage("logo600.jpg");
  }
  //Funcion para dibujar el fondo ingame.
  void impr(int Im){
    image(img[Im],0,0,600,600);
  }
}
