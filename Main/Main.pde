Puntos punto;
Interfaz generar;

boolean bandera;

int contador;


void setup(){
  size(600,600);
  background(255);
  generar = new Interfaz();
  contador = 0;
  punto = new Puntos();
  generar.dibujarInterfaz();
}
void draw(){
  
}

 void mousePressed(){
 punto.generarPuntos();
 if(!punto.bandera){//Se utiliza el booleano "bandera" de la clase
 //puntos porque este solo es falso cuando ya se generó el segundo punto
   punto. OperacionPendente();
 }
 }
