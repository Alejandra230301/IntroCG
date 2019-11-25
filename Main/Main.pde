  
import javax.swing.JOptionPane;
Puntos punto;
Interfaz generar;
Botones b;
boolean bandera;



void setup(){
  size(850,850);
  background(255);
  generar = new Interfaz();
  b = new Botones();
  punto = new Puntos();
  generar.dibujarInterfaz();
  JOptionPane.showMessageDialog(null, "Para mostrar bordado en pantalla utilice los numeros del 1 al 4");

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
 


 
