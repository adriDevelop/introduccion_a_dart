void main(){

  final String pokemon = 'Ditto'; // Variable String
  final int hp = 100; // Variable Entera
  final bool isAlive = false; // Variable booleana
  final List<String> abilities = ['impostor']; // Lista de Strings
  final sprites = <String> ['ditto/front.png', 'ditto/back.png']; // Lista de Strings

  // Dynamic es como un dato comodin.
  // Por defecto es nulo y acepta nulos.
  dynamic errorMessage = 'Hola';
  errorMessage = true;
  errorMessage = [1,2,3,4,5,6,7,8,9,0]; // Esto es una lista de enteros
  errorMessage = {0,1,2,3,4,5,6,7,8,9}; // Esto es un set de datos

  // Impresion multilinea.
  print(""" 
    $pokemon
    $hp
    $isAlive
    $abilities
    $sprites
    $errorMessage
  """);
}