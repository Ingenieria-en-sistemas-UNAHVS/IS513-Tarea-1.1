class Circulo {
  double radio;
  String color;

  double calcularArea() {
    return 3.1416 * radio * radio;
  }

  double calcularPerimetro() {
    return 2 * 3.1416 * radio;
  }

  Circulo(this.radio, this.color);
}