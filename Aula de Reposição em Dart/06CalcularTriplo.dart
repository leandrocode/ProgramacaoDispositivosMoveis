import 'dart:io'

void main(){
  while(true){
    stdout.write("Digite um número: ");
    var input = stdin.readLineSync();
    
    if(input == -999){
      exit();
    }else{
      print(input * 3);  
    }
    
  }
}