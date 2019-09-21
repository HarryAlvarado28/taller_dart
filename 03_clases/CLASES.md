# Taller de Dart

## Clases

- Estructura de una clase
- Clases en archivos independientes
- Propiedades públicas y privadas
- Getters
- Setters
- Constructores básicos

```dart
// archivo: 01_clase.dart
import 'Persona.dart';

main() {
  Persona persona = new Persona();
  persona.nombre = 'Mario';
  persona.banco = 'General';
  print(persona.toString());
}

// archivo: Persona.dart
class Persona {
  // Campos o propiedades
  String nombre;
  int edad;
  String _bio = 'Propiedad privada';
  String _banco = '';
  // Contructores

  Persona() {
    //Contructor
  }
  // Get y sets
  String get bio => _bio.toUpperCase();

  set bio(String texto) => _bio = texto;

  String get banco => _banco.toLowerCase();

  set banco(String nuevo_banco) => _banco = nuevo_banco;

  // Métodos
  @override
  String toString() => '${nombre}, ${edad}, ${_bio}, ${_banco}';
}
```
