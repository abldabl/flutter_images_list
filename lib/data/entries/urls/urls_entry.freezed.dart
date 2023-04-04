// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'urls_entry.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UrlsEntry _$UrlsEntryFromJson(Map<String, dynamic> json) {
  return _UrlsEntry.fromJson(json);
}

/// @nodoc
mixin _$UrlsEntry {
  String get raw => throw _privateConstructorUsedError;
  String get small => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UrlsEntryCopyWith<UrlsEntry> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UrlsEntryCopyWith<$Res> {
  factory $UrlsEntryCopyWith(UrlsEntry value, $Res Function(UrlsEntry) then) =
      _$UrlsEntryCopyWithImpl<$Res, UrlsEntry>;
  @useResult
  $Res call({String raw, String small});
}

/// @nodoc
class _$UrlsEntryCopyWithImpl<$Res, $Val extends UrlsEntry>
    implements $UrlsEntryCopyWith<$Res> {
  _$UrlsEntryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? raw = null,
    Object? small = null,
  }) {
    return _then(_value.copyWith(
      raw: null == raw
          ? _value.raw
          : raw // ignore: cast_nullable_to_non_nullable
              as String,
      small: null == small
          ? _value.small
          : small // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UrlsEntryCopyWith<$Res> implements $UrlsEntryCopyWith<$Res> {
  factory _$$_UrlsEntryCopyWith(
          _$_UrlsEntry value, $Res Function(_$_UrlsEntry) then) =
      __$$_UrlsEntryCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String raw, String small});
}

/// @nodoc
class __$$_UrlsEntryCopyWithImpl<$Res>
    extends _$UrlsEntryCopyWithImpl<$Res, _$_UrlsEntry>
    implements _$$_UrlsEntryCopyWith<$Res> {
  __$$_UrlsEntryCopyWithImpl(
      _$_UrlsEntry _value, $Res Function(_$_UrlsEntry) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? raw = null,
    Object? small = null,
  }) {
    return _then(_$_UrlsEntry(
      raw: null == raw
          ? _value.raw
          : raw // ignore: cast_nullable_to_non_nullable
              as String,
      small: null == small
          ? _value.small
          : small // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UrlsEntry implements _UrlsEntry {
  _$_UrlsEntry({required this.raw, required this.small});

  factory _$_UrlsEntry.fromJson(Map<String, dynamic> json) =>
      _$$_UrlsEntryFromJson(json);

  @override
  final String raw;
  @override
  final String small;

  @override
  String toString() {
    return 'UrlsEntry(raw: $raw, small: $small)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UrlsEntry &&
            (identical(other.raw, raw) || other.raw == raw) &&
            (identical(other.small, small) || other.small == small));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, raw, small);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UrlsEntryCopyWith<_$_UrlsEntry> get copyWith =>
      __$$_UrlsEntryCopyWithImpl<_$_UrlsEntry>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UrlsEntryToJson(
      this,
    );
  }
}

abstract class _UrlsEntry implements UrlsEntry {
  factory _UrlsEntry({required final String raw, required final String small}) =
      _$_UrlsEntry;

  factory _UrlsEntry.fromJson(Map<String, dynamic> json) =
      _$_UrlsEntry.fromJson;

  @override
  String get raw;
  @override
  String get small;
  @override
  @JsonKey(ignore: true)
  _$$_UrlsEntryCopyWith<_$_UrlsEntry> get copyWith =>
      throw _privateConstructorUsedError;
}
