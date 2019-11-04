Puntos punto;
boolean bandera;
void setup(){
  size(600,600);
  background(255);
  punto = new Puntos();
}
void draw(){
}
void mousePressed(){
  punto.generarPuntos();
   if(!punto.bandera){
 punto.operacionPendiente();
 }
}
