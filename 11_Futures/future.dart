void main(){

  print('inicio del main');

  // Llamamos al metodo y manejamos el error.
  httpGet('https://fernando-herrera.com/cursos').then( (value){
    print(value);
  }).catchError((err){
    print(err);
  });

  print('final del main');
}

// Cremos nuestro Future.
Future<String> httpGet (String url){
  // Usamos uno de los métodos que tiene Future, en este caso, delayed.
  return Future.delayed(Duration(seconds: 1), () {
    // Controlamos que nuestra promesa se cumpla.
    throw 'Error en la petición http';

    // return 'Respuesta de la petición http';
  });
}