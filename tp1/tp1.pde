PImage miFoto;
//cargar imagen en la variable
miFoto=loadImage("autoretrato_ipmi.jpg");


//fondo
background(16, 17, 15); // color del suelo
pushStyle(); //guarda el estado actual del estilo
strokeWeight(200); //anchura de línea
stroke(47, 43, 107); // color del cielo
line(400,10,800,10); // cielo
popStyle(); // hace que los comandos superiores (strokeweight, stroke) no afecten a otros comandos, o sea, restaura el estilo
pushStyle();
strokeWeight(3);
stroke(228, 166, 215); //color de luces v
line(625,60,685,0);
line(640,60,695,0);
line(655,60,700,0);
line(670,60,705,0);
line(685,60,710,0);
line(700,60,715,0);
line(715,60,715,0);
line(730,60,720,0);
line(745,60,725,0);
line(765,60,730,0);
line(780,60,735,0);
line(795,60,740,0);
line(800,55,745,0);
line(800,50,740,0);
line(800,45,740,0);
line(625,60,625,80);
line(650,60,650,120);
line(675,60,675,107);
line(700,60,700,120);
line(725,60,725,107);
line(750,60,750,120);
line(775,60,775,107);
line(800,60,800,120);
strokeWeight(25);
stroke(255); //color luz
line(630,70,800,70); //luz
popStyle();


//sombra
pushStyle();
noStroke();
fill(7, 10, 7);
ellipse(690,400,150,250);
popStyle();


//pelo por detrás de la cabeza
pushStyle();
noStroke(); // elimina los bordes de las figuras
fill(7, 5, 8); //rellena de color la figura, color del pelo (mas oscuro por las sombras)
rect(600,100,40,130); //figura para el pelo cayendo del lado derecho
pushMatrix(); //guarda el estado actual del sist. de coordenadas
translate(575,140); //genera un nuevo punto (0,0), en este caso (575,140)
rotate(radians(35)); //rota la figura en grados
arc(10,-10,30,30,0,PI,CHORD); //mechon de pelo del lado izquierdo (detras del cuello)
popMatrix(); //restaura el estado del sist. de coordenadas
popStyle();


//cara
pushStyle();
noStroke(); 
pushMatrix(); 
translate(600,100);
rotate(radians(15)); 
fill(223, 156, 114); // color de la cara
ellipse(0,0,70,80); //forma de la cara
popStyle(); 
popMatrix();
pushStyle();
pushMatrix();
noStroke();
fill(142, 103, 79); //color sombra
translate(600,100); //guarda el nuevo (0,0) en (600,100)
rotate(radians(140)); //rota la figura
arc(2,-34,25,7,0,PI,CHORD); //sombra de pómulo
popStyle();
popMatrix();

//ojos
//fondo-esclerótica
pushStyle();
pushMatrix();
translate(600,100); //guarda el nuevo (0,0) en (600,100)
rotate(radians(10)); //rota el ojo derecho
noStroke();
fill(220, 204, 202); //color de ojo
ellipse(15,4,15,8); //ojo der
rotate(radians(350)); //rota el ojo izquierdo
ellipse(-15,4,15,8); //ojo izq
popStyle();
popMatrix();
//pupilas
pushStyle();
noStroke();
fill(108, 61, 81); // color de pupila
circle(615,106,8); //pupila der
circle(586,104,8); //pupila izq
fill(226, 197, 190); //color de brillo
circle(613,104,3); //brillo der
circle(614,104,3); //"
circle(583,103,3); //brillo izq
circle(584,103,3); //"
popStyle();


//cejas
pushMatrix();
pushStyle();
noStroke();
fill(102, 57, 64); //color de cejas
translate(600,100); //guarda el nuevo (0,0) en (600,100)
rotate(radians(177)); //rota la ceja derecha
arc(-12,1,14,5,0,PI,CHORD); //ceja der
rotate(radians(15)); //rota la ceja izquierda
arc(12,0,14,5,0,PI,CHORD); //ceja izq
popMatrix();
popStyle();


