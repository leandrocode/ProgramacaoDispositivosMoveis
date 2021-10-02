import 'package:intl/intl.dart';
import 'dart:convert';

void main(){
  validarIdade(1989);
}

int getAnoAtual(){
      
  var dataHoraAtual = new DateTime.now();
  var formatoAno = new DateFormat('yyyy');
  String dataFormatada = formatoAno.format(dataHoraAtual);
  return int.parse(dataFormatada);
}

void validarIdade(int anoNascimento){
  
  if(anoNascimento < getAnoAtual()){
    
    var idade = getAnoAtual() - anoNascimento;    
    print("Sua idade é: $idade");    
  }else{
    print("Você veio do futuro? senão, ano inválido!");
  }
}