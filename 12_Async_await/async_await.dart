void main() async {

  print('inicio del main');

  try {
    final value = await httpGet('https://fernando-herrera.com/cursos');
    print(value);
  }catch(err){
    print('Tenemos un error: $err');
  }
  

  print('final del main');
}

// Cremos nuestro Future.
// El uso de la palabra async lo haremos para hacer saber que un método va a retornar un Future.
Future<String> httpGet (String url) async {

  // Ahora hacemos uso de la palabra reservada await para que espere a que el Future que tenemos en el interior se realice y cuando se realice devolveremos el valor.
  await Future.delayed(Duration(seconds: 1));

  throw 'Error en la petición';

  // return 'Tenermos un valor de la peticion';
  
}