float pantalla = 0;
PImage [] img = new PImage [23];
String[] hist = new String[30];
String[] opc = new String[20];
String[] finales = new String[10];


void setup(){
  size(600,600);
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
}

void draw(){
  background(255);
  if ( pantalla == 0){
    image(img[22],0,0,600,600);
    texto(opc[0], width/2,100,40,CENTER,color(100,20,0));
    dibujaBotonCircular(opc[1],450,500,150);
    dibujaBotonCircular(opc[2],150,500,150);
  }
  else if(pantalla == 1){
    image(img[0],0,0,600,600);
    texto(hist[0], width/2,50,24,CENTER,color(0,0,255));
    dibujaBotonCircular("Continuar",width/2,500,200);
  }
  else if(pantalla == 2){
     image(img[0],0,0,600,600);
     texto(hist[1], width/2,50,28,CENTER,color(0,0,255));
     dibujaBotonCircular("Si",450,500,100);
     dibujaBotonCircular("No",150,500,100);
  }
  else if(pantalla == 3){
    image(img[1],0,0,600,600);
    texto(hist[2],width/2,20,28,CENTER,color(255));
    dibujaBotonCircular("Continuar",width/2,500,200);
   
  }
  else if(pantalla == 4){
    image(img[21],0,0,600,600);
    texto(finales[0],width/2,60,28,CENTER,color(255,0,0));
    dibujaBotonCircular("Continuar",width/2,500,200);
  }
  else if(pantalla== 5){
    image(img[1],0,0,600,600);
    texto(hist[3],width/2,20,28,CENTER,color(255));
    dibujaBotonCircular("Continuar",width/2,500,200);
  }
  else if(pantalla==6){
    image(img[3],0,0,600,600);
    texto(hist[4],width/2,50,28,CENTER,color(200,0,0));
    dibujaBotonCircular("Derecha",450,500,200);
     dibujaBotonCircular("Izquierda",150,500,200);
  }
  else if(pantalla==7){
    image(img[5],0,0,600,600);
     texto(hist[5],width/2,20,28,CENTER,color(255,0,0));
     dibujaBotonCircular("Continuar",width/2,500,200);
    
  }
  else if(pantalla==8){
    image(img[5],0,0,600,600);
    texto(hist[6],width/2,50,30,CENTER,color(255,0,0));
    dibujaBotonCircular(opc[3],450,500,220);
     dibujaBotonCircular(opc[4],150,500,220);    
  }
  else if(pantalla==9){
    image(img[6],0,0,600,600);
     texto(hist[7],width/2,30,30,CENTER,color(255,0,0));
     dibujaBotonCircular("Continuar",width/2,500,200);
  }
  else if(pantalla==10){
    image(img[6],0,0,600,600);
    texto(hist[8],width/2,20,30,CENTER,color(255,0,0));
     dibujaBotonCircular("Continuar",width/2,500,200);
  }
  else if(pantalla==11){
    image(img[7],0,0,600,600);
    texto(hist[9],width/2,40,30,CENTER,color(255));
    dibujaBotonCircular(opc[5],450,500,180);
     dibujaBotonCircular(opc[6],150,500,180);   
  }
  else if(pantalla==12){
    image(img[8],0,0,600,600);
    texto(hist[10],width/2,40,30,CENTER,color(100,0,0));
    dibujaBotonCircular("Continuar",width/2,500,200);
  }
  else if(pantalla==13){
    image(img[9],0,0,600,600);
    texto(hist[11],width/2,40,30,CENTER,color(255));
    dibujaBotonCircular("Continuar",width/2,500,200);
  }
  else if(pantalla==14){
    image(img[10],0,0,600,600);
    texto(hist[12],width/2,40,30,CENTER,color(255));
    dibujaBotonCircular(opc[7],450,500,180);
     dibujaBotonCircular(opc[8],150,500,180); 
  }
  else if(pantalla==15){
    image(img[11],0,0,600,600);
    texto(hist[13],width/2,40,30,CENTER,color(255));
    dibujaBotonCircular("Continuar",width/2,500,200);
  }
  else if(pantalla==16){
    image(img[12],0,0,600,600);
    texto(hist[14],width/2,40,30,CENTER,color(255));
    dibujaBotonCircular("Continuar",width/2,500,200);
  }
  else if(pantalla==17){
    image(img[12],0,0,600,600);
    texto(hist[15],width/2,40,30,CENTER,color(255));
    dibujaBotonCircular(opc[9],450,500,180);
     dibujaBotonCircular(opc[10],150,500,180); 
  }
  else if(pantalla==18){
    image(img[13],0,0,600,600);
    texto(hist[16],width/2,40,30,CENTER,color(255));
    dibujaBotonCircular("Continuar",width/2,500,200);
  }
  else if(pantalla==19){
    image(img[13],0,0,600,600);
    texto(finales[2],width/2,40,30,CENTER,color(0,255,0));
    dibujaBotonCircular("Continuar",width/2,500,200);
  }
  else if(pantalla==20){
    image(img[14],0,0,600,600);
    texto(finales[3],width/2,40,30,CENTER,color(255,0,255));
    dibujaBotonCircular("Continuar",width/2,500,200);
  }
  else if(pantalla==21){
    image(img[4],0,0,600,600);
    texto(hist[17],width/2,40,30,CENTER,color(100,0,0));
     dibujaBotonCircular(opc[11],450,500,200);
     dibujaBotonCircular(opc[12],150,500,200);
  }
  else if(pantalla==22){
    image(img[18],0,0,600,600);
    texto(finales[1],width/2,40,30,CENTER,color(255,0,0));
    dibujaBotonCircular("Continuar",width/2,500,200);
  }
  else if(pantalla==23){
    image(img[15],0,0,600,600);
    texto(hist[18],width/2,40,30,CENTER,color(255,0,0));
    dibujaBotonCircular(opc[13],450,500,200);
     dibujaBotonCircular(opc[14],150,500,200);
  }
  else if(pantalla==24){
    image(img[16],0,0,600,600);
    texto(finales[4],width/2,40,30,CENTER,color(255,0,255));
    dibujaBotonCircular("Continuar",width/2,500,200);
  }
  else if(pantalla==25){
    image(img[17],0,0,600,600);
    texto(finales[5],width/2,40,30,CENTER,color(255,0,0));
    dibujaBotonCircular("Continuar",width/2,500,200);
  }
  else if(pantalla==26){
    image(img[19],0,0,600,600);
    texto(finales[6],width/2,40,30,CENTER,color(255,0,0));
    dibujaBotonCircular("Continuar",width/2,500,200);
  }
  else if(pantalla==27){
    image(img[20],0,0,600,600);
    texto(finales[7],width/2,40,30,CENTER,color(255));
    dibujaBotonCircular("Continuar",width/2,500,200);
  }
}

