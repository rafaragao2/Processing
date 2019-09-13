//Aluno: Rafael Sousa Aragão de Almeida
//Disciplina: Computação Gráfica

float x, y, speedX, speedY;
int time= 0;
boolean perdeu = false;
import processing.sound.*;
  SoundFile file;
  SoundFile file2;
  SoundFile file3;
  String audioName = "music.mp3";
  String audioName2 = "laser.mp3";
  String audioName3 = "derrota.mp3";
  String path;
  String path2;
  String path3;

void setup() {
  path = sketchPath(audioName);
  file = new SoundFile(this, path);
  path2 = sketchPath(audioName2);
  file2 = new SoundFile(this, path2);
  path3 = sketchPath(audioName3);
  file3 = new SoundFile(this, path3);
  fullScreen();
  fill(0, 255, 0);
  start();
  file.play();
}

void start() {
  x = width/2;
  y = height/2;
  speedX = 5;
  speedY = 5;
}

void draw() {  
  if (perdeu){
    file.stop();
      fill(255);
      rect((width/2)-200,(height/2)-100,400,200);
      fill(0);
      textSize(80);
      text("GAME",((width/2)-200),((height/2)-100),400,200);
      textSize(80);
      text("OVER",((width/2)-100),((height/2)-30),300,130);
  }
  else{
    background(0);
    ellipse(x, y, 10, 10);
    rect(0, 0, 20, height); //lateral esquerda
    rect(0, 0, width - 30, 20); //lateral superior
    rect(0,height - 20, width -30 , height -20); //lateral inferior
    rect(width-30, mouseY-40, 10, 80); //controle do mouse //barra movel tem 40px
    x += speedX;
    y += speedY;
    if ( y < 25) { // se a bola bater na parede superior (muda direção y)
      speedY *= -1;
      fill(255,15,192);
      rect(0, 0, width - 30, 20); //lateral superior
      fill(0, 255, 0);
      file2.play(); 
    }
    if( y > height - 25 ){ // se a bola bater na parede inferior (muda direção y)
      speedY *= -1;
      fill(255,15,192);
      rect(0,height - 20, width -30 , height -20); //lateral inferior
      fill(0, 255, 0);
      file2.play();
    }
    if ( x > width-30 && x < width -20 && y > mouseY-40 && y < mouseY+40 ) { //se a bola bater na barra (muda direção x)
      speedX = speedX * -1.2;
      file2.play();
    }
    if( x > width - 25){ //Bola fora da barra direita (perde jogo)
      file3.play();
      perdeu = true;
    }
    if (x < 20) { //se a bola bater na barra esquerda (muda direção x)
      fill(255,15,192);
      rect(0, 0, 20, height); //lateral esquerda
      fill(0, 255, 0);
      speedX *= -1;
      speedY *= 1;
      x += speedX;
      file2.play();
    } 
  }
}

void keyPressed(){
  if (key == CODED){
    if (keyCode == SHIFT){
      start();
    }
  }
}
