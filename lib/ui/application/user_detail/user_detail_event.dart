part of 'user_detail_bloc.dart';

abstract class UserDetailEvent extends Equatable {
  const UserDetailEvent();
}

class UserDetailRequested extends UserDetailEvent {
  final String userId;
  UserDetailRequested({required this.userId});

  @override
  List<Object?> get props => [this.userId];
}
