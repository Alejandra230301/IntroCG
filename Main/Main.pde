Puntos punto;
Interfaz generar;
boolean bandera;
void setup(){
  size(600,600);
  background(255);
  generar = new Interfaz();
  punto = new Puntos();
  generar.dibujarInterfaz();
}
void draw(){
}
void mousePressed(){
  
  punto.generarPuntos();
   if(!punto.bandera){
 punto.operacionPendiente();
 }
}
