void main() {
  validarEmprestimo(1000, 450.01);
}

void validarEmprestimo(double salario, double prestacao){
  
  var limite = salario * 0.3;
  
  print("Prestação: $prestacao");
  print("Limite da prestação: $limite");
  
  if(prestacao > limite){
    
    print("O empréstimo NÃO PODE ser concedido");
  
  }else{
    
    print("O empréstimo PODE ser concedido");
  }
}








