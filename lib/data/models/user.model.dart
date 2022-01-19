import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user.model.g.dart';

@JsonSerializable()
class User extends Equatable {
  String id;
  final String email;
  final String username;

  User({required this.id, required this.email, required this.username});

  @override
  List<Object?> get props => [this.id, this.email, this.username];

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);
}