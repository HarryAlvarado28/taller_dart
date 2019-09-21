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
