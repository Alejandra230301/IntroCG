Puntos punto;
Vector vec;

void setup(){
  size(600,600);
  background(255);
  punto = new Puntos();
  vec = new Vector();
}
void draw(){
 punto.generarPuntos();
 println(punto.longitud);
 punto.dibujarLinea();
 
}
