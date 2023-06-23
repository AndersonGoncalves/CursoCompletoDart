/*
  - List
  - Set
  - Map 
 */

 
main() {

  //List
  print('List');
  var aprovados = ['Anderson', 'Michelle', 'Beatriz', 'Esther'];
  aprovados.add('Mãe');
  print(aprovados is List);
  print(aprovados);
  print(aprovados.elementAt(2));
  print(aprovados[0]);
  print(aprovados.length);

  //Map
  print('');
  print('Map');
  var telefones = {
    'Anderson': '(85)98640-4604',
    'Michelle': '(85)95887-8778',
    'Ana Beatriz': '(85)98787-4545',
    'Ana Esther': '(85)96565-4512',
    'Michelle': '(85)77777-7777'
  };
  print(telefones is Map);
  print(telefones);
  print(telefones['Michelle']);
  print(telefones.length);
  print(telefones.values);
  print(telefones.keys);
  print(telefones.entries);

  //Set
  print('');
  print('Set');
  var times = {'Vasco', 'Flamengo', 'Fortaleza', 'São Paulo', 'Ceará'};
  print(times is Set);  
  times.add('Palmeiras');
  times.add('Palmeiras');
  times.add('Palmeiras');  
  print(times);
  print(times.length);
  print(times.contains('Ceará'));
  print(times.first);
  print(times.last);  
}