# Taller de Dart

## Tipos Complejos

- Futures
- Async y Await

### Futures

```dart
import 'dart:io';

main() {
  Future<String> timeout = Future.delayed(Duration(seconds: 2), () {
    print('2 segundos despues!!');
    return 'Retorno del future';
  });

  timeout
      .then((onValue) => print(onValue))
      .catchError((onError) => print(onError));

  timeout.then(print).catchError((onError) => print(onError));

  // Leyendo un archivo

  File file = new File(Directory.current.path + '/03_tipos_complejos/data.txt');

  Future<String> f = file.readAsString();
  f.then(print);
  print('in del main');

  print('Fin del main');
}
```

### Async a Await

```dart
import 'dart:io';

main() async {
  String path = Directory.current.path + '/03_tipos_complejos/data.txt';
  String texto = await leerArchivo(path);
  print(texto);
  print('Fin del main');
}

Future leerArchivo(String path) async {
  File file = new File(path);
  return file.readAsString();
}
```