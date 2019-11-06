Puntos punto;
<<<<<<< Updated upstream
boolean bandera;
=======
int contador;

>>>>>>> Stashed changes
void setup(){
  size(600,600);
  background(255);
  contador=0;
  punto = new Puntos();
}
void draw(){
<<<<<<< Updated upstream
}
void mousePressed(){
  punto.generarPuntos();
   if(!punto.bandera){
 punto.operacionPendiente();
 }
=======
 //println(punto.longitud);

 
>>>>>>> Stashed changes
}
 void mousePressed(){
 punto.generarPuntos();
 if(!punto.bandera){//Se utiliza el booleano "bandera" de la clase
 //puntos porque este solo es falso cuando ya se generó el segundo punto
   punto. OperacionPendente();
 }
 }
