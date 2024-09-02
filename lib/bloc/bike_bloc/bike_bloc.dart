import 'package:bloc/bloc.dart';
import 'bike_event.dart';
import 'bike_state.dart';

class BikeBloc extends Bloc<BikeEvent, BikeState> {
  BikeBloc() : super(BikeState()) {
    on<AddPetrolEvent>((event, emit) {
      emit(state.copyWith(totalPetrol: state.totalPetrol + event.litres));
    });

    on<AddKilometersEvent>((event, emit) {
      emit(state.copyWith(
          totalKilometers: state.totalKilometers + event.kilometers));
    });
  }
}
