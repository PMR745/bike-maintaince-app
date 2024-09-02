class BikeState {
  final double totalPetrol;
  final double totalKilometers;

  BikeState({
    this.totalPetrol = 0,
    this.totalKilometers = 0,
  });

  BikeState copyWith({
    double? totalPetrol,
    double? totalKilometers,
  }) {
    return BikeState(
      totalPetrol: totalPetrol ?? this.totalPetrol,
      totalKilometers: totalKilometers ?? this.totalKilometers,
    );
  }
}
