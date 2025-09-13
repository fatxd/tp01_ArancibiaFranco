class Player {

  private int diametro;
  private float velocidad;
  private PVector posicion;
  private color colorActual;

  public Player() {
    this.posicion = new PVector(width/2, height/2);
    this.velocidad = 200;
    this.diametro = 50;
    this.colorActual = color(0, 255, 0);
  }

  public PVector getPosicionPlayer() {
    return this.posicion;
  }

  public int getDiametro() {
    return this.diametro;
  }

  public void display() {
    fill(this.colorActual);
    noStroke();
    circle(this.posicion.x, this.posicion.y, diametro);
  }

  public void mover(boolean arriba, boolean abajo, boolean izquierda, boolean derecha, float deltaTime) {
    if (arriba) this.posicion.y -= velocidad * deltaTime;
    if (abajo) this.posicion.y += velocidad * deltaTime;
    if (izquierda) this.posicion.x -= velocidad * deltaTime;
    if (derecha) this.posicion.x += velocidad * deltaTime;

    this.posicion.x = constrain(this.posicion.x, diametro/2, width - diametro/2);
    this.posicion.y = constrain(this.posicion.y, diametro/2, height - diametro/2);
  }



  public void verificarColision(Enemigo enemigo) {
    float distancia = dist(this.posicion.x, this.posicion.y,
      enemigo.getPosicion().x, enemigo.getPosicion().y);
    if (distancia < (this.diametro + enemigo.getDiametro()) / 2.0) {
      this.colorActual = color(random(255), random(255), random(255));
    }
  }
}
