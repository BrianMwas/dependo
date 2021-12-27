
import 'package:dependo/data/models/pet.model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'users.model.g.dart';

@JsonSerializable()
class User {
  final String id;
  final String name;
  final String avatar;
  final String email;
  final String location;
  final List<Pet>? pets;

  User({
    required this.id,
    required this.name,
    required this.avatar,
    required this.email,
    required this.location,
    this.pets,
  });

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
  Map<String, dynamic> toJson() => _$UserToJson(this);
}