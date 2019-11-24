class Puntos{
 float x1, y1, x2, y2, longitud, distancia, pendiente, p1, p2, d;
 boolean bandera, linea,TerminarLinea;
 int R,G,B;

 Puntos (){
  x1 = 0;
  y1 = 0;
  x2 = 0;
  y2 = 0;
  d = 10;

 }

 void generarPuntos(){
   linea=false;
   //Actualiza a coordenada de los puntos 
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

  
  void cambiarColor(int rojo, int verde, int azul){
    R = rojo;
    G = verde;
    B = azul;
    println("entro");
    println(verde);
    stroke(rojo, verde, azul);  
  }
  void cambiarDistancia (int x){
    d = x;
  }
    void generarLinea(){
    line(x1,y1,x2,y2);
  }
  
  
 void texturaCirculos(){
 longitud = dist(x1, y1, x2, y2);
 distancia = (longitud/d);
 pendiente = ((y2 - y1)/(x2 - x1));
 fill(R,G,B);
   for(float i = x1; i < x2; i = (i + d)){
    p1 = i;
    p2 = ((pendiente*(i-x2)) + y2);
    ellipse(p1, p2, 5, 5);
     
 }
}
 void texturaHilo(){
  longitud = dist(x1, y1, x2, y2);
 distancia = (longitud/d);
 pendiente = ((y2 - y1)/(x2 - x1));
 noFill();
 if(linea){
   beginShape();
   vertex(x1,y1);
  for(float i = x1; i < x2; i = (i + d)){
    p1 = i;
    p2 = ((pendiente*(i-x2)) + y2);
    line(p1,p2,p1+5,p2-5);
    line(p1,p2,p1+5,p2+5);
   
  }  endShape();

}
}  
     
 void texturaLineas(){
 longitud = dist(x1, y1, x2, y2);
 distancia = (longitud/d);
 pendiente = ((y2 - y1)/(x2 - x1));
 noFill();
    for(float i = x1; i < x2; i = (i + d)){
    p1 = i;
    p2 = ((pendiente*(i-x2)) + y2);
    line(p1-3,p2-3,p1+3,p2+3);
    line(p1-3,p2+3,p1+3,p2-3);
    }
  } 
 void texturaFlores(){
 longitud = dist(x1, y1, x2, y2);
 distancia = (longitud/d);
 pendiente = ((y2 - y1)/(x2 - x1));
 noFill();
  beginShape();
   vertex(x1,y1);
    for(float i = x1; i < x2; i = (i + d)){
    p1 = i;
    p2 = ((pendiente*(i-x2)) + y2);
    bezierVertex(p1,p2+10,p1+10,p2,p1,p2);
   bezierVertex(p1+10,p2,p1,p2-10,p1,p2);
   bezierVertex(p1,p2-10,p1-10,p2,p1,p2);
   bezierVertex(p1-10,p2,p1,p2+10,p1,p2);
    }endShape();
  }
  
   void texturaCurvas(){
  longitud = dist(x1, y1, x2, y2);
 distancia = (longitud/d);
 pendiente = ((y2 - y1)/(x2 - x1));
 noFill();
 if(linea){
   beginShape();
   vertex(x1,y1);
  for(float i = x1; i < x2; i = (i + d)){
    p1 = i;
    p2 = ((pendiente*(i-x2)) + y2);
    bezierVertex(p1,p2-10,p1+10,p2-20,p1+10,p2-10);
    bezierVertex(p1,p2+10,p1+10,p2,p1+10,p2-10);
  }  endShape();
 }

}
  void texturaHojas(){
    longitud = dist(x1, y1, x2, y2);
   distancia = (longitud/d);
   pendiente = ((y2 - y1)/(x2 - x1));
   noFill();
   if(linea){
    for(float i = x1; i < x2; i = (i + d)){
    beginShape();
      p1 = i;
      p2 = ((pendiente*(i-x2)) + y2);
      vertex(p1,p2);
      bezierVertex(p1,p2,p1+20,p2-10,p1+10,p2-10);
      bezierVertex(p1+10,p2-10,p1-10,p2,p1,p2);
      endShape();
  }  
 }

}
 
}
