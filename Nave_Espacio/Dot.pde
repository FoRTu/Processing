/*

Con esta clase podremos crear objetos Estrella. El objeto necesita 3 parámetros:

1. Posición X de la Estrella(float).
2. Posición Y de la Estrella(float).
3. Velocidad de Movimiento del a estrella(float).

*/

class Estrella
{
 //VARIABLES GLOBALES
 float PosX = 0;  
 float PosY = 0;
 float Velocidad = 0;
 
 //CONSTRUCTOR
 Estrella(float PosX_tmp, float PosY_tmp, float Velocidad_tmp)
 {
   PosX = PosX_tmp;
   PosY = PosY_tmp;
   Velocidad = Velocidad_tmp;
 }
 
 
 //FUNCIONES
 void UpdatePos()
 {
   if ( PosY > height)
   {
     PosY = 0;
   }
   else 
   {
     PosY = PosY + Velocidad;
   }   
 }
 
 void Display()
 {
   fill (255);
   ellipse (PosX, PosY, 1, 1);
 }
}

