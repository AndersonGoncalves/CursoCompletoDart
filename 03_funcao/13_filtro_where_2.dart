main() {
  var notas = [8.2, 7.1, 1.5, 6.2, 4.4, 0.5, 3.9, 8.8, 9.1, 5.1];

  var notasBoasFn = (double nota) => nota >= 7;
  var notasMuitoBoasFn = (double nota) => nota >= 8.8;  

  //Meu Exemplo 01
  bool Function(double) notasRuinsFn = (double nota) {
    return nota <= 6.9 ? true : false;
  };
  //Meu Exemplo 02
  bool Function(double) notasMuitoRuinsFn = (double nota) {
    return nota <= 2 ? true : false;
  };

  var notasBoas = notas.where(notasBoasFn);
  var notasMuitoBoas = notas.where(notasMuitoBoasFn);  

  print(notas);
  print(notasBoas);
  print(notasMuitoBoas);

  print('---------------------------------');

  //Meu Exemplo 01
  var notasRuins = notas.where(notasRuinsFn);
  print(notasRuins);
  //Meu Exemplo 02
  var notasMuitoRuins = notas.where(notasMuitoRuinsFn);
  print(notasMuitoRuins);  
}
