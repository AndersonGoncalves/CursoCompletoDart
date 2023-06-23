Object segundoElementoV1(List lista) {
  return lista.length >= 2 ? lista[1] : null;
}

E? segundoElementoV2<E>(List<E> lista) {
  return lista.length >= 2 ? lista[1] : null;
}

//Meu Exemplo 01
E? ListaDeQualquerCoisaRetornaUltimoValor<E>(List<E> lista) {
  return lista.length > 0 ? lista.last : null;
}
//Meu Exemplo 02
E? mapa<E>(Map<E, E> mp, E key) {
  var resultado = null;
  for (var x in mp.entries) {
    if (x.key == key) {    
      resultado = x.value;
      break;
    }
  }
  return resultado;
}

main() {
  var lista = [3, 6, 7, 12, 45, 78, 1];

  print(segundoElementoV1(lista));

  int segundoElemento = segundoElementoV2<int>(lista)!;
  print(segundoElemento);

  segundoElemento = segundoElementoV2(lista)!;
  print(segundoElemento);

  print('------------------------------');

  //Meu Exemplo 01
  List<int> listaInt = [1, 2, 3, 4, 5, 6, 7];
  List<String> listaString = ['Anderson', 'Michelle', 'Bia', 'Esther'];
  List<double> listaDoubleVazia = [];
  print(ListaDeQualquerCoisaRetornaUltimoValor<int>(listaInt));
  print(ListaDeQualquerCoisaRetornaUltimoValor<String>(listaString));
  print(ListaDeQualquerCoisaRetornaUltimoValor<double>(listaDoubleVazia));

  //Meu Exemplo 02
  Map<String, int> mpStrInt = {
    'Banama': 10,
    'Maçã': 15,
    'Laranja': 20
  };
  print(mapa(mpStrInt, 'Maçã'));

  Map<String, String> mpStrStr = {
    'Anderson': 'Carro',
    'Michelle': 'Cabelo',
    'Bia': 'Teste1',
    'Esther': 'Teste2'
  };
  print(mapa(mpStrStr, 'Michelle'));

  Map<int, int> mpIntInt = {
    1: 100,
    2: 300,
    3: 787,
    4: 458,
    5: 987,
    6: 124,
    7: 358
  };
  print(mapa(mpIntInt, 4));
}