class Puntos{
 float x1, y1, x2, y2, longitud, distancia, pendiente, p1, p2;
 boolean bandera, linea,TerminarLinea;

 Puntos (){
  x1 = 0;
  y1 = 0;
  x2 = 0;
  y2 = 0;

 }

 void generarPuntos(){//Actualiza a coordenada de los puntos 
 //inicial y se sabe que no es la segunda coordenada por la condicional bandera
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
}
  void generarLinea(){
      if(linea){
    line(x1,y1,x2,y2);
  }
  
  }
 void dibujarCirculos(){
 longitud = dist(x1, y1, x2, y2);
 distancia = (longitud/10);
 pendiente = ((y2 - y1)/(x2 - x1));
 for(float i = x1; i < x2; i = (i + 10)){
    p1 = i;
    p2 = ((pendiente*(i-x2)) + y2);
    ellipse(p1, p2, 5, 5);
 }
}
 void Textura2(){
  longitud = dist(x1, y1, x2, y2);
 distancia = (longitud/10);
 pendiente = ((y2 - y1)/(x2 - x1));
  for(float i = x1; i < x2; i = (i + 10)){
    p1 = i;
    p2 = ((pendiente*(i-x2)) + y2);
  stroke(255);
  ellipse(p1, p2, 5, 5);
  }
     }  
     
 void Textura3(){
 longitud = dist(x1, y1, x2, y2);
 distancia = (longitud/10);
 pendiente = ((y2 - y1)/(x2 - x1));
    for(float i = x1; i < x2; i = (i + 10)){
    p1 = i;
    p2 = ((pendiente*(i-x2)) + y2);
    line(p1-7,p2-7,p1+7,p2+7);
    }
  } 
     
 void Textura4(){ 
   longitud = dist(x1, y1, x2, y2);
 distancia = (longitud/10);
 pendiente = ((y2 - y1)/(x2 - x1));
   for(float i = x1; i < x2; i = (i + 10)){
    p1 = i;
    p2 = ((pendiente*(i-x2)) + y2);
 beginShape();
 bezierVertex(p1, p2, p2, p1, distancia, distancia);
 endShape();
     } 
 }   
}
