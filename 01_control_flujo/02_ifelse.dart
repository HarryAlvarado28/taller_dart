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
