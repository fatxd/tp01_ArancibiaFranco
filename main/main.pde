private boolean w, s, d, a;
private Player player;
private Enemigo enemigo;
private float tiempoInicio;

public void setup() {
  size(600, 600);
  this.tiempoInicio = millis();
  this.player = new Player();
  this.enemigo = new Enemigo();
}

public void draw() {
  background(0);

 
  float tiempoActual = millis();
  float deltaTime = (tiempoActual - tiempoInicio) / 1000.0;
  tiempoInicio = tiempoActual;


  //player.mover(w, s, a, d, deltaTime);
  //enemigo.mover(player, deltaTime);

 
  //player.verificarColision(enemigo);


  player.display();
  enemigo.display();
}

public void keyPressed() {
  char k = Character.toLowerCase(key);
  if (k == 'w') w = true;
  if (k == 's') s = true;
  if (k == 'a') a = true;
  if (k == 'd') d = true;
}

public void keyReleased() {
  char k = Character.toLowerCase(key);
  if (k == 'w') w = false;
  if (k == 's') s = false;
  if (k == 'a') a = false;
  if (k == 'd') d = false;
}
