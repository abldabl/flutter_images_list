// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_entry.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserEntry _$$_UserEntryFromJson(Map<String, dynamic> json) => _$_UserEntry(
      id: json['id'] as String,
      updatedAt: json['updatedAt'] as int?,
      username: json['username'] as String,
      name: json['name'] as String,
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
    );

Map<String, dynamic> _$$_UserEntryToJson(_$_UserEntry instance) =>
    <String, dynamic>{
      'id': instance.id,
      'updatedAt': instance.updatedAt,
      'username': instance.username,
      'name': instance.name,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
    };
