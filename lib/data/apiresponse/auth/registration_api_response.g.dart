// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'registration_api_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RegistrationApiResponse _$RegistrationApiResponseFromJson(
        Map<String, dynamic> json) =>
    RegistrationApiResponse(
      id: (json['id'] as num?)?.toInt(),
      email: json['email'] as String?,
      password: json['password'] as String?,
      name: json['name'] as String?,
      role: json['role'] as String?,
      avatar: json['avatar'] as String?,
      creationAt: json['creationAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$RegistrationApiResponseToJson(
        RegistrationApiResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'password': instance.password,
      'name': instance.name,
      'role': instance.role,
      'avatar': instance.avatar,
      'creationAt': instance.creationAt,
      'updatedAt': instance.updatedAt,
    };
