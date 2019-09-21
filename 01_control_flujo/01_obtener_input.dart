
import 'dart:io';

void main() {
  // Imprimir en terminal
  stdout.writeln('¿Como te llamas?');

  // Leer información
  String nombre = stdin.readLineSync();

  print('Hola ${nombre}, ¿Cómo estas?');
  
}
