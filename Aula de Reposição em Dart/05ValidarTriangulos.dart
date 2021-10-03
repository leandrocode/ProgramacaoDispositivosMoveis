void main() {
  validarTriangulo(1, 5, 6);
}

void validarTriangulo(int lado1, int lado2, int lado3) {
  if (lado1 <= 0 || lado2 <= 0 || lado3 <= 0) {
    print("Não é um triângulo");
  } else if (lado1 == lado2 && lado1 == lado3) {
    print("É um triângulo equilátero");
  } else if (lado1 != lado2 && lado2 != lado3 && lado1 != lado3) {
    print("É um triângulo escaleno");
  } else {
    print("É um triãngulo isóceles");
  }
}
