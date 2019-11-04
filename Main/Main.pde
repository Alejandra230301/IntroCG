Puntos punto;


void setup(){
  size(600,600);
  background(255);
  punto = new Puntos();
}
void draw(){
 punto.generarPuntos();
 println(punto.longitud);
 punto.dibujarLinea();
 
}
