import 'package:flutter_image_list/data/entries/urls/urls_entry.dart';
import 'package:flutter_image_list/data/entries/user/user_entry.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'image_entry.freezed.dart';
part 'image_entry.g.dart';

@freezed
class ImageEntry with _$ImageEntry {
  factory ImageEntry({
    required String id,
    @JsonValue('created_at') int? createdAt,
    @JsonValue('updated_at') int? updatedAt,
    int? width,
    int? height,
    String? description,
    @JsonValue('alt_description') String? altDescription,
    @Default(0) int likes,
    required UserEntry user,
    required UrlsEntry urls,
  }) = _ImageEntry;

  factory ImageEntry.fromJson(Map<String, dynamic> json) => _$ImageEntryFromJson(json);
}
