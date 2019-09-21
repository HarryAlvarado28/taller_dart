main() {
  fun_simple();

  int r = sumar(5, 4);
  print('La suma es ${r}');

  double r1 = dividir(10, 4);
  print('La divición es ${r1}');
  Map<int, String> dias = {1: 'Lunes', 2: 'Martes', 3: 'Miércoles'};

  Map<int, String> dias_return = capitalizarMapa(dias);

  print(dias);
  print(dias_return);
}

void fun_simple() {
  print('Función simple');
}

int sumar(int a, int b) {
  return a + b;
}

double dividir(int a, int b) {
  return a / b;
}

Map<int, String> capitalizarMapa(Map<int, String> dias) {
  dias = {...dias};
  dias[1] = dias[1].toUpperCase();
  dias[3] = dias[3].toUpperCase();
  return dias;
}
