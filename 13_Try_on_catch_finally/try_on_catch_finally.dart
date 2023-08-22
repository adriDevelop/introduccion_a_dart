void main() async {

  print('inicio del main');

  try {
    final value = await httpGet('https://fernando-herrera.com/cursos');
    print('Exito!!: $value');
  } on Exception catch(err){
    print('Tenemos una exception $err');
  }catch(err){
    print('Opps!!! Algo terrible paso.');
  } finally {
    print('Fin del try, catch');
  }
  

  print('final del main');
}

// Cremos nuestro Future.
// El uso de la palabra async lo haremos para hacer saber que un método va a retornar un Future.
Future<String> httpGet (String url) async {

  // Ahora hacemos uso de la palabra reservada await para que espere a que el Future que tenemos en el interior se realice y cuando se realice devolveremos el valor.
  await Future.delayed(Duration(seconds: 1));

  throw new Exception('No hay parametros en el Url');

  // throw 'Error en la petición';

  // return 'Tenermos un valor de la peticion';
  
}