class Reproducir {
  
int x = 0;
  
  void eleccionVideo() {
    
    if(keyPressed)
    
    switch (key) {
      case 'a':
      x = 1;
      break;
      
      case 'b':
      x = 2;
      break;
      
      case 'c': 
      x = 3;
      break;
    }
    
    if(x == 1)
    Solo();
    
    if(x == 2)
    Senorita();
    
    if(x == 3)
    Whatislove();
    
  }
  
  void Solo() {
    
  solo.play();
  image(solo,0,360,640,360);
  video.loadPixels();
  prev.loadPixels();
 
  umbral = 35;

  loadPixels();
  for (int x = 0; x < video.width; x++ ) {
    for (int y = 0; y < video.height; y++ ) {
      int loc = x + y * video.width;
      
      color colorActual = video.pixels[loc];
      float r1 = red(colorActual);
      float g1 = green(colorActual);
      float b1 = blue(colorActual);
      color prevColor = prev.pixels[loc];
      float r2 = red(prevColor);
      float g2 = green(prevColor);
      float b2 = blue(prevColor);

      float d = distSq(r1, g1, b1, r2, g2, b2); 

      if (d > umbral*umbral) {
        pixels[loc] = color(255);
      } else {
        pixels[loc] = color(177, 229, 240);
      }
    }
  }
  updatePixels();
  }
  
  void Senorita() {
    
  senorita.play();
  image(senorita,0,360,640,360);
  video.loadPixels();
  prev.loadPixels();

  umbral = 35;

  loadPixels();
  for (int x = 0; x < video.width; x++ ) {
    for (int y = 0; y < video.height; y++ ) {
      int loc = x + y * video.width;
      
      color colorActual = video.pixels[loc];
      float r1 = red(colorActual);
      float g1 = green(colorActual);
      float b1 = blue(colorActual);
      color prevColor = prev.pixels[loc];
      float r2 = red(prevColor);
      float g2 = green(prevColor);
      float b2 = blue(prevColor);

      float d = distSq(r1, g1, b1, r2, g2, b2); 

      if (d > umbral*umbral) {
        pixels[loc] = color(255);
      } else {
        pixels[loc] = color(255, 230, 148);
      }
    }
  }
  updatePixels();
  }
  
  void Whatislove() {
    
  whatislove.play();
  image(whatislove,0,360,640,360);
  video.loadPixels();
  prev.loadPixels();

  umbral = 35;

  loadPixels();
  for (int x = 0; x < video.width; x++ ) {
    for (int y = 0; y < video.height; y++ ) {
      int loc = x + y * video.width;
      
      color colorActual = video.pixels[loc];
      float r1 = red(colorActual);
      float g1 = green(colorActual);
      float b1 = blue(colorActual);
      color prevColor = prev.pixels[loc];
      float r2 = red(prevColor);
      float g2 = green(prevColor);
      float b2 = blue(prevColor);

      float d = distSq(r1, g1, b1, r2, g2, b2); 

      if (d > umbral*umbral) {
        pixels[loc] = color(255);
      } else {
        pixels[loc] = color(255, 194, 243);
      }
    }
  }
  updatePixels();

   }
}
