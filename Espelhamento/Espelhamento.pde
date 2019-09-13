//Aluno: Rafael Sousa Aragão de Almeida
PImage imagem;

void setup() {
  size (1000,420);
  imagem = loadImage("bahia.png");
}

void draw() {
  image(imagem, 0,0);
  int linha, coluna, pixel;
  for(linha=1; linha<490; linha++){
    for(coluna=1; coluna<490; coluna++){
     pixel = get(linha,coluna);
     set(1000 -linha ,coluna, pixel);
    }
  } 
}
