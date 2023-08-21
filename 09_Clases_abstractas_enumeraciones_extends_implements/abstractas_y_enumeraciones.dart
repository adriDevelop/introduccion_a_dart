void main() {

  final windPlant = WindPlant(intialEnergy: 100);

  print(windPlant); 

  print('wind: ${chargePhone(windPlant)}');

}

enum PlantType { nuclear, wind, water }

double chargePhone(EnergyPlant plant){
  if (plant.energyLeft < 10){
    throw Exception('Not enought energy.');
  }

  return plant.energyLeft - 10;
}

abstract class EnergyPlant {

  double energyLeft; // Energia restante de la planta.
  PlantType type; // Tipo de planta: Nuclear, eolica, acuatica.

  // Constructor de la clase.
  EnergyPlant({required double energyLeft, required PlantType type})
  : energyLeft = energyLeft, 
    type = type;

  void consumeEnergy( double amount );

}

class WindPlant extends EnergyPlant{
  
  WindPlant({ required double intialEnergy })
  : super(energyLeft: intialEnergy, type: PlantType.wind);

  @override
  String toString() {
    return {'Energy left': this.energyLeft, 'type': this.type}.toString();
  }
  
  @override
  void consumeEnergy(double amount) {
    if (amount > energyLeft){
      print('Sorry, we dont have this energy.');
    } else {
      energyLeft -= amount;
      print(energyLeft);
    }
  }

}