void mousePressed(){
  if(pantalla==0){
    
    if (colisionSupCircular(mouseX,mouseY,500,500,80)){
      pantalla = 1;
  }
  }
  else if(pantalla==1){
      if (colisionSupCircular(mouseX,mouseY,width/2,500,200)){
      pantalla = 2;
    }
  }
  else if(pantalla==2){
    if (colisionSupCircular(mouseX,mouseY,150,500,100)){
      pantalla = 4;
    }    
    else if(colisionSupCircular(mouseX,mouseY,450,500,100)){
      pantalla = 3;
    }
  }
  else if(pantalla==3){
    if (colisionSupCircular(mouseX,mouseY,width/2,500,200)){
      pantalla = 5;
    }
  }
  else if (pantalla==4){
    if (colisionSupCircular(mouseX,mouseY,width/2,500,200)){
      pantalla= 0;
    }
  }
  else if(pantalla==5){
     if (colisionSupCircular(mouseX,mouseY,width/2,500,200)){
      pantalla= 6;
    } 
  }
  else if(pantalla==6){
    if (colisionSupCircular(mouseX,mouseY,150,500,100)){
      pantalla = 21;
    }    
    else if(colisionSupCircular(mouseX,mouseY,450,500,100)){
      pantalla = 7;
    }
  }
  else if(pantalla==7){
     if (colisionSupCircular(mouseX,mouseY,width/2,500,200)){
      pantalla= 8;
    }   
  }
  else if(pantalla==8){
    if (colisionSupCircular(mouseX,mouseY,150,500,100)){
      pantalla = 23;
    }    
    else if(colisionSupCircular(mouseX,mouseY,450,500,100)){
      pantalla = 9;
    }
  }
  else if(pantalla==9){
    if (colisionSupCircular(mouseX,mouseY,width/2,500,200)){
      pantalla = 10;
    }
  }
  else if(pantalla==10){
    if (colisionSupCircular(mouseX,mouseY,width/2,500,200)){
      pantalla = 11;
    }
  }
  else if (pantalla==11){
     if (colisionSupCircular(mouseX,mouseY,150,500,100)){
      pantalla = 12;
    }    
    else if(colisionSupCircular(mouseX,mouseY,450,500,100)){
      pantalla = 26;
    }
  }
  else if (pantalla==12){
    if (colisionSupCircular(mouseX,mouseY,width/2,500,200)){
      pantalla = 13;
    }
  }
  else if(pantalla==13){
    if (colisionSupCircular(mouseX,mouseY,width/2,500,200)){
      pantalla = 14;
    }
  }
  else if(pantalla==14){
    if (colisionSupCircular(mouseX,mouseY,150,500,100)){
      pantalla = 27;
    }    
    else if(colisionSupCircular(mouseX,mouseY,450,500,100)){
      pantalla = 15;
    }
  }
  else if(pantalla==15){
     if (colisionSupCircular(mouseX,mouseY,width/2,500,200)){
      pantalla = 16;
    }
  }
  else if(pantalla==16){
    if (colisionSupCircular(mouseX,mouseY,width/2,500,200)){
      pantalla = 17;
    }
  }
  else if(pantalla==17){
    if (colisionSupCircular(mouseX,mouseY,150,500,100)){
      pantalla = 20;
    }    
    else if(colisionSupCircular(mouseX,mouseY,450,500,100)){
      pantalla = 18;
    }
  }
  else if(pantalla==18){
    if (colisionSupCircular(mouseX,mouseY,width/2,500,200)){
      pantalla = 19;
    }
  }
  else if(pantalla==19){
    if (colisionSupCircular(mouseX,mouseY,width/2,500,200)){
      pantalla = 0;
    }
  }
  else if(pantalla==20){
    if (colisionSupCircular(mouseX,mouseY,width/2,500,200)){
      pantalla = 0;
    }
  }
  else if(pantalla==21){
    if (colisionSupCircular(mouseX,mouseY,150,500,100)){
      pantalla = 7;
    }    
    else if(colisionSupCircular(mouseX,mouseY,450,500,100)){
      pantalla = 22;
    }
  }
  //Final 3
  else if(pantalla==22){
    if (colisionSupCircular(mouseX,mouseY,width/2,500,200)){
      pantalla = 0;
    }
  }
  else if(pantalla==23){
    if (colisionSupCircular(mouseX,mouseY,150,500,100)){
      pantalla = 25;
    }    
    else if(colisionSupCircular(mouseX,mouseY,450,500,100)){
      pantalla = 24;
    }
  }
  else if(pantalla==24){
    if (colisionSupCircular(mouseX,mouseY,width/2,500,200)){
      pantalla = 0;
    }
  }
  else if(pantalla==25){
     if (colisionSupCircular(mouseX,mouseY,width/2,500,200)){
      pantalla = 0;
    }
  }
  else if(pantalla==26){
     if (colisionSupCircular(mouseX,mouseY,width/2,500,200)){
      pantalla = 0;
    }
  }
  else if(pantalla==27){
    if (colisionSupCircular(mouseX,mouseY,width/2,500,200)){
      pantalla = 0;
    }
  }
  else if(pantalla==28){
    
  }
 
  }
  
