void main(){

  // ¿Qué es un mapa? Basicamente son pares de valores, 'key value, pers'
  final Map<String, dynamic> pokemon = {
    'name': 'Ditto',
    'hp': 100,
    'isAlive': true,
    'abilities': ['impostor'],
    'sprites': <int, String> {
     1 : 'ditto/front.png', 
     2 : 'ditto/back.png'
    }
  };

  print(pokemon);
  print(' ${pokemon['name']}');
  print(' ${pokemon['sprites'][2]}');
  print(' ${pokemon['sprites'][1]}');
}