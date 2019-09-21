main() {
  obtenerUsuario('100', (Map persona) {
    print(persona);
  });
}

obtenerUsuario(String id, Function callback) {
  Map usuario = {'id': id, 'nombre': 'Julio Cesar'};
  callback(usuario);
}
