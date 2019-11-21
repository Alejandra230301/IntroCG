Puntos punto;
Interfaz generar;
Botones b;
PImage img1;
PImage img2;
PImage img3;
PImage img4;
boolean bandera;



void setup(){
  size(600,600);
  background(255);
  generar = new Interfaz();
  b = new Botones();
  punto = new Puntos();
  generar.dibujarInterfaz();
  img1 = loadImage("Bordado1.png");
  img2 = loadImage("Bordado2.png");
  img3 = loadImage("Bordado3.png");
  img4 = loadImage("Bordado4.jpg");
}
void draw(){
  
}

 void mousePressed(){
     
 if((((mouseX > 0) && (mouseY > 100)) && ((mouseX < 600) && (mouseY < 600)))){
         punto.generarPuntos();
          if((!punto.bandera)){ 
          b.actualizarPunto(punto);
          generar.dibujarInterfaz();
          punto.generarLinea();
           
          loadPixels();
         
          }
         
     }
     else {
         b.actualizarPunto(punto);
     }
     updatePixels();
    
  }
 
 
 //kkk


 void keyPressed(){
  if(keyPressed && key=='1'){
   background(img1);
   
  }
    if(keyPressed && key=='2'){
  background(img2);
  loadPixels();
     updatePixels();
  }
    if(keyPressed && key=='3'){
  background(img3);
    loadPixels();
     updatePixels();
  }
    if(keyPressed && key=='4'){
  background(img4);
  loadPixels();
     updatePixels();
  }
 }
