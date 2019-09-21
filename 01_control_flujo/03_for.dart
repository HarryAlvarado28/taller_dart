main() {
  // ciclo for clasico
  for (int i = 0; i < 10; i++) {
    print('Index i:${i}');
  }

  // ciclo for in
  List<String> frutas = ['Piña', 'Fresa', 'Papaya', 'Sandia', 'Manzana', 'Uva'];

  for (String fruta in frutas) {
    print(fruta);
  }

  List<String> colores = ['rojo', 'verde', 'morado', 'azul'];

  // ciclo for each
  colores.forEach((c) {
    print(c);
  });
}
