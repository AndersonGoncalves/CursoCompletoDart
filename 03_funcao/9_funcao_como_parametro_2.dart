//Exemplo 01
ExecutarPor({required int qtde, required Function(String) fn, required String valor}) {
  for (int i = 0; i < qtde; i++) {
    fn(valor);
  }
}

//Exemplo 02
int executarPor2(int qtde, String Function(String) fn, String valor) {
  String textoCompleto = '';
  for (int i = 0; i < qtde; i++) {
    textoCompleto += fn(valor);
  }
  return textoCompleto.length;
}

main() {
  //Exemplo 01
  ExecutarPor(qtde: 5, fn: print, valor: 'Meu exemplo simples');

  print('--------------------------------');

  //Exemplo 02
  print('Teste');
  var meuPrint = (String valor) {
    print(valor);
    return valor;
  };

  int tamanho = executarPor2(10, meuPrint, 'Muito legal');
  print('O tamanho da string é $tamanho');
}
