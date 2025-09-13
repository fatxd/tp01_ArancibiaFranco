class Enemigo {

  private int diametro;
  private PVector posicion;
  private float velocidad;

  public Enemigo() {
    this.posicion = new PVector(random(width), random(height));
    this.velocidad = 150;
    this.diametro = 50;
  }



  public void display() {
    fill(255, 0, 0);
    noStroke();
    circle(this.posicion.x, this.posicion.y, diametro);
  }
  public void mover(Player player, float deltaTime) {
    PVector jugadorPos = player.getPosicionPlayer();
    float dx = jugadorPos.x - this.posicion.x;
    float dy = jugadorPos.y - this.posicion.y;
    float distancia = sqrt(dx*dx + dy*dy);

    float minDist = (this.diametro + player.getDiametro()) / 2.0;

    if (distancia > minDist) {
      float movX = (dx / distancia) * velocidad * deltaTime;
      float movY = (dy / distancia) * velocidad * deltaTime;
      this.posicion.x += movX;
      this.posicion.y += movY;
    }
  }

  public PVector getPosicion() {
    return posicion;
  }

  public int getDiametro() {
    return diametro;
  }
}
