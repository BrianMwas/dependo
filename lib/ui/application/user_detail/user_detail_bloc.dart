import 'package:bloc/bloc.dart';
import 'package:dependo/data/models/users.model.dart';
import 'package:dependo/data/repository/i_user_repository.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

part 'user_detail_event.dart';
part 'user_detail_state.dart';

@injectable
class UserDetailBloc extends Bloc<UserDetailEvent, UserDetailState> {
  final IUsersFacade _usersFacade;

  UserDetailBloc(this._usersFacade) : super(UserDetailInitial()) {
    on<UserDetailEvent>((event, emit) async {
      if (event is UserDetailRequested) {
        try {
          emit(UserDetailLoading());
          final user = await _usersFacade.getUser(event.userId);
          emit(UserDetailSuccess(user: user));
        } catch (e) {
          emit(UserDetailFailure(error: "Failed to get users details"));
        }
      }
    });
  }
}
