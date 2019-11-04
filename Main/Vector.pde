class Vector{
 
  float pendiente;
  float inicio;
  float fin;
  
  Vector(){
   pendiente = 0;
   inicio = 0;
   fin = 0;   
  }
  void asignarValores(float x1, float y1, float x2, float y2){
      inicio = (x2-x1);
      println(inicio);
      fin = (y2-y1);
      pendiente = fin/inicio;
   
  }
  float getPendiente(){
      return pendiente;
  }
}
