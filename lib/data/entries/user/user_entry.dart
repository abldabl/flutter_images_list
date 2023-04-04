import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_entry.freezed.dart';
part 'user_entry.g.dart';

@freezed
class UserEntry with _$UserEntry {
  factory UserEntry({
    required String id,
    @JsonValue('updated_at') int? updatedAt,
    required String username,
    required String name,
    @JsonValue('first_name') String? firstName,
    @JsonValue('last_name') String? lastName,
  }) = _UserEntry;

  factory UserEntry.fromJson(Map<String, dynamic> json) => _$UserEntryFromJson(json);
}
