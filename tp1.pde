//Tp 1 Maximo Repollo Circulo Cromatico


//declaramos las variables para el final

float color1=0;

 float color2=0;

float color3=0;

//establecemos tamaño de la pantalla y fondo inicial.

void setup(){
  size(600,600);
  background(0);
  
  
}

//Dibujamos
void draw(){
//Dibujamos las lineas dentro del circulo y entre los circulos
pushStyle();
  stroke(255);
  strokeWeight(3);
  line(297,70,110,420);
  line(297,70,490,420);
  line(110,420,490,420);
  popStyle();
  pushStyle();
  stroke(255,0,0);
  strokeWeight(3);
  line(297,70,410,120);
  line(410,120,470,205);
  line(297,70,190,120);
  line(190,120,130,205);
  popStyle();
  pushStyle();
  stroke(0,255,0);
  strokeWeight(3);
  line(470,205,485,310);
  line(485,310,490,420);
  line(490,420,405,495);
  line(405,495,300,530);
  popStyle();
  pushStyle();
  stroke(0,0,255);
  strokeWeight(3);
  line(300,530,190,495);
  line(190,495,110,420);
  line(110,420,100,310);
  line(100,310,130,205);
  popStyle();
  
  //Dibujamos los circulos con sus respectivos colores en orden y además anotamos los nombres  de los colores primarios y secundarios.
  
  //rojo
  pushStyle();
  noStroke();
  fill(255,0,0);
  circle(297,70,120);
  popStyle();
  pushStyle();
  fill(255);
  textSize(30);
  text("Rojo",265,80);
  popStyle();
  
  //azul
  pushStyle();
  noStroke();
  fill(0,0,255);
  circle(110,420,120);
  popStyle();
  pushStyle();
  fill(255);
  textSize(30);
  text("Azul",80,420);
  popStyle();
  
  //verde
  pushStyle();
  noStroke();
  fill(0,255,0);
  circle(490,420,120);
  popStyle();
   pushStyle();
  fill(255);
  textSize(30);
  text("Verde",450,420);
  popStyle();
  
  //naranja
  pushStyle();
  noStroke();
  fill(255,127,0);
  circle(410,120,80);
  popStyle();
  
  //amarillo
  pushStyle();
  noStroke();
  fill(255,255,0);
  circle(470,205,100);
  popStyle();
   pushStyle();
  fill(0);
  textSize(20);
  text("Amarillo",430,205);
  popStyle();
  
  //verde claro
  pushStyle();
  noStroke();
  fill(127,255,0);
  circle(485,310,80);
  popStyle();
  
  
  
  pushStyle();
  noStroke();
  fill(0,255,127);
  circle(405,495,80);
  popStyle();
  
  //Cian
  pushStyle();
  noStroke();
  fill(0,255,255);
  circle(300,530,100);
  popStyle();
   pushStyle();
  fill(0);
  textSize(20);
  text("Cian",280,530);
  popStyle();
  
  
  pushStyle();
  noStroke();
  fill(0,127,255);
  circle(190,495,80);
  popStyle();
  
  //violeta
  pushStyle();
  noStroke();
  fill(127,0,255);
  circle(100,310,80);
  popStyle();
  
  //Magenta
  pushStyle();
  noStroke();
  fill(255,0,255);
  circle(130,205,100);
  popStyle();
   pushStyle();
  fill(0);
  textSize(20);
  text("Magenta",90,205);
  popStyle();
  
  //Rosa
  pushStyle();
  noStroke();
  fill(255,0,127);
  circle(190,120,80);
  popStyle();  
}

//Si se oprime una tecla, el fondo cambiará de color a uno aleatorio.
void keyPressed(){
  color1 = random(255);
  color2 = random(255);
  color3 = random(255);
  background(color1,color2,color3);
}

//Para encontrar las coordenas, no es necesario para el codigo final, pero igualmente lo dejo. 
void mousePressed(){
  println(mouseX,mouseY);
}
