
# Taller de Dart

## Funciones

- Funciones básicas
    - Argumentos
    - Argumentos por valor y referencia
- Funciones de Flecha
- Callbacks

### Funciones básicas, Argumentos, Argumentos por valor y referencia

```dart
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
```

### Funciones de Flecha

```dart
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
```

### Callbacks

```dart
main() {
  obtenerUsuario('100', (Map persona) {
    print(persona);
  });
}

obtenerUsuario(String id, Function callback) {
  Map usuario = {'id': id, 'nombre': 'Julio Cesar'};
  callback(usuario);
}
```