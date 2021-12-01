class Creditos{
  float yt ,yt1 , yt2 ,yt3 ,yt4 ,yt5 ,yt6 ,yt7 ,yt8 ,yt9 ,pant;
  Texto [] texto= new Texto[11];
  String[] creditos = new String[10];
  Fondo fondo;
  Creditos(){
    
    yt = 600;
    yt1 = 800;
    yt2 = 1000;
    yt3 = 1200;
    yt4 = 1400;
    yt5 = 1600;
    yt6 = 1800;
    yt7 = 2000;
    yt8 = 2200;
    fondo = new Fondo();
     creditos[0]= "Productor:\n Maximo Repollo";
  creditos [1]= "Chomp:\nChomp";
  creditos [2]= "Miraak:\n Nicolas Cage";
  creditos [3]= "Nikel:\n Guillermo\nFrancella";
  creditos [4]= "Guardias:\nDwayne\nJhonson";
  creditos [5]= "Ciudadano:\n Jason\n Momoa";
  creditos [6]= "Profesor:\n David Bedoian";
  creditos [7]= "Materia:\n Tecno Multimedia";
  creditos [8]= "Agradecimientos a:\n Bethesda Softworks";
 
  }
  void pasar(float pant_){
    pant=pant_;
    texto [0] = new Texto (creditos[0], width/2,yt,50,color(255)   );
  texto [1] = new Texto (creditos[1], width/2,yt1,50,color(255)   );
  texto [2] = new Texto (creditos[2], width/2,yt2,50,color(255)   );
  texto [3] = new Texto (creditos[3], width/2,yt3,50,color(255)   );
  texto [4] = new Texto (creditos[4], width/2,yt4,50,color(255)   );
  texto [5] = new Texto (creditos[5], width/2,yt5,50,color(255)   );
  texto [6] = new Texto (creditos[6], width/2,yt6,50,color(255)   );
  texto [7] = new Texto (creditos[7], width/2,yt7,50,color(255)   );
  texto [8] = new Texto (creditos[8], width/2,yt8,50,color(255)   );
    fondo.impr(23);
    texto[0].escribir();
    texto[1].escribir();
    texto[2].escribir();
    texto[3].escribir();
    texto[4].escribir();
    texto[5].escribir();
    texto[6].escribir();
    texto[7].escribir();
    texto[8].escribir();
     yt-= 0.50;
    yt1-= 0.50;
    yt2-= 0.50;
    yt3-= 0.50;
    yt4-= 0.50;
    yt5-= 0.50;
    yt6-= 0.50;
    yt7-= 0.50;
    yt8-= 0.50;
    yt9-= 0.50;
    if (yt8==0){
      pant_=0;
    }
  }
}
