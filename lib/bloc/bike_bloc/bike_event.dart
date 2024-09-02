abstract class BikeEvent {}

class AddPetrolEvent extends BikeEvent {
  final double litres;
  AddPetrolEvent(this.litres);
}

class AddKilometersEvent extends BikeEvent {
  final double kilometers;
  AddKilometersEvent(this.kilometers);
}
