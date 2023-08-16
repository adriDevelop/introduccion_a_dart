void main(){

  final numbers = [1,2,3,4,5,5,5,5,5,5,6,7,8,9,9,0];

  print('List original: $numbers'); // Mostramos la lista original
  print('Longitud de nuestra lista: ${numbers.length}'); // Mostramos la longitud de nuestra lista.
  print('Primer elemento de nuestra lista: ${numbers.first}'); // Mostramos el primer elemento de nuestra lista.
  print('Ultimo elemento de nuestra lista: ${numbers.last}'); // Mostramos el ultimo elemento de nuestra lista.
  print('Darle la vuelta al orden de nuestra lista y devolver un iterable: ${numbers.reversed}'); // Mostramos el ultimo elemento de nuestra lista.

  /**
   * ¿Como los distinguimos?
   * 
   *  Iterable : (1,2,3,4,5,5,5,5,5,5,6,7,8,9,9,0)
   *  List: [1,2,3,4,5,5,5,5,5,5,6,7,8,9,9,0]
   *  Set : {1,2,3,4,5,6,7,8,9,0} omite los caracteres repetidos de la lista.
   */
  final reversedNumbers = numbers.reversed;
  print('Iterable $reversedNumbers'); // Iterable
  print('List ${reversedNumbers.toList()}'); // List
  print('Set ${reversedNumbers.toSet()}'); // Set

  final numbersgreaterThanFive = reversedNumbers.where((num) { return num >5; });
  print(numbersgreaterThanFive.toSet());
}