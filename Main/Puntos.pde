class Puntos{
 float x1, y1, x2, y2, longitud, distancia, pendiente, p1, p2,temp,d;
 boolean bandera, linea,TerminarLinea;
 int R,G,B;
 Puntos (){
  x1 = 0;
  y1 = 0;
  x2 = 0;
  y2 = 0;

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



  void generarLinea(){
    line(x1,y1,x2,y2);
  }
  
   void cambiarColor(int rojo, int verde, int azul){
    R = rojo;
    G = verde;
    B = azul;
    println("entro");
    println(verde);
    stroke(rojo, verde, azul);  
    strokeWeight(1); 
  }
  void cambiarDistancia (int x){
    d = x;
  }
  void cambiarTamano(int t){
    temp = t;
    println(temp);
  }
 void texturaCirculos(){
 longitud = dist(x1, y1, x2, y2);
 distancia = (longitud/10);
 pendiente = ((y2 - y1)/(x2 - x1));
 fill(R,G,B);
 if(x1 <= x2){
   for(float i = x1; i < x2; i = (i + 10+d)){
    p1 = i;
    p2 = ((pendiente*(i-x2)) + y2);
    ellipse(p1, p2, (5 + temp), (5 + temp));
 }
}else{
  for(float i = x2; i < x1; i = (i + 10+d)){
    p1 = i;
    p2 = ((pendiente*(i-x2)) + y2);
    ellipse(p1, p2, (5 + temp), (5 + temp));
  }
}
 }
  
 void texturaHilo(){
  longitud = dist(x1, y1, x2, y2);
 distancia = (longitud/10);
 pendiente = ((y2 - y1)/(x2 - x1));
 if(linea){
   beginShape();
   noFill(); 
   vertex(x1,y1);
   if(x1 <= x2){
  for(float i = x1; i < x2; i = (i + 10+ d)){
    p1 = i;
    p2 = ((pendiente*(i-x2)) + y2);
    line(p1,p2,(p1+5+temp) ,(p2-5-temp));
    line(p1,p2,(p1+5+temp),(p2+5+temp));
   }
  }else{
     for(float i = x2; i < x1; i = (i + 10+ d)){
    p1 = i;
    p2 = ((pendiente*(i-x2)) + y2);
    line(p1,p2,(p1+5+temp) ,(p2-5-temp));
    line(p1,p2,(p1+5+temp),(p2+5+temp));
     }
  }
    endShape();
}
}       
 void texturaLineas(){
 longitud = dist(x1, y1, x2, y2);
 distancia = (longitud/10);
 pendiente = ((y2 - y1)/(x2 - x1));
 if(x1 <= x2){
    for(float i = x1; i < x2; i = (i + 10+ d)){
    p1 = i;
    p2 = ((pendiente*(i-x2)) + y2);
    line(p1-3-temp,p2-3-temp,p1+3+temp,p2+3+temp);
    line(p1-3-temp,p2+3+temp,p1+3+temp,p2-3-temp);
    }
  } else {
    for(float i = x2; i < x1; i = (i + 10+ d)){
    p1 = i;
    p2 = ((pendiente*(i-x2)) + y2);
    line(p1-3-temp,p2-3-temp,p1+3+temp,p2+3+temp);
    line(p1-3-temp,p2+3+temp,p1+3+temp,p2-3-temp);
    }
  }
 }
  
 void texturaFlores(){
 longitud = dist(x1, y1, x2, y2);
 distancia = (longitud/10);
 pendiente = ((y2 - y1)/(x2 - x1));
  beginShape();
   noFill();
   vertex(x1,y1);
    if(x1 <= x2){
    for(float i = x1; i < x2; i = (i + d+10)){
    p1 = i;
    p2 = ((pendiente*(i-x2)) + y2);
    bezierVertex(p1,p2+10+temp,p1+10+temp,p2,p1,p2);
   bezierVertex(p1+10+temp,p2,p1,p2-10-temp,p1,p2);
   bezierVertex(p1,p2-10-temp,p1-10-temp,p2,p1,p2);
   bezierVertex(p1-10-temp,p2,p1,p2+10+temp,p1,p2);
    }
    } else {
      for(float i = x2; i < x1; i = (i + d+10)){
    p1 = i;
    p2 = ((pendiente*(i-x2)) + y2);
    bezierVertex(p1,p2+10+temp,p1+10+temp,p2,p1,p2);
   bezierVertex(p1+10+temp,p2,p1,p2-10-temp,p1,p2);
   bezierVertex(p1,p2-10-temp,p1-10-temp,p2,p1,p2);
   bezierVertex(p1-10-temp,p2,p1,p2+10+temp,p1,p2);
      }
    }
      endShape();
  }
   void texturaCurvas(){
  longitud = dist(x1, y1, x2, y2);
 distancia = (longitud/10);
 pendiente = ((y2 - y1)/(x2 - x1));
 if(linea){
   beginShape();
   noFill();
   vertex(x1,y1);
   if( x1 <= x2){ 
  for(float i = x1; i < x2; i = (i + d+10)){
    p1 = i;
    p2 = ((pendiente*(i-x2)) + y2);
    bezierVertex(p1+temp,p2-10-temp,p1+10+temp,p2-20-temp,p1+10+temp,p2-10-temp);
    bezierVertex(p1+temp,p2+10+temp,p1+10+temp,p2+temp,p1+10+temp,p2-10-temp);
  } 
   } else {
      for(float i = x2; i < x1; i = (i + d+10)){
    p1 = i;
    p2 = ((pendiente*(i-x2)) + y2);
    bezierVertex(p1+temp,p2-10-temp,p1+10+temp,p2-20-temp,p1+10+temp,p2-10-temp);
    bezierVertex(p1+temp,p2+10+temp,p1+10+temp,p2+temp,p1+10+temp,p2-10-temp);
      }
   }
   endShape();
 }

}
  void texturaHojas(){
    longitud = dist(x1, y1, x2, y2);
   distancia = (longitud/10);
   pendiente = ((y2 - y1)/(x2 - x1));
   if(linea){
       beginShape();
     noFill();
     if(x1 <= x2){
    for(float i = x1; i < x2; i = (i + d+10)){
      p1 = i;
      p2 = ((pendiente*(i-x2)) + y2);
      vertex(p1,p2);
      bezierVertex(p1,p2,p1+20+temp,p2-10-temp,p1+10+temp,p2-10-temp);
      bezierVertex(p1+10+temp,p2-10-temp,p1-10-temp,p2,p1,p2);
    }
     } else {
        for(float i = x2; i < x1; i = (i + d+10)){
      p1 = i;
      p2 = ((pendiente*(i-x2)) + y2);
      vertex(p1,p2);
      bezierVertex(p1,p2,p1+20+temp,p2-10-temp,p1+10+temp,p2-10-temp);
      bezierVertex(p1+10+temp,p2-10-temp,p1-10-temp,p2,p1,p2);
        }
     }
      endShape();
  }  
 }

}
