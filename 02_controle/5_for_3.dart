main() {
  Map<String, double> notas = {
    'João Pedro': 9.1,
    'Maria Augusta': 7.2,
    'Ana Silva': 6.4,
    'Roberto Andrade': 8.8,
    'Pedro Firmino': 9.9,
  };

  for (String nome in notas.keys) {
    print("Nome do aluno é $nome e a nota é ${notas[nome]}");
  }

  for (var nota in notas.values) {
    print("A nota é $nota");
  }

  for (var registro in notas.entries) {
    print("O ${registro.key} tem nota ${registro.value}.");
  }


  //Map dentro de uma List
  var lista = [
    [{'Anderson': 9.9,
      'Michelle': 10.0,
      'Ana Silva': 6.4,
      'Roberto Andrade': 8.8,
      'Pedro Firmino': 9.9}],
    [{'Bia': 9.3,
      'Esther': 8.9}]
  ];

  for (var i = 0; i <= lista.length - 1; i++) {
    for (var y in lista[i]) {
      for (var k in y.entries)
        print("Nome na lista[$i]: ${k.key} nota ${k.value}");
    }
  }
}