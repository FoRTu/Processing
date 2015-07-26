void setup() // Función que se ejecuta al principio a modo de Configuracion
 {
   size(300, 200);  
   background (60,200,200); // Color del fondo en RGB con tres valores entre 0 y 255
   
 }
 
void draw() // Funcion que se ejecuta en cada Frame
{
  circulo();      // Llamada a la funcion para dibujar una Elipse
  rectangulo();  // llamada a la funcion para dibujar un Rectangulo
  linea();      // Llamada a la funcion para dibujar una Linea
  triangulo(); // Llama a una funcion para dibujar un Triangulo
}
 
void circulo() // Circulo con borde de color y grosor determinado, con un relleno de color
{
  // fil(RED,GREEN,BLUE) Define el Color de fondo del los siguientes dibujos
  fill(0,255,0);
  // stroke(RED,GREEN,BLUE) Define el color del borde del los siguientes dibujos
  stroke(255,0,0);
  // strokeWeight(valor) Grosor del bordes
  strokeWeight(3);
  ellipse(50,50,70,70);
}

void rectangulo() // Rectangulo sin relleno pero con un borde de color y grosor determinado
{
  // noFill() Los siguientes dibujos no tendran relleno
  noFill();
  stroke(0,0,255);
  strokeWeight(13);
  rect(100,20,80,60);
 }

void linea() // Una linea de grosor determinado y color
{
  stroke(255,0,255);
  strokeWeight(5);
  line(200,10,275,80);
}

void triangulo() // Triangulo sin borde pero si relleno de un color
{
  //noStrock() los siguientes dibujos no tendran borde
  noStroke();
  fill(150,56,87);
  triangle(150,100,75,175,225,175);
}
