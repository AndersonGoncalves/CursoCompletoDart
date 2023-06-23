 main() {
  //Operadores Aritméticos(binários/infix)
  int a = 7;
  int b = 3;
  int resultado = a + b;
  print(resultado);
  print(a - b);
  print(a * b);
  print(a / b);
  print(a % b);
  print(33 % 2);
  print(34 % 2);
  print(a + (b * a) - (b / a));

  //Operadores lógicos 
  bool ehFragil = true;
  bool ehCaro = false;
  print(ehFragil && ehCaro); //AND -> E
  print(ehFragil || ehCaro); //OR -> Ou  
  print(ehFragil ^ ehCaro); //XOR -> Ou Exclusivo
  print(!ehFragil); //NOT -> Unário/prefix
  print(!!ehCaro);
}