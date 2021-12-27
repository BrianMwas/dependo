import 'package:bloc/bloc.dart';
import 'package:dependo/data/models/pet.model.dart';
import 'package:dependo/data/repository/i_pets_repository.dart';
import 'package:equatable/equatable.dart';

part 'pets_list_event.dart';
part 'pets_list_state.dart';

class PetsListBloc extends Bloc<PetsListEvent, PetsListState> {
  final IPetsFacade _petsFacade;
  PetsListBloc(this._petsFacade) : super(PetsListInitial()) {
    on<PetsListRequested>((event, emit) async {
        try {
          emit(PetsListLoading());
          final pets = await _petsFacade.getAllPets();
          emit(PetsListSuccess(pets: pets));
        } catch (e) {
          emit(PetsListFailure(error: "Failed to get users pets"));
        }
    });
  }
}
