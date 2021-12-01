//Clase juego en la que se desenvuelve la mayor parte del programa.
class Juego{
  //Declaración de variables y creación de diferentes objetos.
  //Arreglo de enemigos.
  Enemigo[] enemigo;
  float sorteo;
  int cantEne,puntos,vidas;
  String estadojuego = "inicio";
  PImage [] img= new PImage [7];
  Chomp chompi;
  Boton boton;
  Boton boton2;
  Boton boton3;
  Boton boton4;
  Texto texto;
  Texto texto2;
  Texto texto3;
  Texto texto4;
  Texto vidass;
  Fondo fondo;  
  //Constructor del juego
  Juego ( ){
    //Establecer cantidad de vidas y de enemigos.
    vidas = 5;
    cantEne = 5;
    //Declarar los objetos
    chompi = new Chomp();      
    //Establecer los botones y los textos.
      boton = new Boton("Comenzar", width/2, height/2,300,100,20);
      boton2 = new Boton("Creditos", width/2, 450,300,100,20);
      boton3 = new Boton ("Continuar", width/2,450,300,100,20);
      boton4 = new Boton ("Continuar", width/2, 400, 300,100,20);
      texto = new Texto(" Puntaje :  ", 50 ,30, 20,color(255));
      texto2 = new Texto(" Perdiste! ", width/2, 250, 50,color(255));
      texto3 = new Texto( "Ganaste!", width/2, height/2, 40,color(255));
      texto4 = new Texto("Chomp \n vs \n Miirak", width/2, 90,40,color(255));
      vidass = new Texto("Vidas : " , 400 , 30, 20,color(255));
      fondo = new Fondo();
      img [0] = loadImage("Miraak.jpg");
      img [1] = loadImage("espacio.jpg");
      //Crear los enemigos del arreglo.
    enemigo = new Enemigo[cantEne];
    for(int i=0; i<cantEne ; i++){
      enemigo[i] = new Enemigo();
    }
  }
  //Funcion actualizar, que sostiene al juego.
  void actualizar(){
    //Evaluar condicion de juego para cambiar de pantalla.
    //pantalla de inicio
    if (estadojuego.equals("inicio")){
      image(img[0],0,0,600,600);
      texto4.escribir();
      boton.dibujar();
      boton2.dibujar();
      //Pantalla dentro de juego.
    }else if (estadojuego.equals("ingame")){
        image(img [1],0,0,600,600);
        texto.escribir();
        vidass.escribir();    
        //Anotar la cantidad de puntos en pantalla
        text( puntos,100,30,10);               
        chompi.dibujar();     
        //dibujar a los enemigos del arreglo en el ciclo for.
        for(int i=0; i<cantEne ; i++){
          
          enemigo[i].dibujo();
          enemigo[i].mover();
          //Si el enemigo pasa cierto punto de y se pierde una vida.
          if( enemigo[i].y >= 630){
           vidas--;
         }
          enemigo[i].resetear();
          text( vidas, 450,30,10);
          //detectar colision de enemigo con personaje y sumar puntos al contador.
        if( enemigo[i].colision(chompi.x,chompi.y,chompi.ancho,chompi.alto)){
          puntos++;
          println( puntos);
          }
          }
          //Si los puntos llegan a 30 el estado del juego pasa a ser ganar.
         if(puntos == 25){
           estadojuego="ganar";
           
         }
         //Si las vidas llegan a 0, pierde el juego.
         if(vidas == 0){
           estadojuego="perder";
         }
         //Estado creditos(Se usará en el proximo tp, para acoplarse con los creditos
         //de la aventura grafica.
        }else if (estadojuego.equals("creditos")){
      
    }else if(estadojuego.equals("perder")){
      vidas = 5;
      puntos = 0;
      texto2.escribir();
      boton4.dibujar();
      //Estado perder, resetea las vidas,los puntos y dibuja un boton para continuar
    }else if(estadojuego.equals("ganar")){
      vidas = 5;
      puntos = 0;
      texto3.escribir();
      boton3.dibujar();
      //Estado ganar,que hace casi lo mismo a excepcion del texto
    }
          
   
  }
  //Funcion Click del juego donde se encuentran todos los elementos que van dentro
  //de mousePressed.
  void click(){
    //Establecer cambio de estadojuego de acuerdo a presionar los botones.
    if (estadojuego.equals("inicio")){
      if(boton.encima()){
        estadojuego = "ingame";
      }
      else if(boton2.encima()){
        estadojuego="creditos";
      }
  }else if(estadojuego.equals("ganar")){
    if(boton3.encima()){
      estadojuego="gane";
      
    }
  }else if(estadojuego.equals("perder")){
     if(boton4.encima()){
       estadojuego="perdi";
     }
  }
  }
}
