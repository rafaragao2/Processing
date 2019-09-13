//Aluno: Rafael Sousa Aragão de Almeida
PImage imagem;
void setup() {
  size(800,700);
  imagem = loadImage("doria.jpg");
}

void draw() {
  // Cinza
  image(imagem, 0,0);
  float canal_r,canal_g,canal_b;
  color cor_cz;
  int eixo_x, eixo_y, pixel;
  for(eixo_x=1; eixo_x<400; eixo_x++){
    for(eixo_y=1; eixo_y<140; eixo_y++){
     pixel = get(eixo_x,eixo_y);
     canal_r = red(pixel);
     canal_g = green(pixel);
     canal_b = blue(pixel);
     cor_cz = color((canal_r+canal_g+canal_b)/3);
     set(eixo_x+400 ,eixo_y, cor_cz);
    }
  }
  // R G B e invertido
  image(imagem, 0,140);
  image(imagem, 0,280);
  image(imagem, 0,420);
  image(imagem, 0,560);
  color cor_r, cor_g, cor_b,cor_i;
  for(eixo_x=1; eixo_x<400; eixo_x++){
    for(eixo_y=1; eixo_y<140; eixo_y++){
     pixel = get(eixo_x,eixo_y);
     canal_r = red(pixel);
     canal_g = green(pixel);
     canal_b = blue(pixel);
     cor_r = color(255-canal_r, 255, 255);
     cor_g = color(255, 255-canal_g, 255);
     cor_b = color(255, 255, 255-canal_b);
     cor_i = color(255-canal_r,255-canal_g,255-canal_b);
     set(eixo_x+400,eixo_y+140, cor_r);
     set(eixo_x+400,eixo_y+280, cor_g);
     set(eixo_x+400,eixo_y+420, cor_b);
     set(eixo_x+400,eixo_y+560, cor_i);
    }
  }
}
