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
 punto.generarPuntos();
 if(!punto.bandera){//Se utiliza el booleano "bandera" de la clase
 //puntos porque este solo es falso cuando ya se generó el segundo punto
 b.actualizarPunto(punto); 
 }
 }
 
 //hola AYUDA ESTOY AQUI
