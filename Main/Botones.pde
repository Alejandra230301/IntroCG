class Botones{
  Puntos llamar;
  boolean Textura1, Textura2, Textura3, Textura4, Textura5, Textura6;
    int R, G, B, distancia, tamano;
  Botones(){
    distancia = 0;
    tamano = 0;
  }
  void actualizarPunto(Puntos p){

   llamar = p;
   generarBotones();
   botonBorrar();
   botonTamano();

  }


void generarBotones(){
 if (((mouseX > 22) && (mouseY > 23)) && ((mouseX < 139) && (mouseY < 48))){
        if(mousePressed){
        Textura1 = true;
        Textura2 = false;
        Textura3 = false;
        Textura4 = false;
        Textura5 = false;
        Textura6 = false;
        }
   }
 
   else  if (((mouseX > 20) && (mouseY > 61)) && ((mouseX < 137) && (mouseY < 86))){
        if(mousePressed){
        Textura1 = false;
        Textura2 = false;
        Textura3 = true;
        Textura4 = false;
        Textura5 = false;
        Textura6 = false;
        }
   }

   if (((mouseX > 158) && (mouseY > 26)) && ((mouseX < 274) && (mouseY < 51))){
        if(mousePressed){
        Textura1 = false;
        Textura2 = true;
        Textura3 = false;
        Textura4 = false;
        Textura5 = false;
        Textura6 = false;
        }
   }
    if (((mouseX > 157) && (mouseY > 62)) && ((mouseX < 274) && (mouseY < 88))){
        if(mousePressed){
        Textura1 = false;
        Textura2 = false;
        Textura3 = false;
        Textura4 = true;
        Textura5 = false;
        Textura6 = false;
        }
   }
    if (((mouseX > 20) && (mouseY > 97)) && ((mouseX < 138) && (mouseY < 123))){
        if(mousePressed){
        Textura1 = false;
        Textura2 = false;
        Textura3 = false;
        Textura4 = false;
        Textura5 = true;
        Textura6 = false;
        }
   }
     if (((mouseX > 157) && (mouseY > 97)) && ((mouseX < 274) && (mouseY < 123))){
        if(mousePressed){
        Textura1 = false;
        Textura2 = false;
        Textura3 = false;
        Textura4 = false;
        Textura5 = false;
        Textura6 = true;
        }
      }
      if (((mouseX > 484) && (mouseY > 31)) && ((mouseX < 522) && (mouseY < 68))){
        if(mousePressed){
          R = 255;
          G = 86;
          B = 86;
          llamar.cambiarColor(R,G,B);
        }
     }
       if (((mouseX > 554) && (mouseY > 31)) && ((mouseX < 592) && (mouseY < 68))){
        if(mousePressed){
          R = 255;
          G = 177;
          B = 86;
          llamar.cambiarColor(R,G,B);
   }
 }
       if (((mouseX > 625) && (mouseY > 31)) && ((mouseX < 662) && (mouseY < 68))){
        if(mousePressed){
          R = 255;
          G = 249;
          B = 86;
          llamar.cambiarColor(R,G,B);
   }
}
       if (((mouseX > 689) && (mouseY > 33)) && ((mouseX < 726) && (mouseY < 68))){
        if(mousePressed){
          R = 173;
          G = 255;
          B = 86;
          llamar.cambiarColor(R,G,B);
   }
}
       if (((mouseX > 484) && (mouseY > 91)) && ((mouseX < 522) && (mouseY < 126))){
        if(mousePressed){
          R = 86;
          G = 197;
          B = 255;
          llamar.cambiarColor(R,G,B);
   }
}
       if (((mouseX > 553) && (mouseY > 91)) && ((mouseX < 590) && (mouseY < 124))){
        if(mousePressed){
          R = 189;
          G = 140;
          B = 255;
          llamar.cambiarColor(R,G,B);
   }
}
       if (((mouseX > 623) && (mouseY > 91)) && ((mouseX < 661) && (mouseY < 124))){
        if(mousePressed){
          R = 255;
          G = 255;
          B = 255;
          llamar.cambiarColor(R,G,B);
   }
}
       if (((mouseX > 690) && (mouseY > 91)) && ((mouseX < 726) && (mouseY < 124))){
        if(mousePressed){
          R = 0;
          G = 0;
          B = 0;
          llamar.cambiarColor(R,G,B);
   }
  }
       if (((mouseX > 306) && (mouseY > 23)) && ((mouseX < 375) && (mouseY < 56))){
        if(mousePressed){
          distancia = (distancia - 3);
          llamar.cambiarDistancia(distancia);
 }
}
     if (((mouseX > 306) && (mouseY > 73)) && ((mouseX < 375) && (mouseY < 106))){
        if(mousePressed){
          distancia = (distancia + 3);
          llamar.cambiarDistancia(distancia);
  }
     }
  if(Textura1){
        llamar.texturaCirculos();
        }
    if(Textura2){
        llamar.texturaHilo();
        }
        if(Textura3){
        llamar.texturaLineas();
        }
         if(Textura4){
        llamar.texturaFlores();
        }
          if(Textura5){
         llamar.texturaCurvas();
        }
           if(Textura6){
      llamar.texturaHojas();
        }
        
 }

 void botonBorrar(){
     if (((mouseX > 409) && (mouseY > 40)) && ((mouseX < 457) && (mouseY < 107))){
        if(mousePressed){
          noStroke();
         fill(255);
        rect(0, 143, 850, 707);
        loadPixels();
        stroke(R,G,B);
        }
   } 
 }
 void botonTamano(){
   if (((mouseX > 757) && (mouseY > 31)) && ((mouseX < 841) && (mouseY < 64))){
        if(mousePressed){
          tamano = tamano + 1;
          println("entro");
          llamar.cambiarTamano(tamano);
 }
 }
    if (((mouseX > 756) && (mouseY > 82)) && ((mouseX < 840) && (mouseY < 115))){
        if(mousePressed){
          tamano = tamano - 1;
          println("entro");
          llamar.cambiarTamano(tamano);
 }
 }
 }
}
