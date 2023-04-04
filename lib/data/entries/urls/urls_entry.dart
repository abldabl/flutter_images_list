import 'package:freezed_annotation/freezed_annotation.dart';

part 'urls_entry.freezed.dart';
part 'urls_entry.g.dart';

@freezed
class UrlsEntry with _$UrlsEntry {
  factory UrlsEntry({
    required String raw,
    required String small,
  }) = _UrlsEntry;

  factory UrlsEntry.fromJson(Map<String, dynamic> json) => _$UrlsEntryFromJson(json);
}
