class Aventura{
  int canttxt = 60;
  PImage [] img = new PImage [24];
  String[] hist = new String[30];
  String[] opc = new String[20];
  String[] finales = new String[10];
  PFont nfuente;
  float pantalla, Xt ;
  BotonCirc [] boton= new BotonCirc[37];
  Juego juego;
  Creditos creditos;
  Texto [] texto= new Texto[38];
  Fondo  fondo;
  Aventura(){
    creditos = new Creditos();
    juego= new Juego();
    fondo = new Fondo();
    opc[0] = "La gran aventura de Chomp";
    opc[1]= "Iniciar";
    opc[2]="Creditos";
    opc[3]="Preguntar\n por\n hermano";
    opc[4]="Saquear";
    opc[5]="Luchar";
    opc[6]="Rezar\n a\n Talos";
    opc[7]="Espada\n Daedra";
    opc[8]="Arco\n Elfico";
    opc[9]="Romper\nBaston";
    opc[10]="Conservar\nBaston";
    opc[11]="Seguir\n por el\n camino";
    opc[12]="Ir hacia\n la derecha";
    opc[13]="Persuadir";
    opc[14]="Huir";
    hist[0] = "Chomp se despierta muy temprano por la mañana\nlisto para un productivo dia.";
  hist[1] ="Chomp deberia salir de su habitacion?";
  hist[2] = "Chomp va hacia el comedor para desayunar\n pero se encuentra con algo terrible...";
  hist[3] = "Su hermano Nikel habia desaparecido\n y habia un gran portal en pleno comedor.\n Chomp entra al portal.";
  hist[4]= "Al cruzar por el portal, Chomp se\n encuentra en un misterioso lugar\n Que camino deberia tomar Chomp?";
  hist[5]="Al dirigirse por el camino de la derecha\n Chomp llega hasta una ciudad llamada\n Carrera blanca";
  hist[6]="Que deberia hacer Chomp ahora?";
  hist[7]="Chomp pregunta por su hermano perdido\n y un ciudadano reconoce haberle \nvisto hace un momento";
  hist[8]="El ciudadano le explica que Nikel \n habia sido raptado por el malvado Miraak\n y que este ha huido\n a Sovngarde";
  hist[9]="Chomp inicia su camino hacia\n Sovngarde,pero se encuentra a unos\n bandidos\n Que deberia hacer Chomp?";
  hist[10]="Al rezarle a Talos,un rayo cae\n del cielo acabando con los bandidos\n asi que Chomp continua su camino";
  hist[11]="Al continuar su camino,Chomp \n llega hacia la cueva\n que conduce a Sovngarde.\n Dentro de ella hay un portal";
  hist[12]="Chomp cruza el portal,llegando\n a Sovngarde.Apenas llegar encuentra dos\n armas.¿Cual deberia elegir?";
  hist[13]="De repente, el malvado Miraak\n aparece,portando su baston magico.\n Chomp porta su espada y lo ataca.";
  hist[14]="Con el poder de su espada\n(mayormente suerte) Chomp acaba con\n Miraak,el cual suelta su baston";
  hist[15]="Chomp ve el baston de Miraak\n en el suelo\n¿Que deberia hacer Chomp?";
  hist[16]="Chomp rompe el baston\n liberando a su hermano Nikel";
  hist[17]="Chomp sigue su camino\n pero siente un mal presentimiento\nQue deberia hacer Chomp?";
  hist[18]="Chomp decide saquear\n pero en eso unos guardias le descubren\nQue deberia hacer Chomp?";
  
  finales[0] = "Final vago:\nChomp se queda en la habitacion\n y no pasa nada.";
  finales [1] = "Final muerto: \n Chomp se cae por un barranco\n y muere.";
  finales[2]= "Final verdadero:\n Chomp salva a Nikel y se\n quedan para siempre\n en Sovngarde";
  finales[3]="Final Edgy:\nChomp conserva el baston y se convierte\nen el nuevo Miraak.";
  finales[4]="Final criminal:\nChomp saquea toda Carrera Blanca y\n se convierte en el rey\n de los ladrones";
  finales[5]="Final preso:\n Atrapan a Chomp y lo encierran en el\n calabozo";
  finales[6]="Final muerto:\n Chomp trata de luchar pero los bandidos\n lo apalizan.";
  finales[7]="Final muerto:\n Chomp toma el arco,pero no flechas, por\n lo que es aniquilado.";
    boton[0] = new BotonCirc(opc[1],450,500,150);
    boton[1] = new BotonCirc(opc[2],150,500,150);
    boton[2] = new BotonCirc("Continuar",width/2,500,200);
    boton[3] = new BotonCirc("Si",450,500,100 );
    boton[4] = new BotonCirc("No",150,500,100 );
    boton[5] = new BotonCirc("Continuar",width/2,500,200 );
    boton[6] = new BotonCirc("Continuar",width/2,500,200 );
    boton[7] = new BotonCirc("Continuar",width/2,500,200 );
    boton[8] = new BotonCirc("Derecha",450,500,200 );
    boton[9] = new BotonCirc("Izquierda",150,500,200);
    boton[10]= new BotonCirc("Continuar",width/2,500,200 );
    boton[11]= new BotonCirc(opc[3],450,500,220 );
    boton[12]= new BotonCirc(opc[4],150,500,220 );
    boton[13]= new BotonCirc("Continuar",width/2,500,200 );
    boton[14] = new BotonCirc("Continuar",width/2,500,200);
    boton[15] = new BotonCirc(opc[5],450,500,180  );
    boton[16] = new BotonCirc(opc[6],150,500,180 );
    boton[17] = new BotonCirc("Continuar",width/2,500,200 );
    boton[18] = new BotonCirc("Continuar",width/2,500,200);
    boton[19] = new BotonCirc(opc[7],450,500,180);
    boton[20] = new BotonCirc(opc[8],150,500,180);
    boton[21] = new BotonCirc("Continuar",width/2,500,200);
    boton[22] = new BotonCirc("Continuar",width/2,500,200 );
    boton[23] = new BotonCirc (opc[9],450,500,180 );
    boton [24] = new BotonCirc (opc[10],150,500,180  );
    boton [25] = new BotonCirc ( "Continuar",width/2,500,200  );
    boton [26] = new BotonCirc ("Continuar",width/2,500,200  );
    boton [27] = new BotonCirc ("Continuar",width/2,500,200  );
    boton [28] = new BotonCirc(opc[11],450,500,200  );
    boton [29] = new BotonCirc (opc[12],150,500,200    );
    boton [30] = new BotonCirc ("Continuar",width/2,500,200 );
    boton [31] = new BotonCirc (opc[13],450,500,200  );
    boton [32] = new BotonCirc (opc[14],150,500,200  );
    boton [33] = new BotonCirc ("Continuar",width/2,500,200 );
    boton [34] = new BotonCirc ("Continuar",width/2,500,200 );
    boton [35] = new BotonCirc ("Continuar",width/2,500,200 );
    boton [36] = new BotonCirc ("Continuar",width/2,500,200 );
    texto [0] = new Texto (opc[0], width/2,100,50,color(0,0,255)   );
    texto [1] = new Texto(hist[0], width/2,50,24,color(0,0,255));
    texto [2] = new Texto(hist[1], width/2,50,28,color(0,0,255)  );
    texto [3] = new Texto(hist[2],width/2,20,28,color(0,0,255) );
    texto [4] = new Texto(finales[0],width/2,60,28,color(0,0,255) );
    texto [5] = new Texto (hist[3],width/2,20,28,color(0,0,255) );
    texto [6] = new Texto (hist[4],width/2,50,28,color(0,0,255) );
    texto [7] = new Texto (hist[5],width/2,20,28,color(0,0,255)  );
    texto [8]= new Texto (hist[6],width/2,20,28 ,color(0,0,255) );
    texto [9]= new Texto (hist[7],width/2,20,28 ,color(0,0,255) );
    texto [10]= new Texto (hist[8],width/2,20,28,color(0,0,255)  );
    texto[11]= new Texto (hist[9],width/2,20,28 ,color(0,0,255) );
    texto[12]= new Texto (hist[10],width/2,20,28,color(0,0,255)  );
    texto[13]= new Texto (hist[11],width/2,20,28 ,color(0,0,255) );
    texto [14]=new Texto (hist[12],width/2,20,28 ,color(0,0,255) );
    texto [15]=new Texto (hist[13],width/2,20,28 ,color(0,0,255) );
    texto [16]=new Texto (hist[14],width/2,20,28 ,color(0,0,255) );
    texto [17]=new Texto (hist[15],width/2,20,28 ,color(0,0,255) );
    texto [18]=new Texto (hist[16],width/2,20,28 ,color(0,0,255) );
    texto [19]=new Texto (finales[2],width/2,40,30 ,color(0,200,0) );
    texto [20]=new Texto (finales[3],width/2,40,30 ,color(0,0,255) );
    texto [21] = new Texto (hist[17],width/2,40,30 ,color(255,0,0));
    texto [22] = new Texto (finales[1],width/2,40,30 ,color(0,0,255));
    texto [23]= new Texto (hist[18],width/2,40,30 ,color(0,0,255));
    texto [24]= new Texto (finales[4],width/2,40,30 ,color(0,0,255));
    texto [25]= new Texto (finales[5],width/2,40,30 ,color(0,0,255));
    texto [26]= new Texto(finales[6],width/2,40,30  ,color(0,0,255));
    texto [27]= new Texto(finales[7],width/2,40,30 ,color(0,0,255));
    texto[28]= new Texto("Chomp toma su arma, y\n se prepara para pelear.",width/2,40,30,color(255));
    
    
    
    
    pantalla=0;
    Xt=0;
    
  }
  void actual(){
    println(pantalla );
    if ( pantalla == 0){
    fondo.impr(22);
    texto [0].escribir();
    boton [0].dibujar();
    boton [1].dibujar();
  }
  //Cambiar de acuerdo al valor de pantalla indicado
  else if(pantalla == 1){
    fondo.impr(0);
    texto [1].escribir();
    boton [2].dibujar();
  }
  else if(pantalla == 2){
     fondo.impr(0);
     texto [2].escribir();
     boton [3].dibujar();
     boton [4].dibujar();
  }
  else if(pantalla == 3){
    fondo.impr(1);
    texto [3].escribir();
    boton [5].dibujar();
   
  }
  else if(pantalla == 4){
    fondo.impr(21);
    texto [4].escribir();
    boton [6].dibujar();
  }
  else if(pantalla== 5){
    fondo.impr(1);
    texto [5].escribir();
    boton [7].dibujar();
  }
  else if(pantalla==6){
    fondo.impr(3);
    texto [6].escribir();
    boton [8].dibujar();
     boton[9].dibujar();
  }
  else if(pantalla==7){
    fondo.impr(5);
     texto [7].escribir();
     boton[10].dibujar();
    
  }
  else if(pantalla==8){
    fondo.impr(5);
    texto [8].escribir();
    boton[11].dibujar();
    boton[12].dibujar();  
  }
  else if(pantalla==9){
    fondo.impr(6);
     texto [9].escribir();
     boton[13].dibujar();
  }
  else if(pantalla==10){
    fondo.impr(6);
    texto [10].escribir();
     boton[14].dibujar();
  }
  else if(pantalla==11){
    fondo.impr(7);
    texto [11].escribir();
    boton[15].dibujar();
    boton[16].dibujar();
  }
  else if(pantalla==12){
    fondo.impr(8);
    texto [12].escribir();
    boton [17].dibujar();
  }
  else if(pantalla==13){
    fondo.impr(9);
    texto [13].escribir();
    boton[18].dibujar();
  }
  else if(pantalla==14){
   fondo.impr(10);
    texto [14].escribir();
    boton[19].dibujar();
    boton[20].dibujar();
  }
  else if(pantalla==15){
    fondo.impr(10);
    texto [28].escribir();
    boton[21].dibujar();
  }
  else if(pantalla==16){
     juego.actualizar();
     if (juego.estadojuego.equals("gane")){
        pantalla = 17;
     }
  }
  else if(pantalla==17){
    fondo.impr(12);
    texto [17].escribir();
    boton[23].dibujar();
    boton[24].dibujar();
  }
  else if(pantalla==18){
    fondo.impr(13);
    texto [18].escribir();
    boton[25].dibujar();
  }
  else if(pantalla==19){
    fondo.impr(13);
    texto [19].escribir();
   boton[26].dibujar();
  }
  else if(pantalla==20){
    fondo.impr(14);
    texto [20].escribir();
    boton[27].dibujar();
  }
  else if(pantalla==21){
    fondo.impr(4);
    texto [21].escribir();;
     boton[28].dibujar();
     boton[29].dibujar();
  }
  else if(pantalla==22){
    fondo.impr(18);
    texto [22].escribir();
    boton[30].dibujar();
  }
  else if(pantalla==23){
    fondo.impr(15);
    texto [23].escribir();
    boton[31].dibujar();
    boton[32].dibujar();
  }
  else if(pantalla==24){
    fondo.impr(16);
    texto [24].escribir();
    boton[33].dibujar();
  }
  else if(pantalla==25){
    fondo.impr(17);
    texto [25].escribir();
   boton[34].dibujar();
  }
  else if(pantalla==26){
    fondo.impr(19);
    texto [26].escribir();
    boton[35].dibujar();
  }
  else if(pantalla==27){
    fondo.impr(20);
    texto [27].escribir();
    boton[36].dibujar();
  }
  else if(pantalla==28){
    creditos.pasar(pantalla);
  }
  }
  void click(){
  if(pantalla ==0){
    if (boton[0].encima()){
      pantalla = 1;
    }
    else if( boton[1].encima()){
      pantalla = 28;
  }  
}
else if(pantalla ==1){
  if (boton[2].encima()){
    pantalla = 2;
  }
}
else if (pantalla ==2){
  if (boton[3].encima()){
    pantalla =3;
  }
  else if(boton [4].encima()){
    pantalla = 4;
  }
}
else if (pantalla == 3){
  if ( boton[5].encima()){
    pantalla = 5;
  }
}
else if (pantalla == 4){
  if (boton[6].encima()){
    pantalla = 0;
  }
}
else if (pantalla ==5){
  if(boton[7].encima()){
    pantalla = 6;
  }
}
else if(pantalla ==6){
  if(boton[9].encima()){
    pantalla = 21;
  }
  else if(boton [8].encima()){
    pantalla = 7;
  }
}
  else if(pantalla == 7){
    if(boton[10].encima()){
      pantalla = 8;
    }
  }
  else if(pantalla ==8){
    if(boton[12].encima()){
      pantalla = 23;
    }
    else if(boton[11].encima()){
      pantalla = 9;
    }
  }
  else if(pantalla==9){
    if(boton[13].encima()){
      pantalla=10;
    }
  }
  else if(pantalla==10){
    if(boton[14].encima()){
      pantalla = 11;
    }
  }
  else if(pantalla ==11){
    if(boton[15].encima()){
      pantalla = 26;
    }
    else if(boton[16].encima()){
      pantalla = 12;
    }
  }
  else if(pantalla ==12){
    if(boton[17].encima()){
      pantalla = 13;
    }
  }
  else if(pantalla ==13){
    if(boton[18].encima()){
      pantalla = 14;
    }
  }
  else if(pantalla ==14){
    if(boton[19].encima()){
      pantalla=15;
    }
    else if(boton[20].encima()){
      pantalla=27;
    }
  }
  else if(pantalla==15){
    if(boton[21].encima()){
      pantalla=16;
    }
  }
  else if(pantalla==16){
    juego.click();
  }
  else if(pantalla==17){
    if(boton[23].encima()){
      pantalla=18;
    }
    else if(boton[24].encima()){
      pantalla=20;
    }
  }
  else if(pantalla==18){
    if(boton[25].encima()){
      pantalla = 19;
    }
  }
  else if(pantalla==19){
    if(boton[26].encima()){
      pantalla=0; 
    }
  }
  else if(pantalla==20){
    if(boton[27].encima()){
      pantalla=0;
    }
  }
  else if(pantalla ==21){
    if(boton[28].encima()){
      pantalla=22;
    }
    else if(boton[29].encima()){
      pantalla = 7;
    }
  }
  else if(pantalla==22){
    if(boton[30].encima()){
      pantalla = 0;
    }
  }
  else if(pantalla==23){
    if(boton[31].encima()){
      pantalla = 24;
    }
    else if(boton[32].encima()){
      pantalla=25;
    }
  }
  else if(pantalla==24){
    if(boton[33].encima()){
      pantalla=0;
    }
  }
  else if(pantalla==25){
    if(boton[34].encima()){
      pantalla = 0;
    }
  }
  else if(pantalla==26){
    if(boton[35].encima()){
      pantalla=0;
    }
  }
  else if(pantalla==27){
    if (boton[36].encima()){
      pantalla=0;
    }
  }
  
}

}
