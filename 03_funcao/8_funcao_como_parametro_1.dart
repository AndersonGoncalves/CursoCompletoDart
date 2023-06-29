import 'dart:math';
import 'dart:io';

//Exemplo 01
void executar({required Function fnPar, required Function fnImpar}) {
  var sorteado = Random().nextInt(10);
  print('O valor sorteado foi: $sorteado');
  sorteado.isEven
      ? fnPar()
      : fnImpar(); //sorteado % 2 == 0 ? fnPar() : fnImpar();
}

//Exemplo 02
void operacao(
    Function(int, int) fnSomar, Function(int, int) fnSubtrair, int a, int b) {
  var sorteado = Random().nextBool();
  print('A operação será ${sorteado == true ? 'somar' : 'subtrair'}.');
  sorteado == true ? fnSomar(a, b) : fnSubtrair(a, b);
}

//Exemplo 03
int operacao2(
    {required int Function(int, int) fnSomar,
    required int Function(int, int) fnSubtrair,
    required int a,
    required int b}) {
  var sorteado = Random().nextBool();
  print('A operação2 será ${sorteado == true ? 'somar' : 'subtrair'}.');
  if (sorteado == true)
    return fnSomar(a, b);
  else
    return fnSubtrair(a, b);
}

main() {
  //Exemplo 01
  print('Exemplo 01');
  var minhaFnPar = () => print('Eita! O valor é par!');
  var minhaFnImpar = () => print('Legal! O valor é ímpar!');
  executar(fnImpar: minhaFnImpar, fnPar: minhaFnPar);

  print('---------------------------------------------------------');

  //Exemplo 02
  print('Exemplo 02');
  void Function(int, int) minhaFnSomar =
      (int a, int b) => print('$a + $b = ${a + b}');
  void Function(int, int) minhaFnSubtrair =
      (int a, int b) => print('$a - $b = ${a - b}');
  operacao(minhaFnSomar, minhaFnSubtrair, Random().nextInt(100),
      Random().nextInt(100));

  print('---------------------------------------------------------');

  //Exemplo 03
  print('Exemplo 03');
  int Function(int, int) minhaFnSomar2 = (int a, int b) {
    stdout.write('$a + $b = ');
    return a + b;
  };
  int Function(int, int) minhaFnSubtrair2 = (int a, int b) {
    stdout.write('$a - $b = ');
    return a - b;
  };
  print(operacao2(
      fnSomar: minhaFnSomar2,
      fnSubtrair: minhaFnSubtrair2,
      a: Random().nextInt(100),
      b: Random().nextInt(100)));

  print('---------------------------------------------------------');

  //Exemplo 03 função anônima dentro do parâmetro da função
  executar(fnImpar: () {
    for (var i = 0; i < 100; i++) {
      print('impar $i');
    }
  }, fnPar: () {
    for (var element in ['1', '2', '3', '4', '5']) {
      print('par $element');
    }
  });
}
