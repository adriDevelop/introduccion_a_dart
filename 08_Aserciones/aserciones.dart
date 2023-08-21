void main(){

  final mySquare = Square(side: -100);

  print(mySquare);
  
}

class Square {
  // Atributos de la clase.
  double _side;

  // Contructor de la clase.
  Square({required double side})
  : assert(side >= 0, 'side must be >= 0'),
    _side = side;

  // Metodos especiales de la clase.
  double get getArea {
    return _side * _side;
  }

  @override
  String toString() {
    return {'Side': _side, 'area': this.getArea}.toString();
  }

}