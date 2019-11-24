import javax.swing.JOptionPane;
PImage img1;
PImage img2;
PImage img3;
PImage img4;
Puntos punto;
Interfaz generar;
Botones b;
boolean firstLinea = false;
boolean bandera;

int contador;


void setup(){
  JOptionPane.showMessageDialog(null, "Para mostrar bordado en pantalla utilice los numeros del 1 al 4");
  img1 = loadImage("Bordado1.png");
  img2 = loadImage("Bordado2.png");
  img3 = loadImage("Bordado3.png");
  img4 = loadImage("Bordado4.jpg");
  size(750,750);
  background(255);
  generar = new Interfaz();
  b = new Botones();
  punto = new Puntos();
  generar.dibujarInterfaz();
}
void draw(){ 
  if (firstLinea){
    loadPixels();
    generar.dibujarInterfaz();
    updatePixels();
  }
}

 void mousePressed(){   
 if((((mouseX > 0) && (mouseY > 143)) && ((mouseX < 600) && (mouseY < 600)))){
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
 }
  void keyPressed(){
  if(keyPressed && key=='1'){
  background(img1);
  loadPixels();
     updatePixels();
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
 




 
