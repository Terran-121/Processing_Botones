boolean estaSobre=false; 
boolean conectado=false;
int x=50;
int y=200;
int w=80;
int h=40;
String tex1="Play";
String tex2="Stop";
color cor=color(150, 0, 0);

void setup() {
  size(1000, 500); 
  fill(50, 200, 50);
  display();
}

void draw() {
  mouseMoveu();
}

void mouseMoveu() {//para que el cursos se muestre como manito cuando esta sobre el cuadro y como cursor cunado sale del area del cuadrado
  if (mouseX>x && mouseX<x+w && mouseY>y && mouseY<y+h) {
    if (estaSobre==false) {
      cursor(HAND);
      estaSobre=true;
    }
  } else {
    if (estaSobre) {
      cursor(ARROW);
      estaSobre=false;
    }
  }
}

void mouseClicked() { 
  if (mouseY>y && mouseY<y+h) {
    if (mouseX>x && mouseX<x+w) {
      conectado=!conectado;
      display();
      println(conectado );
    }
  }
}

void display() {
  fill(cor); 
  strokeWeight(2); 
  stroke(255);
  rect(x, y, w, h, 10);
  fill(0);
  textSize(24);
  textAlign(CENTER, CENTER);
  if (conectado) { // desconectar      
    text(tex1, x+w/2, y+h/2);
    cor=color(150, 0, 0);//verde
  } else {        // conectar
    text(tex2, x+w/2, y+h/2);
    cor=color(0, 150, 0);//rojo
  }
}
