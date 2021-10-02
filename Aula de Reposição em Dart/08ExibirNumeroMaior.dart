import 'dart:io'

void main(){
  int aux;

  while(true){
    stdout.write("Digite um número: ");
    var input = stdin.readLineSync();
    
    if(input == -1111){
      exit();
    }else{
      if(input > aux){
        print(input);  
        aux = input;
      }else{
        print(aux);
      }
    }
  }
}