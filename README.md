![dart](https://www.dartlang.org/assets/shared/dart-logo-for-shares.png?2)

# Taller de Dart

*Este taller de dart es impulsado por la meta-comunidad de [FlossPA](https://floss-pa.net/) y dirigido por [Harry Alvarado](https://github.com/HarryAlvarado28).*

## Objetivos
Aprender ¿qué es Dart? su potencial y sintaxis.

## Concepto

**Dart** es un lenguaje orientado a objetos que opcionalmente puede compilarse en JavaScript. Admite una amplia gama de ayudas de programación como interfaces, clases, colecciones, genéricos y escritura opcional.

Potencial

- Optimizado para UI
- Desarrollo productivo
- Rápido en todas las plataformas

```dart
/* Hola mundo en Dart */
main() {
  print("Hola, Mundo!");
}
```

## Presentación del taller

![pitch_teorico](pitch_teorico.gif)

## Contenido

### Palabras reservadas

![palabras-reservada](Palabras-Reservadas.png)

### Tipo de datos

- Números *(int, double)*
- Strings
- Booleans
- List
- Sets
- Maps
- Variables

### Ejemplos de Tipo de datos

#### Números *(int, double)*

```dart
void main() {
// Numeros
  int a = 12;
  double b = 12.5;
  int c = a + 5;
  
  print(a);
  print(b);
  print(c);
    
  // Tambien ser permite
  int _d = 5;
  double $e = 5.4;
  print(_d);
  print($e);  
}
```

#### Strings

```dart
void main() {
// Strings - cadena de caracteres
  String nombre = 'Harry';
  String nombre2 = "Harry";
  String nombre3 = 'Harry\'s';
  
  print(nombre);
  print(nombre2);
  print(nombre3);
  
  String multilinea = '''Cuando se quieres hacer una variable que contenga multiples lineas se debe colocar tres comillas simples al principio de la cadena de caracteres y tres al final.''';
  
  print(multilinea);
  
}
```

#### Booleans

```dart
void main() {
// Booleans
  bool activo = true;
  bool vivo = false; 

  vivo = !vivo;
  
  print(activo);
  print(vivo);
}
```


#### List - Arreglos

```dart
void main() {
  // Listas - Arreglos
  
  // Listas Dinamicas
  List loquesea = ['Superman', 'Ironman', 10, true];
  print(loquesea);
  
  List<String> heroes = ['Capitan America', 'Deadpool'];
  heroes.add('Batman');
  print(heroes);
  
  List<int> miles = [2000, 2001, 2018, 2019];
  print(miles);
  
  List<double> valores_math = new List();
  valores_math..add(3.14)..add(2.71)..add(1.61);
  print(valores_math);
  
  
  // Listas estaticas
  List<String> frutas = new List(3);
  frutas[0] = 'Manzana';
  //frutas[1] = 'Uvas';
  frutas[2] = 'Piña';
  
  print(frutas);    
}
```

#### Set - *(similar a las listas)*

```dart
void main() {
  // Set  
  Set loquesea = {'Superman', 'Ironman', 10, true};
  loquesea.add('Superman');
  print(loquesea);
  
  Set<String> heroes = {'Capitan America', 'Deadpool'};
  heroes.add('Batman');
  heroes.add('Deadpool');
  print(heroes);
  
  Set<int> miles = {2000, 2001, 2018, 2019};
  miles.add(2018);
  print(miles);
  
  Set<double> valores_math = new Set();
  valores_math..add(3.14)..add(2.71)..add(1.61);
  print(valores_math);
}
```

*La principal diferencia entre los **List** y los **Set**, consiste en que no puedes agregar un valor repetido, a la Set.*

#### Maps

```dart
void main() {
  // Maps
  var loquesea = {
    'letra': 'a',
    'numero': 7,
    14000:'catorce mil',
    'activo': true
  };
  
  print(loquesea);
  print(loquesea['numero']);
  
  Map<double, String> constantes_matematicas  = {
    3.14:'PI',
    2.71:'Constante de Napier',
    1.61:'Número áureo'
  };
  
  constantes_matematicas.addAll({-2.50:'Constante α de Feigenbaum'});
  print(constantes_matematicas);
  print(constantes_matematicas[2.71]);
  
  Map<String, dynamic> Panama = new Map();
  Panama.addAll({
    'capital': 'Panamá',
    'telefono': 507,
    'superficie': 75.517,
    'moneda': 'Dólar estadounidense, Balboa',
  });
  print(Panama);
  print(Panama['superficie']);
}
```

#### Variables - *(var, final & const)*

```dart
void main() {
  // Variables y constantes
  
  var x = 3;
  final y = 4;
  const z = 5;
  
  print(x);
  print(y);
  print(z);
  
  x = x + 10;
  //y = y + 3; // No pueden cambiar
  //z = z + 4; // No pueden cambiar
  
  print(x);
  print(y);
  print(z);
  
  final List<String> frutas = ['Pera', 'Piña', 'Uva'];
  const List<String> colores = ['Rojo', 'Verde', 'Azul'];
  
  // Caso particular
  frutas[1] = 'Limon';
  frutas.add('Manzana');
  
  // Caso particular, no permitido con CONST
  //colores.add('Morado'); 
  //colores[2] = 'Amarillo'; 
  
  print(frutas);
  print(colores);
}
```

### Operadores

- Matemáticos
- Asignación

#### Operadores Matemáticos

```dart
void main() {
  // Operadores
  
  int a = 12 + 8;      // + 20, suma
  a = 20 - 10;         // - 10, resta
  a = 5 * 3;           // * 15, multiplicación
  
  double b = 12 / 2;   // / 6, divición
  b = 10.0 % 3;        // % 1, residuo (sobrante de la divición)
  b = -b;              // -expr, cambia el signo del valor
  
  int c = 10 ~/ 3;     // ~/ 3, toma la parte entera de la divición
  
  int d = 5;
  
  d++;        // ++ 6, incrementa en uno
  d--;        // -- 4, decrementa en uno
  
  d += 2;     // += 7, incrementa en 2
  d -= 3;     // -= 2, decrementa en 3
}
```

#### Operadores de Asignación

```dart
void main() {
  // Operadores de asignación
  int a = 10;
  int b = 5;
  
  b ??= 20;  // asigna el valor únicamente si la variable es null.
  
  print(b);
  
  // Operador condicional ternario
  int c = 28;
  String resp = c > 25 ? 'C es mayor a 25': 'C es menor a 25';
  print(resp);
  
  // Operadores condicionales
  int d = b ?? a ?? 23;
  print(d);
  
  // Operadores relacionales, todos retornal un valor booleano
  /**
   * > mayor que
   * < menor que
   * >= mayor e igual que
   * <= menor e igual que
   * == revisa si dos objetos son iguales
   * != revisa si dos objetos son distintos
   */
   
  String fruta = 'manzana';
  String fruit = 'apple';
  
  print(fruta == fruit);  // false
  print(fruta != fruit);  // true
  
  // Operadores de tipo
  int i = 10;
  String j = '10';
  
  print(i is int);  
}
```
