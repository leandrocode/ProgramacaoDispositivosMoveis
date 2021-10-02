void main(){

  organizarNumeros(1, 10, 5);
  
}

void organizarNumeros(int num1, int num2, int num3){
  List numeros = [];
  numeros.add(num1);
  numeros.add(num2);
  numeros.add(num3);

  numeros.sort((a, b) => a.compareTo(b));
  
  print(numeros);  
}
