/*

Simula a una nave viajando en el espacio, como en los videojuegos tipo AeroFighters.
Se hará uso de clases para generar las estrellas en movimiento del fondo mientras se
hará uso de una imagen en PNG de una nave espacial.

La imagen de la nave esta tomada prestada del siguiente foro:

http://opengameart.org/content/spaceship-tutorial-0

*/

Estrella[] Estrellas;    //Declaramos una matriz de objetos Estrella sin definir su tamaño. 
int cantidad = 7000;     //Cantidad de estrellas que deseamos simular.
PImage nave;             //Declaramos un objeto de PImage para poder después cargar ma imagen de nuestra nave.

void setup()
{
  size(800,600);          // Creamos la ventana de un tamaño especifico.
  background (0);        // Definimos el fondo de color negro.
  noStroke();           // todos los que dibujemos no tendrá bordes.
  nave = loadImage("nave.png");   //cargamos la imagen de la nave al Objeto antes definido.
  Estrellas = new Estrella[cantidad];  //Definimos el tamaño de nuestra matriz de objetos Estrella con un tamaño especifico.
  
  for (int w = 0; w < cantidad; w++)    // Creamos cada objeto Estrella con la información necesaria. 
    {
      Estrellas[w] = new Estrella(random(width), random(height), 2.8);    // Estrella (PosicionX, PosicionY, Velocidad)
    }          // Se crea un objeto Estrella en cada posición de la matriz con los datos aleatorios para las
}              // posiciones X e Y de la estrella y le damos la misma velocidad a todas:

void draw()
{
  background (0);  // Re-dibujamos el fondo en negro.
  for (int i = 0; i < cantidad; i++) 
  {
    Estrellas[i].UpdatePos();    // llamada a la función para actualizar la posición de la estrella.
    Estrellas[i].Display();      //  Dibujar la estrella.
  }
  image(nave, mouseX, mouseY);   // Cargamos la imagen tomando las posiciones X e Y desde el raton, pudiendo mover la nave a nuestro antojo.
}
