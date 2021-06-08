//Maximo Repollo,TP2-Pantalla de creditos
//Declaracion de variables
int x,x1,y1,x2,y2,x3,y3,x4,y4,x5,y5,x6,y6,t1,t2,t4;
float angulo,y,t3;
char tit,nom1,nom2,nom3,nom4,nom5;
PImage skyrim, miraak,dragon,sky2,sky3;
PFont nfuente;

//Definir tamaño de ventana
void setup(){
  size (600,600);
  //Cargar imagenes y fuente
  skyrim = loadImage("skyrim_600x600.jpg");
  miraak = loadImage("miraak.jpg");
  dragon = loadImage("draco600.jpg");
  sky2 = loadImage ("fusrodah600.jpg");
  sky3 = loadImage ("logo600.jpg");
  nfuente = loadFont("SitkaDisplay-Italic-48.vlw");
  //Utilizar fuente
  textFont(nfuente);
  //Inicializar variables
  x=300;
  y=1;
  x1 = 300;
  y1 = 300;
  x2 = -500;
  y2 = 442;
  t2 = 100;
  t3 = 140;
  x3 = 0;
  y3 = 0;
  x4 = 100;
  y4= 650;
  x5=100;
  y5=-50;
  x6=60;
  y6=650;
}
void draw(){
  //Cargar primera pantalla
  image (skyrim,0,0);
  fill(255);
  pushStyle();
  textAlign(CENTER);
  textSize(y);
  text("Skyrim:The elder scrolls V",x,300);
  popStyle();
  //Aumentar el tamaño hasta que sea igual a 70
   if(y < 70){
     y+=0.10;
   }
   //cambiar de pantalla cuando el tamaño sea 70 o mayor.
   else{
     image(miraak,0,0);
     fill(255);
     textSize(40);
     text("Game director:Todd Howard",x1,y1);
     text("Lead Programmer:Guy Carver",x2,y2);
     //Mover texto hasta x1 50
     if(x1 > 50){
        x1--; 
         }
         //Si x1 ya es 50 mover el texto de x2 hasta 100
       if( x1 <= 50 && x2 < 100){
         x2++;
       }
       //Si los textos llegaron a 50 y 100 en x cambiar de imagen y sumar a angulo
    if(x1 <= 50 && x2 >= 100){
      //Sumar al angulo mientras el tamaño sea mayor a 40
       if(t2 > 40){
         t2--;
         angulo+=0.5;
       }
       //Si el tamaño del texto que giraba es 40 o menor deja de girar y se establece en x 50
       else{
         angulo = 0;
         x3 = 50;
          }
          //Establecer la imagen y el tamaño del texto
       textSize(t2);
       image(dragon,0,0);
       //Establecer la rotación del texto
       pushMatrix();
       translate(x3,200);
       //Rotar en base a la variable angulo.
       rotate(angulo);
       text("Lead Artist:Matthew Carofano",x3,y3);
       popMatrix();
       //mover texto de abajo hacia arriba
       text("Lead Designer:Bruce Nesmith",x4,y4);
       if(t2 <= 40 && y4 > 420){
         y4--;
         delay(20);
                  }
     }
     //Cuando el tamaño del primer texto sea menor o igual a 40 y el segundo texto se encuentre en 420 cambiar de pantalla
   if(t2 <=40 && y4 <= 420){
     image(sky2,0,0);
     text("Audio Director:Mark Lampert",x5,y5);
     text("Lead Enviroment Art:Noah Berry",x6,y6);
     //Mover el texto uno hacia abajo hasta 250
        if(y5 <= 250){
         y5 ++;
                     }
                     //Cuando el texto uno este en 250 mover el texto dos arriba hasta 400
         if(y5 >=250 && y6 >= 400){
           y6 --;
              }
              //Si el texto uno esta en 250 y el texto dos en 400 (en el eje y) cambiar de pantalla
              if(y5 >=250 && y6 <=400){
                image(sky3,0,0);
                textSize(t3);
                text("Lead AI Programmer:Ahn Hopgood",200,200);
                text("Lead Graphics Programmer:Scott Franke",150,400);
                //Cambiar el tamaño de los dos textos hasta que valgan 20.
                if (t3 > 20){
                  t3-=0.5;
                  }
                
                  }
                           }
     }
}
//Fin de los creditos
  

//Para que muestre las coordenadas en la consola,herramienta util a la hora de posicionar texto
void mousePressed(){
  println(mouseX,mouseY);
}
