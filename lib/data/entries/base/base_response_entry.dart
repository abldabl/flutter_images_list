import 'package:json_annotation/json_annotation.dart';

part 'base_response_entry.g.dart';

@JsonSerializable(createToJson: false)
class BaseResponseEntry {
  @JsonKey(name: 'Result')
  final String result;
  @JsonKey(name: 'Response')
  final dynamic response;

  BaseResponseEntry(this.result, this.response);
  factory BaseResponseEntry.fromJson(Map<String, dynamic> json) =>
      _$BaseResponseEntryFromJson(json);
}
