void main(){

  final mySquare = new Square(side: 10);

  mySquare.setSide = 11;

  print('area ${mySquare.getArea}');

}

class Square{
  // Atributos de la clase.
  double _side; // side * side.

  // Constructor de la clase.
  Square({ required double side })
  : _side = side;

  // Getters y Setters.
  double get getArea{
    return _side * _side;
  }

  set setSide(double side){
    print('Setting new value $side');
    if (side < 0 ) throw 'Value must be >= 0';
    _side = side;
  }

}