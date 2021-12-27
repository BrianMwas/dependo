import 'package:bloc/bloc.dart';
import 'package:dependo/data/models/users.model.dart';
import 'package:dependo/data/repository/i_user_repository.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

part 'user_list_event.dart';
part 'user_list_state.dart';

@injectable
class UserListBloc extends Bloc<UserListEvent, UserListState> {
  final IUsersFacade _usersFacade;

  UserListBloc(this._usersFacade) : super(UserListInitial()) {
    on<UserListEvent>((event, emit) async {
      if (event is RequestUsersListEvent) {
        // Use try catch to map event to the error better
        try {
          emit(UserListLoading());
          final users = await _usersFacade.getAllUsers();
          emit(UserListSuccess(users: users));
        } catch (e) {
          emit(UserListFailure(error: "Failed to get users"));
        }
      }
    });
  }
}
