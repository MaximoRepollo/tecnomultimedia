//tp3 Maximo Repollo
//Link al video de youtube: https://youtu.be/8SWYnIx4h8Q
//Declaracion de variables
float contador,cant;
color col;

//establecer el tamaño
void setup(){
  size(600,600);
  
}
    

//Dibujar el fondo en cada frame,para que los circulos no pinten de negro la pantalla por completo
void draw(){
  
  //variable contador que se usara para mapear los dos tamaños y dibujar los circulos
  contador+=1.5;
  //establecer modo de color
  colorMode(HSB);
  //poner la variable color como parametro en el fondo
  background(col,255,255);

//Hacer que los circulos no se superpongan y establecer el tamaño de sus lineas
 noFill();
 strokeWeight(7);
 
//Iniciar el ciclo for para dibujar los circulos de forma que la ilusion funcione
 for (int i=0; i<20;i++){
   //Siempre que el indice llegue a 19, sumar en 1 a la variable col,de modo que cambie el color del fondo
   if (i==19)col++;
   //si col llega al maximo de 255,reiniciarla
   if (col==255)col=0;
   //Mapear las variables tam y tam2 en base a i 
   float tam = map(i,0,19,contador,-width);
   float tam2 = map(i,0,19,contador,-height);  
   
   //especificar los circulos para que se dibujen en el ciclo for,en base a las variables mapeadas
  ellipse(width/2,height/2,tam,tam);
  ellipse(width/2,height/2,tam2,tam2);
  //funcion que use para verificar el valor del indice
  if (key=='x'){
   println(i);
 }
}
}
//Si apreto el Mouse, la variable contador vuelve a 0 y la ilusion se reinicia
void mousePressed(){
  contador=0;
}
