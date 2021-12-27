part of 'user_list_bloc.dart';

abstract class UserListState extends Equatable {
  const UserListState();
}

class UserListInitial extends UserListState {
  @override
  List<Object> get props => [];
}

class UserListLoading extends UserListState {
  @override
  List<Object> get props => [];
}

class UserListSuccess extends UserListState {
  final List<User> users;

  UserListSuccess({required this.users});

  @override
  List<Object?> get props => [this.users];
}

class UserListFailure extends UserListState {
  final String error;
  UserListFailure({required this.error});

  @override
  List<Object?> get props => [this.error];
}
