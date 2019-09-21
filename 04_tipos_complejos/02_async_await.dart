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
