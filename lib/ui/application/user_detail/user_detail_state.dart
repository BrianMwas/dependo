part of 'user_detail_bloc.dart';

abstract class UserDetailState extends Equatable {
  const UserDetailState();
}

class UserDetailInitial extends UserDetailState {
  @override
  List<Object> get props => [];
}

class UserDetailLoading extends UserDetailState {
  @override
  List<Object> get props => [];
}

class UserDetailSuccess extends UserDetailState {
  final User user;

  UserDetailSuccess({required this.user});

  @override
  List<Object> get props => [];
}

class UserDetailFailure extends UserDetailState {
  final String error;

  UserDetailFailure({required this.error});
  @override
  List<Object> get props => [this.error];
}
