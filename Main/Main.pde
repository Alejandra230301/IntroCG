Puntos punto;
Interfaz generar;
Botones b;

boolean bandera;

int contador;


void setup(){
  size(600,600);
  background(255);
  generar = new Interfaz();
  b = new Botones();
  punto = new Puntos();
  generar.dibujarInterfaz();
}
void draw(){
  
}

 void mousePressed(){
 if((((mouseX > 0) && (mouseY > 100)) && ((mouseX < 600) && (mouseY < 600)))){
         punto.generarPuntos();
          if((!punto.bandera)){ 
           b.actualizarPunto(punto);
          punto.generarLinea();
          generar.dibujarInterfaz();
          loadPixels();
          }
         
     }
     else {
         b.actualizarPunto(punto);
     }
    updatePixels();
  }
 
 
 
