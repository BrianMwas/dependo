// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'users.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) => User(
      id: json['id'] as String,
      name: json['name'] as String,
      avatar: json['avatar'] as String,
      email: json['email'] as String,
      location: json['location'] as String,
      pets: (json['pets'] as List<dynamic>?)
          ?.map((e) => Pet.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'avatar': instance.avatar,
      'email': instance.email,
      'location': instance.location,
      'pets': instance.pets,
    };
