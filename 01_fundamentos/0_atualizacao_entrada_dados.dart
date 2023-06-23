//Atualização na entrada do usuário no Dart
//Fala, pessoal. Tranquilo?
//Nas novas versões do Dart, ao salvar valores feitos via Input pelo usuário do código, é necessário utilizar uma exclamação lá no final do método que faz a leitura do que foi digitado pelo usuário. É preciso que fique assim:

import 'dart:io';

void main(){  
  String teste = stdin.readLineSync()!;
  print('Vc digitou: ' + teste);
}

//Essa exclamação acontece por causa das regras do Null Safety no Dart/Flutter que foram inseridas nas novas versões e a exclamação indica ao Dart que o valor vai ser diferente de nulo, ou seja, ela garante que existirá um valor para ser salvo.
//Bons estudos, galera!