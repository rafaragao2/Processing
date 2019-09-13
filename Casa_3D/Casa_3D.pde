//Aluno: Rafael Sousa Aragão de Almeida
PImage piso;
float rotx = PI/4;
float roty = PI/4;
void setup()  {
  size(720, 480, P3D);
  noStroke();
  fill(204);
  textureMode(NORMAL);
  piso = loadImage("gramado_3d.jpg");
}
void draw()  {
  background(0,0,0);
  lights();
  rotateX(rotx);
  rotateY(roty);
  noStroke();
  ambientLight(64, 64, 0,600,0,0);
/////Casa no centro
  translate(380, 320, 0);
  fill(139,69,19);
  box(160); 
  translate(-380, -320, 0);
/////Janela Acesa
  translate(350, 300, 65);
  fill(255, 255, 0);
  box(40);
  translate(-350, -300, -65);
/////Janela Apagada
  translate(410, 300 ,65);
  fill(0,0, 0);
  box(40);
  translate(-410, -300 ,-65);
/////Porta Entrada
  translate(380, 370 ,55);
  fill(121, 85, 72);
  box(60);
  translate(-380, -370 ,-55);
/////Nuvens
  fill(0,191,255);
  translate(300, 60 , 0);
  sphere(45);
  translate(30, 0 , 0);
  sphere(55);
  translate(30, 0 , 0);
  sphere(45);
  translate(-360, -60 , 0);
/////Sol
  translate(600,0,0);
  fill(255,255,0);
  sphere(50);
  translate(-500,0,0);
/////Piso
  beginShape();
  texture(piso);
  vertex(0,   400, -150,  0,0);
  vertex(600, 400, -150,  1,0);
  vertex(600, 400, 150,   1,1);
  vertex(0,   400, 150,   0,1);
  endShape(CLOSE);
}

void mouseDragged() {
  float rate = 0.01;
  rotx += (pmouseY-mouseY) * rate;
  roty += (mouseX-pmouseX) * rate;
}
