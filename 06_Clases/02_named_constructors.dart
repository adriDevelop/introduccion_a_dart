void main(){

  final Map<String, dynamic> rawJson = {
    'name': 'Tony Stark',
    'power': 'Money',
    'isAlive': false
  };

  final ironman = Hero.fromJson(rawJson);

// final ironman = new Hero(name: 'Tony Stark', power: 'Dinero', isAlive: false);

  print(ironman);

}

class Hero{
  // Atributos de la clase.
  String name;
  String power;
  bool isAlive;

  Hero({
    required this.name,
    required this.power,
    required this.isAlive
  });

  Hero.fromJson( Map<String, dynamic> json)
    : name = json['name']  ?? 'No name found',
      power = json['power']  ?? 'No power found',
      isAlive = json['isAlive']  ?? 'No isAlive found';


  @override
  String toString() {
    return {'Name': this.name, 'Power': this.power, 'Is alive?': isAlive ? 'YES':'NOPE' }.toString();
  }

}