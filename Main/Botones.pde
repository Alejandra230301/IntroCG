class Botones{
  Puntos llamar;
  boolean Textura1, Textura2, Textura3, Textura4, Textura5, Textura6;
  
  Botones(){
  }
  void actualizarPunto(Puntos p){
   llamar = p;
   generarBotones();
  }


void generarBotones(){
 if (((mouseX > 10) && (mouseY > 5)) && ((mouseX < 90) && (mouseY < 45))){
        if(mousePressed){
        Textura1 = true;
        Textura2 = false;
        Textura3 = false;
        Textura4 = false;
        Textura5 = false;
        Textura6 = false;
        }
   }
 
   else  if (((mouseX > 10) && (mouseY > 5)) && ((mouseX < 180) && (mouseY < 45))){
        if(mousePressed){
        Textura1 = false;
        Textura2 = true;
        Textura3 = false;
        Textura4 = false;
        Textura5 = false;
        Textura6 = false;
        }
   }

   if (((mouseX > 190) && (mouseY > 5)) && ((mouseX < 270) && (mouseY < 45))){
        if(mousePressed){
        Textura1 = false;
        Textura2 = false;
        Textura3 = true;
        Textura4 = false;
        Textura5 = false;
        Textura6 = false;
        }
   }
    if (((mouseX > 10) && (mouseY > 55)) && ((mouseX < 90) && (mouseY < 95))){
        if(mousePressed){
        Textura1 = false;
        Textura2 = false;
        Textura3 = false;
        Textura4 = true;
        Textura5 = false;
        Textura6 = false;
        }
   }
    if (((mouseX > 100) && (mouseY > 55)) && ((mouseX < 180) && (mouseY < 95))){
        if(mousePressed){
        Textura1 = false;
        Textura2 = false;
        Textura3 = false;
        Textura4 = false;
        Textura5 = true;
        Textura6 = false;
        }
   }
     if (((mouseX > 190) && (mouseY > 55)) && ((mouseX < 270) && (mouseY < 95))){
        if(mousePressed){
        Textura1 = false;
        Textura2 = false;
        Textura3 = false;
        Textura4 = false;
        Textura5 = false;
        Textura6 = true;
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
 }



 
