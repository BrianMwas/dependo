// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pet.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Pet _$PetFromJson(Map<String, dynamic> json) => Pet(
      id: json['id'] as String,
      name: json['name'] as String,
      profile: json['profile'] as String,
      birthDate: DateTime.parse(json['birthDate'] as String),
    );

Map<String, dynamic> _$PetToJson(Pet instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'profile': instance.profile,
      'birthDate': instance.birthDate.toIso8601String(),
    };
