main() {
  print(sumar(10, 20));
  print(sumerFlecha(5, 6));

  List<int> list = [1, 2, 3, 2, 4, 5, 7, 3, 5, 6, 7, 8, 9, 12, 8, 23, 9];

  var nuevoListado = list.where((numero) {
    return numero > 5;
  });
  print(nuevoListado);

  var nuevoListadoFlecha = list.where((n) => n > 5);
  print(nuevoListadoFlecha);
}

int sumar(int x, int y) {
  return x + y;
}

int sumerFlecha(int x, int y) => x + y;

