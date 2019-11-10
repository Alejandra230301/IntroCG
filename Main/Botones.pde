class Botones{
  Puntos llamar;
  boolean Textura1, Textura2, Textura3, Textura4, Textura5, Textura6;
  
  Botones(){
  }
  void actualizarPunto(Puntos p){
   llamar = p;
   generarTextura1();
  }

  void generarTextura1(){
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
    if(Textura1){
        llamar.dibujarCirculos();
        }
   }
   void generarTextura2(){
   if (((mouseX > 10) && (mouseY > 5)) && ((mouseX < 180) && (mouseY < 45))){
        if(mousePressed){
        Textura1 = false;
        Textura2 = true;
        Textura3 = false;
        Textura4 = false;
        Textura5 = false;
        Textura6 = false;
        }
   }
    if(Textura2){
        llamar.Textura3();
        }
   }   
}
