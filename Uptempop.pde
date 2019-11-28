import processing.video.*;
Pantallas flujo = new Pantallas();
Reproducir eleccion = new Reproducir();
Movie solo,senorita,whatislove;
Capture video;
PImage prev;
float umbral;
PImage portada;
PImage mancha;
PFont f;

void setup() {
  size(640, 720);
  String[] cameras = Capture.list();
  printArray(cameras);
  video = new Capture(this, cameras[1]);
  video.start();
  
  prev = createImage(640, 360, RGB);
  solo = new Movie(this,"solo.mp4");
  senorita = new Movie (this, "señorita.mp4");
  whatislove = new Movie (this, "whatislove.mp4");
  portada = loadImage("portada.jpg");
  portada.resize(1280,900);
  mancha = loadImage("mancha.png");
  mancha.resize(1200,900);
  f = loadFont("Comfortaa-Regular-48.vlw");

}

void captureEvent(Capture video) {
  prev.copy(video, 0, 0, video.width, video.height, 0, 0, prev.width, prev.height);
  prev.updatePixels();
  video.read();
}

void draw() {
 flujo.statusPantalla();
 //eleccion.eleccionVideo();

}

float distSq(float x1, float y1, float z1, float x2, float y2, float z2) {
  float d = (x2-x1)*(x2-x1) + (y2-y1)*(y2-y1) +(z2-z1)*(z2-z1);
  return d;
}

   void movieEvent(Movie m) {
  m.read();
   }
