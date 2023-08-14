void main(){

  // Vamos a empezar a crear nuestras variables. Hay varias formas:
  var myName = 'Adrian'; // Definimos variable tipo String por asignacion.
  String myNeighborhoodsName = 'Vecinito'; // Definimos variable estrictamente como String.

  /**
   * Diferencia entre const y final?
   *  - Const crea una constante en tiempo de construccion de aplicacion.
   *  - Final se asigna en tiempo de ejecucion.
   */
  final mySystersName = 'Ainhoa'; // Una vez definido, no podra cambiarse su valor.
  const myBrothersName = 'Xavier'; // Una vez definido, no podra variar su valor.

  late final myGirlfriendsName; // Usando la palabra reservada late podremos asignarle el valor a esta constante en cualquier momento.
  myGirlfriendsName = 'Andrea';

  print('Hola $myName');
  print('Hola $myNeighborhoodsName');
  print('Hola $mySystersName');
  print('Hola $myGirlfriendsName');
  print('Hola $myBrothersName');

}