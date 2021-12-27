
import 'package:json_annotation/json_annotation.dart';

part 'pet.model.g.dart';

@JsonSerializable()
class Pet {
  final String id;
  final String name;
  final String profile;
  final DateTime birthDate;

  Pet({
    required this.id, required this.name, required this.profile, required this.birthDate,
  });

  factory Pet.fromJson(Map<String, dynamic> json) => _$PetFromJson(json);
  Map<String, dynamic> toJson() => _$PetToJson(this);
}