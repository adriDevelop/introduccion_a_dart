void main(){

  print(greetEveryone());
  print('Suma: ${addTwoNumbers(10, 20)}  ');
  print('Suma funcion flecha: ${addTwoNumbers(20, 20)}  ');
  print('Suma funcion parametro b opcional: ${addTwoNumbersOptional(12)}');
  print('Suma funcion parametro b opcional: ${addTwoNumbersOptional(12, 5)}');
  print('GreetPerson: ${greetPerson(name: 'Adrián')}');
  print('GreetPerson: ${greetPerson(name: 'Adrián', message: 'Hola desde este mensaje,')}');

}

// Funciones de flecha.
String greetEveryone() => 'Hello everyone';

// Regresará un numero entero.
int addTwoNumbers(int a, int b){
  return a + b;
}

// TAREA.- 
// Convertir la anterior funcion de suma, en una función flecha.
int addTwoNumbersArrow(int a, int b)=> a + b;

int addTwoNumbersOptional(int a, [int b = 0])=> a + b; // Definimos a nuestro parametro b como opcional.

String greetPerson({required String name, String message = 'Hola'}){

  return '$message $name';
}