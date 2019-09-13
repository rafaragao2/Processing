PImage imagem, imagemInterpolacao;
int x=0,y=0;

void setup(){
  background(0,255,0);
  size(1020, 420);
  imagem = loadImage("bahia.jpg");
  image(imagem, 0,0);
  imagemInterpolacao = createImage(510,420,RGB);
  float x_r,y_r;
  
  for (int i=0; i<imagem.width; ++i){
    for (int j=0; j<imagem.height; ++j){
       color px1, px2, px3, px4, ponto;
       float deltaY, deltaX;
       x_r = i * cos(radians(-17)) + j * sin(radians(-17));
       y_r = j * cos(radians(-17)) - i * sin(radians(-17));
       x = (int)x_r;
       y = (int)y_r;
       deltaY = x_r - x;
       deltaX = y_r - y;
       px1 = get(x,y);
       px2 = get(x+1, y);
       px3 = get(x, y+1);
       px4 = get(x+1, y+1);
       ponto = interpolacao(px1,px2,px3,px4,deltaY,deltaX);
       imagemInterpolacao.set(i,j,ponto);
    }
  }
}

void draw(){
   image(imagemInterpolacao,510,25);
}

float controle(float deltaCol, float canal1, float canal2){
  return deltaCol * (canal2 - canal1) + canal1;
}

color interpolacao(color A,color B, color C, color D, float deltaY, float deltaX){
  float controlAB,controlCD,r,g,b;
  controlAB = controle(deltaY,red(A),red(B));
  controlCD = controle(deltaY,red(C),red(D));
  
  r = deltaX * (controlCD - controlAB) + controlAB;
  
  controlAB = controle(deltaY,green(A),green(B));
  controlCD = controle(deltaY,green(C),green(D));
  
  g = deltaX * (controlCD - controlAB) + controlAB;
  
  controlAB = controle(deltaY,blue(A),blue(B));
  controlCD = controle(deltaY,blue(C),blue(D));
  
  b = deltaX * (controlCD - controlAB) + controlAB;
  
  return color(r,g,b);
}
