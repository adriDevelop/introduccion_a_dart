abstract class Animal{

}

abstract class Mamifero extends Animal{

}

abstract class Ave extends Animal{
  
}

abstract class Pez extends Animal{
  
}

mixin Volador{
  void volar(){
    print('Estoy volando');
  }
}

mixin Caminante{
  void caminar(){
    print('Estoy caminando');
  }
}

mixin Nadador{
  void nadar(){
    print('Estoy nadando');
  }
}


// MAMIFEROS
class Dolphin extends Mamifero with Nadador{

}

class Bat extends Mamifero with Volador, Caminante{
  
}

class Gato extends Mamifero with Caminante{

}

// AVES
class Paloma extends Ave with Volador, Caminante{

}

class Pato extends Ave with Volador, Caminante, Nadador{

}

// PECES
class Tiburon extends Pez with Nadador{

}

class PezVolador extends Pez with Nadador, Volador{

}


void main(){

  // Delfin.
  final flipper = Dolphin();
  flipper.nadar();

  // Murcielago.
  final batman = Bat();
  batman.caminar();
  batman.volar();

  // Pato.
  final namore = Pato();
  namore.caminar();
  namore.nadar();
  namore.volar();

}