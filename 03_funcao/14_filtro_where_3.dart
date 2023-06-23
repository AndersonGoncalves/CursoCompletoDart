List<E> filtrar<E>(List<E> lista, bool Function(E) fn) {
  List<E> listaFiltrada = [];
  for (E elemento in lista) {
    if (fn(elemento)) {
      listaFiltrada.add(elemento);
    }
  }
  return listaFiltrada;
}

//Meu Exercício
Set<E> Filter<E>(Set<E> conjunto, bool Function(E) fn) {
  Set<E> resultado = {};
  for (E elemento in conjunto) {
    if (fn(elemento)) {
      resultado.add(elemento);
    }
  }
  return resultado;
}

main() {
  var notas = [8.2, 7.3, 6.8, 5.4, 2.7, 9.3];
  var boasNotasFn = (double nota) => nota >= 7.5;
  var somenteNotasBoas = filtrar<double>(notas, boasNotasFn);
  print(somenteNotasBoas);

  var nomes = ['Ana', 'Bia', 'Rebeca', 'Gui', 'João'];
  var nomesGrandesFn = (String nome) => nome.length >= 5;
  print(filtrar<String>(nomes, nomesGrandesFn));

  //Meu Exercício
  var frutas = {'Banana', 'Limão', 'Maçã', 'Uva', 'Pera', 'Laranja', 'Abacati', 'Abacaxi', 'Melão', 'Melancia', 'Caju'};
  var SomenteFrutasComecandoComM = (String fruta) => fruta[0] == "M";
  print(Filter(frutas, SomenteFrutasComecandoComM));
}