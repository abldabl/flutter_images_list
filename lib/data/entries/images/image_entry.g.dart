// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image_entry.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ImageEntry _$$_ImageEntryFromJson(Map<String, dynamic> json) =>
    _$_ImageEntry(
      id: json['id'] as String,
      createdAt: json['createdAt'] as int?,
      updatedAt: json['updatedAt'] as int?,
      width: json['width'] as int?,
      height: json['height'] as int?,
      description: json['description'] as String?,
      altDescription: json['altDescription'] as String?,
      likes: json['likes'] as int? ?? 0,
      user: UserEntry.fromJson(json['user'] as Map<String, dynamic>),
      urls: UrlsEntry.fromJson(json['urls'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ImageEntryToJson(_$_ImageEntry instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'width': instance.width,
      'height': instance.height,
      'description': instance.description,
      'altDescription': instance.altDescription,
      'likes': instance.likes,
      'user': instance.user,
      'urls': instance.urls,
    };
