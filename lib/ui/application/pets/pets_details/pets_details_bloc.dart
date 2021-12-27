import 'package:bloc/bloc.dart';
import 'package:dependo/data/models/pet.model.dart';
import 'package:dependo/data/repository/i_pets_repository.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

part 'pets_details_event.dart';
part 'pets_details_state.dart';

@injectable
class PetsDetailsBloc extends Bloc<PetsDetailsEvent, PetsDetailsState> {
  final IPetsFacade _petsFacade;

  PetsDetailsBloc(this._petsFacade) : super(PetsDetailsInitial()) {
    on<PetsDetailsEvent>((event, emit) async {
      if (event is RequestPetsDetails) {
        try {
          emit(PetsDetailsLoading());
          final pet = await _petsFacade.getPetDetails(event.petId);
          emit(PetsDetailsSuccess(petDetail: pet));
        } catch (e) {
          emit(PetsDetailsFailure(error: "Failed to fetch pets details"));
        }
      }
    });
  }
}
