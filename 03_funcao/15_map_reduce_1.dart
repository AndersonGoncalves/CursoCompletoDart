main() {
  var alunos = [
    {'nome': 'Alfredo', 'nota': 9.9},
    {'nome': 'Wilson', 'nota': 9.3},
    {'nome': 'Mariana', 'nota': 8.7},
    {'nome': 'Guilherme', 'nota': 8.1},
    {'nome': 'Ana', 'nota': 7.6},
    {'nome': 'Ricardo', 'nota': 6.8},
  ];

  String Function(Map) pegarApenasONome = (aluno) => aluno['nome'];
  print(alunos.map(pegarApenasONome));
  int Function(String) qtdeDeLetras = (texto) => texto.length;
  int Function(int) dobro = (numero) => numero * 2;
  var resultado = alunos.map(pegarApenasONome).map(qtdeDeLetras).map(dobro);
  print(resultado);

  //Meu Exercício 01
  var frutas = ['Banana', 'Laranja', 'Maçã', 'Uva', 'Limão', 'Melão'];
  print(frutas);
  int Function(String) quantidadeDeLetraA = (fruta) {
    int qtd = 0;
    for (int i = 0; i < fruta.length; i++) {
      if ((fruta[i] == 'a') ||
          (fruta[i] == 'ã') ||
          (fruta[i] == 'á') ||
          (fruta[i] == 'à')) {
        qtd++;
      }
    }
    return qtd;
  };
  var resultado2 = frutas.map(quantidadeDeLetraA);
  print(resultado2);
}
