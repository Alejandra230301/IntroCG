class Puntos{
 float x1, y1, x2, y2, longitud, distancia, pendiente, p1, p2;
 boolean bandera, linea;
 Vector v;
 
 Puntos (){
  x1 = 0;
  y1 = 0;
  x2 = 0;
  y2 = 0;
  v = new Vector();
 }
 
 void generarPuntos(){
   if(mouseButton == LEFT && !bandera){
     x1 = mouseX;
     y1 = mouseY;
     bandera = true;
 }else{
    if(mouseButton == LEFT && bandera){
     x2 = mouseX;
     y2 = mouseY;
     bandera = false;
     linea = true;
}
 }
 longitud = dist(x1, y1, x2, y2);
 distancia = (longitud/10);
 pendiente = ((y2 - y1)/(x2 - x1));
 line(x1, y1, x2, y2);
 if(linea){
   dibujarLinea();
 }
 }
 void dibujarLinea(){
 for(float i = x1; i < x2; i = (i + distancia)){
    p1 = x1;
    p2 = ((pendiente*(x1-x2)) + y2);
    ellipse(p1, p2, 10, 10);
 }
 linea = false;
 }
}
