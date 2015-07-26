int px,py;  // Coordenadas X,Y del punto.
int vx,vy;  // Velocidad en el eje X,Y de nuestro punto.
int diametro;  // Diametro de nuestro punto.


void setup ()
{
  size(800,600);  //  Resolucion de la ventana.
  background (0);  // Color de fondo (Negro).
  frameRate(600);  // Fotogramas por segundo
  px = width/2;  // Posicion inicia en el eje X (longitud de la ventana / 2).
  py = height/2;  // Psicion inicial en el eje Y (altitud de la ventana /2).
  vx = vy = 3;  // Velocidad en el eje X,Y (doble asignacion).
  diametro = 30;  // Diametro de nuestro  punto.
  fill(255);  // El fondo de nuestro punto (Blanco).
  noStroke();  // El punto no tendra bordes.
}

void draw ()
{
  // Creamos un Cuadro del temaño de la ventana totalmente en negro con un poco 
  // de transparencia (10) para que la escela vaya difuminandose en cada frame.
  
  fill(0,10);              
  rect(0,0,width,height);  
  
  // Condiciones para detectar las colisiones con el borde de la Ventana.
  
  if (px + diametro/2 > width -1 || px - diametro/2 < 0)
  {              // Si la coordenada de nuestro punto en el eje X es
    vx *= -1;    // mayor que la anchura de la ventana o menor, se
  }              // invierte la velocidad en el eje X (rebota).
  
  if (py + diametro/2 > height -1 || py - diametro/2 < 0)
  {              // Si la coordenada de nuestro punto en el eje Y es 
    vy *= -1;    // mayor que la altura de la ventana o menor, se 
  }              // invierte la velocidad en el eje Y (rebota).
  
  // Cambio en las coordenadas del punto en este frame y asi simular el movimiento.
  px += vx;    // sumamos a la coordenada del eje X la velocidad correspondiente.
  py += vy;    // sumamos a la coordenada del eje Y la velocidad correspondiente.
  
  fill(255);  // El fondo de nuestro punto (Blanco).
  noStroke();  // El punto no tendra bordes.
  ellipse (px,py,diametro,diametro);   // Dibujamos el punto. 
}
