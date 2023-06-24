main() {
  var n1 = 2;
  var n2 = 4.56;
  var texto = "O valor da soma é: ";
  print(texto + (n1 + n2).toString());

  print(n1.runtimeType);
  print(n2.runtimeType);
  print(texto.runtimeType);

  print(n1 is double);
  print(!(n2 is String));

  String nome = 'Fernando';
  String nomeCompleto = '\t Fernando Martins';
  print(nome.toLowerCase()); //fernando
  print(nome.toUpperCase()); //FERNANDO
  print(nomeCompleto.trim()); //Fernando Martins
  print(nomeCompleto.split(' ')); //[ , Fernando, Martins]
  print(nome.split('')); //[F, e, r, n, a, n, d, o]
  print(nome.substring(3, 8)); //nando
  print(nome.startsWith('F')); //true
  print(nome.startsWith('nando', 3)); //true
  print(nome.replaceAll('a', 'o')); //Fernondo
  print(nome.replaceFirst('Fer', '')); //nando
  print(nome.replaceFirst('o', 'a', 7)); //Fernanda
  print(nome.replaceRange(3, 5, '')); //Ferndo
  print(nomeCompleto.trim().split(' ')); //[Fernando, Martins]
  print(nome.contains('f')); //false
  print(nome.contains('F')); //true
  print(nome.contains('e', 1)); //true
  print(nome.length); //8 - retorna o comprimento do array
  print(nome.endsWith('o')); //true
  print(nome.compareTo('Fernando')); //0 se for igual
  print(nome.compareTo('Fer')); //1 se possuir
  print(nome.compareTo('Anderson')); //-1 se diferente
  print(' '.isEmpty); //false
  print('1'.padLeft(2, '0')); //01
  print(nome.indexOf('nando')); //3 - retorna o indece de acordo com referencia
}
