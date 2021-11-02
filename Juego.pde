class Juego{
  Enemigo[] enemigo;
  int cantEne,puntos;
  String estadojuego = "inicio";
  Chomp chompi;
  Boton boton;
  Boton boton2;
  Boton boton3;
  Texto texto;
  Texto texto2;
  Texto texto3;
  Texto texto4;
  Fondo fondo;
  
  Juego ( ){
    cantEne = 5;
    chompi = new Chomp();
      boton = new Boton("Comenzar", width/2, height/2,300,100,20);
      boton2 = new Boton("Creditos", width/2, 450,300,100,20);
      boton3 = new Boton ("Continuar", width/2,450,300,100,20);
      texto = new Texto(" Puntaje : ", 50 ,30, 20);
      texto2 = new Texto(" Perdiste! ", width/2, height/2, 40);
      texto3 = new Texto( "Ganaste!", width/2, height/2, 40);
      texto4 = new Texto("Chomp \n vs \n Miirak", width/2, 90,40);
      fondo = new Fondo();
    enemigo = new Enemigo[cantEne];
    for(int i=0; i<cantEne ; i++){
      enemigo[i] = new Enemigo();
    }
  }
  
  void actualizar(){
    if (estadojuego.equals("inicio")){
      image(img[2],0,0,600,600);
      texto4.escribir();
      boton.dibujar();
      boton2.dibujar();
    }else if (estadojuego.equals("ingame")){
        
        fondo.impr();
        texto.escribir();
        chompi.dibujar();
        for(int i=0; i<cantEne ; i++){
        enemigo[i].dibujo();
        enemigo[i].mover();
        enemigo[i].resetear();
        if( enemigo[i].colision(chompi.x,chompi.y,chompi.ancho,chompi.alto)){
          puntos++;
          println( puntos);
          }
          }
         if(puntos == 10){
           estadojuego="ganar";
           
         }
        }else if (estadojuego.equals("creditos")){
      
    }else if(estadojuego.equals("perder")){
      puntos = 0;
      texto2.escribir();
    }else if(estadojuego.equals("ganar")){
      puntos = 0;
      texto3.escribir();
      boton3.dibujar();
    }
          
   
  }
  
  void click(){
    if (estadojuego.equals("inicio")){
      if(boton.encima()){
        estadojuego = "ingame";
      }
  }else if(estadojuego.equals("ganar")){
    if(boton3.encima()){
      estadojuego="inicio";
    }
  }
  }
}
