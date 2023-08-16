void main(){

  final wolverine = new Hero(name: 'Logan', power: 'Regeneracion');

  print('Heros name: ${wolverine.name}, Power: ${wolverine.power}');
  print(wolverine);

}

class Hero {
  // Atributos de la clase.
  String name;
  String power;

  // Constructor de la clase.
  Hero({required this.name, this.power = 'sin poder'});

  @override
  String toString() {
    return {'Heros name': this.name, 'power of the hero': this.power}.toString();
  }
}