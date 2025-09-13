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


}
