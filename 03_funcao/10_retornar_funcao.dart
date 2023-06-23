//Exemplo 01
int Function(int) somaParcial(int a) {
  int c = 0;

  return (int b) {
    return a + b + c;
  };
}

//Exemplo 02
double Function(double) SomaParcial2(
    {required double frete, required double outrasDespesas}) {
  Map<String, double> itens = {
    'Produto A': 12.70,
    'Produto B': 1.57,
    'Produto C': 32.40
  };
  double soma = 0;
  for (var itn in itens.entries) {
    soma += itn.value;
  }

  return (double pd) {
    return frete + outrasDespesas + soma + pd;
  };
}

main() {
  //Exemplo 01
  print(somaParcial(2));
  print(somaParcial(2)(10));

  var somaCom10 = somaParcial(10);

  print(somaCom10(3));
  print(somaCom10(7));
  print(somaCom10(19));

  print('---------------------------------');

  //Exemplo 02
  print(SomaParcial2(frete: 1, outrasDespesas: 2));

  var pedido = SomaParcial2(frete: 50, outrasDespesas: 150);
  print(pedido(10));
  print(pedido(20));
  print(pedido(30));
}
