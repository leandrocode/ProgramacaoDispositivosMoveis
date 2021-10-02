void main(){
  validarTriangulo(3, 5, 2);
  
}
void validarTriangulo(int lado1, int lado2, int lado3){
  
  if(lado1 == lado2 && lado1 == lado3){
    print("É um triângulo equilátero");
  
  }else if(lado1 != lado2 && lado2 != lado3 && lado1 != lado3){
    print("É um triângulo escaleno");
  }else{
    print("É um triãngulo isóceles");
  }
}
