//Aluno: Rafael Sousa Aragão de Almeida
void setup(){
  size(800, 600);
  stroke(255);
}

void draw(){
//plano de fundo
  background(192,192,192);
////////////////////////////////////////////////////////
//arvore
  
  stroke(0,0,0);
  fill(139,69,19);
  quad(100, 430, 150, 430, 150, 580, 100, 580);
  
  stroke(0,128,0);
  fill(0,100,0);
  ellipse(125,440,240,150);
  
  strokeWeight(3);
////////////////////////////////////////////////////////
//prédio
  stroke(0,0,0);
  fill(32,178,170);
  quad(350, 20, 780, 20, 780, 580, 350, 580);
////////////////////////////////////////////////////////
//janelas

//fechadas
  stroke(0,0,0);
  fill(0, 0, 0);
  //1
  quad(420, 60, 520, 60, 520, 110, 420, 110);
  //2
  quad(640, 315, 740, 315, 740, 365, 640, 365);
  //3
  quad(640, 400, 740, 400, 740, 450, 640, 450);

//aberta
  stroke(0,0,0);
  fill(255, 255, 0);
  //1
  quad(690, 60, 740, 60, 740, 110, 690, 110);
  quad(640, 60, 690, 60, 690, 110, 640, 110);
  //2
  quad(420, 145, 470, 145, 470, 195, 420, 195);
  quad(470, 145, 520, 145, 520, 195, 470, 195);
  //3
  quad(690, 145, 740, 145, 740, 195, 690, 195);
  quad(640, 145, 690, 145, 690, 195, 640, 195);
  //4
  quad(420, 230, 470, 230, 470, 280, 420, 280);
  quad(470, 230, 520, 230, 520, 280, 470, 280);
  //5
  quad(690, 230, 740, 230, 740, 280, 690, 280);
  quad(640, 230, 690, 230, 690, 280, 640, 280);
  //6
  quad(420, 315, 470, 315, 470, 365, 420, 365);
  quad(470, 315, 520, 315, 520, 365, 470, 365);
  //7
  quad(420, 400, 470, 400, 470, 450, 420, 450);
  quad(470, 400, 520, 400, 520, 450, 470, 450);
////////////////////////////////////////////////////////
//portas
  stroke(0,0,0);
  fill(75,0,130);
  quad(470, 490, 580, 490, 580, 580, 470, 580);
  quad(580, 490, 690, 490, 690, 580, 580, 580);
///////////////////////////////////////////////////////
//fechaduras
  stroke(0,0,0);
  fill(0,0,0);
  ellipse(560,535,5,5);
  ellipse(600,535,5,5);
}