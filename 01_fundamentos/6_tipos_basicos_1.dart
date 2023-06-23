/*
  - Números (int e double)
  - string (String)
  - Booleano (bool)
  - dynamic
*/

import 'dart:io';

main () {
  int n1 = 3;
  double n2 = (-5.67).abs();  
  double n3 = double.parse("12.765");
  num n4 = 6;  

  print(n1.abs() + n2 + n3 + n4);
  n4 = 6.7;
  stdout.writeln(n1.abs() + n2 + n3 + n4);

  String s1 = "Bom";
  String s2 = " Dia";

  print(s1 + s2.toUpperCase() + "!!!");

  bool estaChovendo = true;
  bool muitoFrio = false;  

  print(estaChovendo && muitoFrio);
  print(muitoFrio || estaChovendo);

  dynamic x = "Um texto bem legal";
  print(x);
  x = 123;
  print(x);
  x = false;
  print(x);

  var y = "Outro texto bem legal";
  print(y);
}