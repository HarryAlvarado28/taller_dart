
# Taller de Dart

## Datos de entrada

```dart
import 'dart:io';

void main() {
  // Imprimir en terminal
  stdout.writeln('¿Como te llamas?');

  // Leer información
  String nombre = stdin.readLineSync();

  print('Hola ${nombre}, ¿Cómo estas?');
  
}
```

## Flujos de Control

- If y else
- Ciclo for / for In / for each
- Ciclo While / do while
- Break y Continue
- Switch


### if y else

```dart
import 'dart:io';

void main() {
  stdout.writeln('¿Cuál es tu edad?');
  int edad = int.parse(stdin.readLineSync());

  if (edad >= 18) {
    print('Eres mayor de edad');
  } else {
    print('Eres menor de edad');
  }

  stdout.writeln('¿En que año nacistes?');
  int year = int.parse(stdin.readLineSync());
  // Taxonomia de generaciones
  if (year >= 1994) {
    print('Eres Generación Z');
  } else if (year >= 1981) {
    print('Eres Generación Y - millennials');
  } else if (year >= 1969) {
    print('Eres Generación X');
  } else if (year >= 1949) {
    print('Eres Baby Boom');
  } else {
    // > 1930 - 1948
    print('Los niños de la posguerra');
  }
  // Ref: https://www.lavanguardia.com/vivo/20180408/442342457884/descubre-que-generacion-perteneces.html
}
```

### Ciclo for (clásico) / for in / for each

```dart
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
```

### Ciclo while / do-while

```dart
import 'dart:io';

main() {
  String continuar = 'y';
  int contador = 0;

  stdout.writeln('Contador: $contador');
  stdout.writeln('¿Desea continuar?: (y/n)');
  continuar = stdin.readLineSync();

  while (continuar == 'y') {
    contador++;
    stdout.writeln('Contador: $contador');
    stdout.writeln('¿Desea continuar?: (y/n)');
    continuar = stdin.readLineSync();
  }

  print('--Do While---');
  contador = 0;
  do {
    contador++;
    stdout.writeln('Contador: $contador');
    stdout.writeln('¿Desea continuar?: (y/n)');
    continuar = stdin.readLineSync();
  } while (continuar == 'y');
}
```

### Ciclo Switch

```dart
import 'dart:math';

main() {
  int rnd = Random().nextInt(9);

  print(rnd);

  switch (rnd) {
    case 0:
      print('Lunes');
      break;
    case 1:
      print('Martes');
      break;
    case 2:
      print('Miércoles');
      break;
    case 3:
      print('Jueves');
      break;
    case 4:
      print('Viernes');
      break;
    case 5:
      print('Sabado');
      break;
    case 6:
      print('Domingo');
      break;
    default:
      print('¡Número fuera de rango!');
  }
}
```