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

  public PVector getPosicion() {
    return posicion;
  }

  public int getDiametro() {
    return diametro;
  }
}
