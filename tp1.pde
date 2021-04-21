//Maximo Repollo tp1 de tecnologia multimedia
//Circulo cromatico

void setup(){
  size(600,600);
  background(0);
  
  //Lineas entre los colores.
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
 
 //La parte mas importante,los 12 colores del circulo cromatico.
 
  //rojo
  pushStyle();
  noStroke();
  fill(255,0,0);
  circle(297,70,120);
  popStyle();
  
  //azul
  pushStyle();
  noStroke();
  fill(0,0,255);
  circle(110,420,120);
  popStyle();
  
  //verde
  pushStyle();
  noStroke();
  fill(0,255,0);
  circle(490,420,120);
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
  
  //Rosa
  pushStyle();
  noStroke();
  fill(255,0,127);
  circle(190,120,80);
  popStyle();  
}
void draw (){
  //codigo para pintar el circulo de el medio dependiendo de donde este posicionado el cursor
if(mouseX >= 237 && mouseX <= 356 && mouseY <= 130 && mouseY >=8){
    fill(255,0,0);
  }
if(mouseX >=429 && mouseX <=549 && mouseY >=358 && mouseY <=480){
  fill(0,255,0);
}
if (mouseX >=48 && mouseX <=160 && mouseY >=358 && mouseY <=470 ){
  fill(0,0,255);
}
if(mouseX >=419 && mouseX<=520 && mouseY >=153 && mouseY <=254){
  fill(255,255,0);
}
if(mouseX >=78 && mouseX <=179 && mouseY >=154 && mouseY <=254){
  fill(255,0,255);
}
if(mouseX >=249 && mouseX <=349 && mouseY >=477 && mouseY <=580){
  fill(0,255,255);
}
if(mouseX >=150 && mouseX <=229 && mouseY >=78 && mouseY <=159){
  fill(250,0,127);
}
if(mouseX >=369 && mouseX <=447 && mouseY >=79 && mouseY <=159){
  fill(255,127,0); 
}
if(mouseX >=363 && mouseX <=444 && mouseY >=454 && mouseY <=534){
  fill(0,255,127);
}
if(mouseX >=444 && mouseX <=525 && mouseY >=268 && mouseY <=349){
  fill(127,255,0);
}
if(mouseX >=150 && mouseX <=228 && mouseY >=454 && mouseY <=534){
  fill(0,127,255);
}
if(mouseX >=58 && mouseX <=139 && mouseY >=268 && mouseY <=348){
  fill(127,0,255);
}
//Dibujando el circulo del medio.
  noStroke();
  circle(300,300,250);
  
  //Agregando texto de los 3 colores primarios y los 3 secundarios.Para que se muestre,hay que pasar el cursor por encima del color correspondiente.
  
if(mouseX >= 237 && mouseX <= 356 && mouseY <= 130 && mouseY >=8){
  pushStyle();
  fill(255);
  textSize(50);
  text("Rojo",250,300);
  popStyle();
}
if(mouseX >=429 && mouseX <=549 && mouseY >=358 && mouseY <=480){
  pushStyle();
  fill(255);
  textSize(50);
  text("Verde",240,300);
  popStyle();
}
if (mouseX >=48 && mouseX <=160 && mouseY >=358 && mouseY <=470 ){
  pushStyle();
  fill(255);
  textSize(50);
  text("Azul",240,300);
  popStyle();
}
if(mouseX >=419 && mouseX<=520 && mouseY >=153 && mouseY <=254){
  pushStyle();
  fill(255);
  textSize(50);
  text("Amarillo",200,300);
  popStyle();
}
if(mouseX >=78 && mouseX <=179 && mouseY >=154 && mouseY <=254){
  pushStyle();
  fill(255);
  textSize(50);
  text("Magenta",200,300);
  popStyle();
}
if(mouseX >=249 && mouseX <=349 && mouseY >=477 && mouseY <=580){
  pushStyle();
  fill(255);
  textSize(50);
  text("Cian",250,300);
  popStyle();
}
  
}

//Para encontrar las coordenas, no es necesario para el codigo final, pero igualmente lo dejo. 
void mousePressed(){
  println(mouseX,mouseY);
}
