void setup() // Función que se ejecuta al principio a modo de Configuracion
 {
   size(300, 200); // Tamaño de la ventana donde transcurrira el programa
 }
 
void draw() // Funcion que se ejecuta en cada Frame
{
  circulo();      // Llamada a la funcion para dibujar una Elipse
  rectangulo();  // llamada a la funcion para dibujar un Rectangulo
  linea();      // Llamada a la funcion para dibujar una Linea
  triangulo(); // Llama a una funcion para dibujar un Triangulo
}
 
void circulo() // Crea una elipse en base a un punto central
{
  // elipse(PuntoCentral X, PuntoCentral Y, Anchura, Altura)
  ellipse(50,50,70,70);
}

void rectangulo() // En base a un punto inicial crea un rectangulo
{
  // rect(PuntoInicio X, PuntoInicio Y, Anchura, Altura)
  rect(100,20,80,60);
}

void linea() // Dibuja una linea entre dos puntos
{
  // line(Punto1 X, Punto1 y, Punto2 x, Punto2 y)
  line(200,10,275,80);
}

void triangulo()// Dibuja un trianglu en base a tres puntos 
{
  // triangle(Punto1 X, Punto1 y, Punto2 x, Punto2 y, Punto3 x, Punto3 y)
  triangle(150,100,75,175,225,175);
}
