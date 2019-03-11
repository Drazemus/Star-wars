import processing.sound.*;

PImage etoiles;
PImage titre;
float zoom = 0.8;
String s = " La  République  Galactique   est \n en pleine ébullition. La taxation \n des routes commerciales reliant \n les systèmes éloignés provoque \n la discorde. \n Pour régler la question, la cupide\n Fédération du Commerce et ses \n redoutables vaisseaux de guerre \n imposent un  blocus à la  petite \n planète Naboo.\n Face à ce dangereux engrenage, \n alors   que   le   Congrès   de  la  \n République   s’enlise  dans  des \n débats  sans  fin, le  Chancelier \n Suprême charge en secret deux \n Chevaliers  Jedi, gardiens  de la \n paix et   de la   justice dans   la \n galaxie, de résoudre le conflit…";
float i=0;
boolean flag=false;
  
SoundFile file;

void setup() {
  size(800, 600, P3D);
  textSize(40);
  etoiles = loadImage("etoiles3.jpg");
  titre = loadImage("starswars.png");
  file = new SoundFile(this, "generique.mp3");
  file.play();
}
void draw() {

  stroke(255);
  noFill();
  //triangle(0, 600, 400, -200, 800, 600);
  //line(0, 150, 800, 150);
  imageMode(CORNER);
  image(etoiles, 0, 0);
  imageMode(CENTER);
  if (flag==false) translate(400, 300);

  if (zoom > 0) {
    scale(zoom);
    image(titre, 0, 0);
    zoom = zoom - 0.0013;
  }
  
  if (zoom <= 0) {
    flag=true;
  }
  
  if (zoom <= 0) {
    i = i+0.3;
    rotateX(PI/4);
    zoom = 0;
    fill(255, 255, 0);
    textSize(17);
    text("  Episode 1", 350, 550-i, 0);
    textSize(20);
    text("LA MENACE FANTOME", 292, 600-i, 0);
    textSize(14);
    text(s, 289, 650-i, 0);
  }
}
