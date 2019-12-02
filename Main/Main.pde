import javax.swing.JOptionPane;
Puntos punto;
Interfaz generar;
Botones b;
PImage img1;
PImage img2;
PImage img3;
PImage img4;
boolean bandera;



void setup(){
  size(850,850);
  background(255);
  generar = new Interfaz();
  b = new Botones();
  punto = new Puntos();
  generar.dibujarInterfaz();
  JOptionPane.showMessageDialog(null, "Para mostrar bordado en pantalla utilice los numeros del 1 al 4");
  img1 = loadImage("Bordado1.png");
  img2 = loadImage("Bordado2.png");
  img3 = loadImage("Bordado3.png");
  img4 = loadImage("Bordado4.jpg");
}
void draw(){
  
}

 void mousePressed(){
     
 if((((mouseX > 0) && (mouseY > 143)) && ((mouseX < width) && (mouseY <height)))){
         punto.generarPuntos();
          if((!punto.bandera)){ 
          b.actualizarPunto(punto);
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
   background(img2);
    loadPixels();
 
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
