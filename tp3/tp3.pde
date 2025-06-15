//Valentina Mazzoleni - com3


PImage refe; //variable de la imagen
int cantcir = 6; //cantidad de circulos
int lineas = 10; //cantidad de lineas
color[] colores = new color[lineas]; //guarda los colores
boolean invertir = false; //invertir lineas
boolean primerClick = true; //mantener colorees en el primer click
float centroX = 600; //posicion fija de los circulos
float centroY = 200;
float puntaX = 600; //posicion movible del circulo mas pequeño
float puntaY = 200;
boolean agarrado = false; //indica si el circulo esta agarrado al cursor


void setup() {
  size(800, 400); // tamaño de la ventana
  refe=loadImage("F_25.jpg"); //cargar imagen en la variable
  }


void draw() {
  background(255); // fondo blanco
  image(refe,0,0,400,400); //muestra la imagen del lado izquierdo
  noStroke(); // para que las formas no tengan borde

  // rects
  for (int cuad = 1; cuad <= 4; cuad++) { //recorre los 4 cuadrantes
    for (int i = 0; i < lineas; i++) { //dibuja la cantidad de lineas por cuadrante
     
      if (primerClick) { //controla el primer click para mantener el byn
  if (i % 2 == 0) {
    fill(0); //negro en par
  } else {
    fill(255); //blanco en impar
  }
} else {
  fill(colores[i]); //usa los colores aleatorios guardados
}

      if (cuad == 1) {
        if (!invertir){
        // cuad1
        float y = map(i, 0, lineas, 0, 200); //calcula pos y para líneas horizontales
        rect(400, y, 200, height/lineas);
      } else {
        float x = map(i,0,lineas,400,600); //calcula pos x para líneas verticales
        rect(x,0,width/lineas,200);
        }
        }
      
     else if (cuad == 2) {
       if (!invertir){
        // cuad2
        float x = map(i, 0, lineas, 600, 800); //vertical
        rect(x, 0, width/lineas, 200);
      } else {
        float y = map(i,0,lineas,0,200); //horizontal
        rect(600,y,200,height/lineas);
      }
      }
      
      else if (cuad == 3) {
        if (!invertir){
        // cuad3
        float x = map(i, 0, lineas, 400, 600); //vertical
        rect(x, 200, width/lineas, 200);
      } else {
        float y = map(i,0,lineas,200,400); //horizontal
        rect(400,y,200,height/lineas);
        }
      }
      
     else if (cuad == 4) {
       if (!invertir){
        // cuad4
        float y = map(i, 0, lineas, 200, 400); //horizontal
        rect(600, y, 200, height/lineas);
        }else{
        float x = map(i, 0, lineas, 600, 800); //vertical
        rect(x,200,width/lineas,200);
      }
    }
  }
  }

  // circulos cocéntricos
 if (agarrado) { //si el circulo del medio está agarrado (se hizo click) sigue al mouse
  puntaX = mouseX;
  puntaY = mouseY;
}

for (int i = 0; i < cantcir; i++) {
 if (i % 2 == 0) {
  fill(0); //par negro
} else {
  fill(255); //impar blanco
}
  
  float diam = map(i, 0, cantcir - 1, 235, 40);  //los circulos se van achicando
  float t = map(i, 0, cantcir - 1, 0, 1);
  float x = centroX + (puntaX - centroX) * t;  
  float y = centroY + (puntaY - centroY) * t;   //devuelve el valor entre dos numeros
  
  ellipse(x, y, diam, diam);
}
}


void mousePressed(){
   float diam = 40; // diámetro del más chico
  float d = dist(mouseX, mouseY, puntaX, puntaY); //mide la distancia al circulo mas chico
  
  if (d < diam / 2) {
    agarrado = true; //si clickea dentro del circulo mas chico lo agarra
  }

  invertir = !invertir; //cambia de horizontal a vertical o viceversa
  for (int i = 0; i < colores.length; i++) {
    colores[i] = color(random(255), random(255), random(255)); //genera colores random
    primerClick = false; // si no es el primer click se usan los colores random
  }
}


void mouseReleased() {
  agarrado = false; // suelta el círculo cuando se deja de clickear
}


void reiniciar() {
  invertir = false; //vuelve a la orientacion original
  primerClick = true; //vulelve al byn
  agarrado = false; //suelta el circulo

  centroX = 600; //reestablece todas las posiciones
  centroY = 200;
  puntaX = 600;
  puntaY = 200;

  // reinicia los colores
  for (int i = 0; i < colores.length; i++) {
    if (i % 2 == 0) {
      colores[i] = color(0);
    } else {
      colores[i] = color(255);
    }
  }
}


void keyPressed() {
 if (key == 'r' || key == 'R') {
    reiniciar(); // si se presiona la tecla r se reinicia
  }
}