//nariz
pushStyle();
pushMatrix();
noStroke();
translate(598,120); //guarda el nuevo (0,0) en (598,120)
fill(121, 76, 73); //color del puente/sombra
rotate(radians(96)); //rota el puente/sombra
arc(-9,-4,23,7,0,PI,CHORD); //puente/sombra de la nariz
popStyle();
popMatrix();
pushStyle();
fill(162, 102, 101); //color de la punta de la nariz
noStroke();
ellipse(598,120,10,6); //punta de la nariz
popStyle();


//boca
//labio superior
pushStyle();
stroke(197, 120, 104); //color del labio
strokeWeight(3);
line(588,126,603,128); //labio superior
popStyle();
//labio inferior
pushStyle();
pushMatrix();
noStroke();
fill(197, 120, 104); //color del labio
translate(600,100); //guarda el nuevo (0,0) en (600,100)
rotate(radians(8)); //rota el labio inferior
arc(0,29,14,8,0,PI,CHORD); //labio inferior
popStyle();
popMatrix();
//separacion
pushStyle();
stroke(185, 104, 83); //color de la linea
line(589,127,602,129); //linea que separa los labios
popStyle();


//cuello
pushStyle();
noStroke();
fill(223, 156, 114); //color del cuello
rect(590,138,18,25); //forma del cuello
popStyle();


//hombro
pushStyle();
noStroke();
fill(223, 156, 114); //color del hombro
circle(625,168,25); //forma del hombro
popStyle();


//torso
pushStyle();
strokeWeight(7);
stroke(223, 156, 114); //color del torso
line(625,160,573,165); //linea de guia por la perspectiva
fill(223, 156, 114); //relleno del torso
rect(570,165,80,130, 5); //forma del torso
popStyle();
//correcciones para dar mejor forma
pushStyle();
noStroke();
fill(16, 17, 15); //color de fondo para corregir
circle(650,165,24); //correccion para formar la curva de la espalda
popStyle();
pushStyle();
strokeWeight(15);
stroke(16, 17, 15); //color de fondo para corregir
line (650,165,650,200); //correccion para formar la curva de la espalda
popStyle();
//correccion espalda/hombro
pushMatrix();
pushStyle();
translate(675,162); //guarda el nuevo (0,0) en (675,162)
rotate(radians(-90)); //rota la figura
noStroke();
fill(223, 156, 114); //color de espalda
arc(-28,-40,60,20,0,PI,CHORD); //curva de la espalda
popMatrix();
popStyle();


//pañuelo
pushStyle();
noStroke();
fill(15, 11, 28); //color del pañuelo
quad(567,187,656,210,623,290,567,295); //forma del pañuelo
quad(640,210,653,213,670,290,660,350); //cola del pañuelo
circle(656,215,22); //nudo del pañuelo
popStyle();


//curva de la espalda baja
pushStyle();
pushMatrix();
noStroke();
fill(16, 17, 15); //color de fondo 
translate(660,250); //guarda el nuevo (0,0) en (660,250)
rotate(radians(82)); //rota la figura
arc(25,12,73,15,0,PI,CHORD); //forma la curva
popMatrix();
popStyle();


//pollera
pushStyle();
noStroke();
fill(234, 230, 214); //color de la pollera
quad(567,293,648,293,640,400,530,400); //forma de la pollera
popStyle();
pushStyle();
strokeWeight(11); //detalle de transparencia
stroke(224, 207, 197); //"
line(536,395,560,400); //"
line(560,400,636,384); //"
popStyle();


//cinturón
pushStyle();
noStroke();
fill(33, 28, 32); //color del cinturon
circle(575, 310, 20); //circulos que lo forman v
circle(590,315,20);
circle(605,318,20);
circle(620,318,20);
circle(637,319,20);
popStyle();
pushStyle();
noStroke();
fill(240); //color del brillo del centro
circle(575,310,3); //brillos v
circle(590,315,3);
circle(605,318,3);
circle(620,318,3);
circle(637,319,3);
popStyle();


