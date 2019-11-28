class Pantallas {
  
  int pantalla = 1;
  boolean ins = true;
  
  void statusPantalla(){
   switch (pantalla){
    case 1:
    Inicio();
    break;
    
    case 2:
    Instrucciones();
    break;
    
 }
  }
  
  void Inicio() {
    image(portada,0,0);
    fill(0);
    textFont(f);
    textSize(15);
    textAlign(CENTER,CENTER);
    text("> Presiona '1' para continuar", 500, 700);
    
    if (keyPressed)
    if(key == '1')
    pantalla++;
  }
  
  void Instrucciones() {
    if(ins) {
    background(255);
    image(mancha,0,0);
    textSize(50);
    textAlign(CENTER, CENTER);
    text("Instrucciones:", width/2, 100);
    textSize(20);
    text("Selecciona una canción y baila para que la  ",300,200);
    text("cámara detecte tu movimiento.",225,225);
    textSize(15);
    text("(Se recomienda que el fondo sea liso para una mejor captura)",300,270);
    textSize(20);
    textAlign(CENTER,CENTER);
    text("a > Solo - Jennie", 270, 350);
    text("b > Señorita - (G)I-DLE", 300, 400);
    text("c > What is love? - TWICE", 320, 450);
    }
    eleccion.eleccionVideo();
    if(keyPressed)
    ins = false;
 
  }
}
  
 
   
