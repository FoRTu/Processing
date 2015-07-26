int [] px;  // Array para las Coordenadas X de los puntos.
int [] py;  // Array para las Coordenadas y de los puntos.
int [] vx;  // Array para la Velocidad en el eje X de los puntos.
int [] vy;  // Array para la Velocidad en el eje y de los puntos.
int diametro;  // Diametro de nuestro punto.


void setup ()
{
  size(800,600);  //  Resolucion de la ventana.
  background (0);  // Color de fondo (Negro).
  frameRate(60);  // Fotogramas por segundo
  px = new int[20];  // Al tener 20 Puntos necesitaremos 20 coordenada en en el eje X.
  py = new int[20];  // Al tener 20 Puntos necesitaremos 20 coordenada en en el eje y.
  vx = new int[20];  // Al tener 20 Puntos necesitaremos 20 Velocidades en en el eje X.
  vy = new int[20];  // Al tener 20 Puntos necesitaremos 20 Velocidades en en el eje y.
  
  for(int i = 0; i < px.length; i++)
  {                              // Inicializamos las coordenadas X,Y de nuestros puntos con
   px[i]=int(random(width));    // un for que alimenta posiciones aleatorias entre la altura 
   py[i]=int(random(height));  // y la anchura maxima y minima de nuestra ventana.
  }
  
  for(int j = 0; j < vx.length; j++)
  {                                    // Inicializamos las velocidades en los ejes X,Y de
    vx[j]= vy[j]= int(random(1,7));   // cada uno de nuestros puntos de modo aleatorio entre 
  }                                  // los valores 1 y 7.
  
  diametro = 30;  // Diametro de nuestros  punto.
  fill(255);  // El fondo de nuestros puntos (Blanco).
  noStroke();  // El punto no tendra bordes.
}

void draw ()
{
  // Creamos un Cuadro del temaño de la ventana totalmente en negro con un poco 
  // de transparencia (10) para que la escela vaya difuminandose en cada frame.
  
  fill(0,10);              
  rect(0,0,width,height);  
  
  // Condiciones para detectar las colisiones con el borde de la Ventana.
  for (int h = 0; h < px.length; h++)
  {
    if (px[h] + diametro/2 > width -1 || px[h] - diametro/2 < 0)
    {                  // Si la coordenada de nuestro punto en el eje X es
      vx[h] *= -1;    // mayor que la anchura de la ventana o menor, se
    }                // invierte la velocidad en el eje X (rebota).
    
    if (py[h] + diametro/2 > height -1 || py[h] - diametro/2 < 0)
    {                // Si la coordenada de nuestro punto en el eje Y es 
      vy[h] *= -1;  // mayor que la altura de la ventana o menor, se 
    }              // invierte la velocidad en el eje Y (rebota).
    
    // Cambio en las coordenadas del punto en este frame y asi simular el movimiento.
    px[h] += vx[h];    // sumamos a la coordenada del eje X la velocidad correspondiente.
    py[h] += vy[h];    // sumamos a la coordenada del eje Y la velocidad correspondiente.
    
    fill(255);  // El fondo de nuestro punto (Blanco).
    noStroke();  // El punto no tendra bordes.
    ellipse (px[h],py[h],diametro,diametro);   // Dibujamos el punto.
  }
}