//brazo
pushStyle();
strokeWeight(26); //grosor del brazo (por encima del codo)
stroke(223, 156, 114); //color de brazo
line(625,168,585,276); //brazo (por encima del codo)
popStyle();
pushStyle();
strokeWeight(24); //grosor del antebrazo
stroke(223, 156, 114); //color del antebrazo
line(585,276,550,330); //antebrazo
popStyle();
//codo
pushStyle();
pushMatrix();
noStroke();
fill(142, 103, 79); //color del codo (sombras)
translate(585,276); //guarda el nuevo (0,0) en (585,276)
rotate(radians(300)); //rota la figura
arc(0,7,13,6,0,PI,CHORD); //sombra de codo
circle(2,-3,4); //"
popStyle();
popMatrix();


//mano
pushStyle();
noStroke();
fill(223, 156, 114); //color de la mano
quad(538,327,559,340,549,365,535,370); //forma de la mano
popStyle();
pushStyle();
stroke(223, 156, 114); //color de mano
strokeWeight(8);
line(538,370,549,373); //dedos
popStyle();
//pulsera
pushStyle();
stroke(175, 123, 114);
strokeWeight(5);
line(543,320,560,330);
popStyle();
//sombra de la mano
pushStyle();
noStroke();
fill(142, 103, 79); //color de sombra
quad(548,334,549,340,547,365,535,370); //sombra
popStyle();
//dedo pulgar
pushStyle();
stroke(234, 230, 214); //color de la pollera
strokeWeight(3);
line(563,363,545,358); //linea para crear el dedo pulgar
line(545,358,547,345); //"
fill(234, 230, 214); //color de la pollera
circle(549,364,3); //corrección 
popStyle();
pushStyle();
stroke(16, 17, 15); //color de fondo para correcciones
strokeWeight(7);
line(559,289,539,320); //coreccion
strokeWeight(3);
line(539,320,535,340); //correccion
popStyle();

//pelo por delante
pushStyle();
pushMatrix();
noStroke();
fill(18, 13, 22); //color de pelo
translate(615,60); //guarda el nuevo (0,0) en (615,60)
rotate(radians(30)); //rota la figura
arc(20,20,50,20,0,PI,CHORD); //flequillo derecho
arc(35,27,28,20,0,PI,CHORD); //"
rotate(radians(-60)); //rota la figrua
arc(-35,5,60,20,0,PI,CHORD); //flequillo izquierdo
rotate(radians(250)); //rota la figura
arc(-15,-20,61,40,0,PI,CHORD); //relleno izquierdo
rotate(radians(278)); //rota la figura
arc(35,-3,60,50,0,PI,CHORD); //relleno derecho
popMatrix();
popStyle();
pushStyle();
strokeWeight(10);
stroke(18, 13, 22); //color de pelo
line(636,95,644,170); //mechón frontal derecho
line(568,95,567,230); //mechón frontal izquierdo
popStyle();
pushStyle();
stroke(97, 76, 91); //color 
line(602,84,605,66);//raya cuero cabelludo
popStyle();
pushStyle();
noStroke();
pushMatrix();
fill(18, 13, 22); //color de pelo
translate(645,100); // //guarda el nuevo (0,0) en (645,100)
rotate(radians(123)); //rota la figura
arc(47,-5,55,20,0,PI,CHORD); //mechón de pelo
rotate(radians(0));
arc(68,-5,50,30,0,PI,CHORD); //"
rotate(radians(150));
arc(-85,-37,40,30,0,PI,CHORD); //"
circle(-80,-37,12); //"
rotate(radians(330));
arc(-40,-35,40,20,0,PI,CHORD); //"
rotate(radians(45));
arc(-90,10,60,20,0,PI,CHORD); //"
circle(-75,19,11); //"
rotate(radians(55));
arc(-70,100,30,10,0,PI,CHORD); //"
circle(-55,100,10); //"
popMatrix();
popStyle();




//muestra la imagen
image(miFoto,0,0,400,400);
//tamaño de la ventana
size(800,400);
