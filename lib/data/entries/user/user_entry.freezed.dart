// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_entry.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserEntry _$UserEntryFromJson(Map<String, dynamic> json) {
  return _UserEntry.fromJson(json);
}

/// @nodoc
mixin _$UserEntry {
  String get id => throw _privateConstructorUsedError;
  @JsonValue('updated_at')
  int? get updatedAt => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonValue('first_name')
  String? get firstName => throw _privateConstructorUsedError;
  @JsonValue('last_name')
  String? get lastName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserEntryCopyWith<UserEntry> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserEntryCopyWith<$Res> {
  factory $UserEntryCopyWith(UserEntry value, $Res Function(UserEntry) then) =
      _$UserEntryCopyWithImpl<$Res, UserEntry>;
  @useResult
  $Res call(
      {String id,
      @JsonValue('updated_at') int? updatedAt,
      String username,
      String name,
      @JsonValue('first_name') String? firstName,
      @JsonValue('last_name') String? lastName});
}

/// @nodoc
class _$UserEntryCopyWithImpl<$Res, $Val extends UserEntry>
    implements $UserEntryCopyWith<$Res> {
  _$UserEntryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? updatedAt = freezed,
    Object? username = null,
    Object? name = null,
    Object? firstName = freezed,
    Object? lastName = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as int?,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserEntryCopyWith<$Res> implements $UserEntryCopyWith<$Res> {
  factory _$$_UserEntryCopyWith(
          _$_UserEntry value, $Res Function(_$_UserEntry) then) =
      __$$_UserEntryCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonValue('updated_at') int? updatedAt,
      String username,
      String name,
      @JsonValue('first_name') String? firstName,
      @JsonValue('last_name') String? lastName});
}

/// @nodoc
class __$$_UserEntryCopyWithImpl<$Res>
    extends _$UserEntryCopyWithImpl<$Res, _$_UserEntry>
    implements _$$_UserEntryCopyWith<$Res> {
  __$$_UserEntryCopyWithImpl(
      _$_UserEntry _value, $Res Function(_$_UserEntry) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? updatedAt = freezed,
    Object? username = null,
    Object? name = null,
    Object? firstName = freezed,
    Object? lastName = freezed,
  }) {
    return _then(_$_UserEntry(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as int?,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserEntry implements _UserEntry {
  _$_UserEntry(
      {required this.id,
      @JsonValue('updated_at') this.updatedAt,
      required this.username,
      required this.name,
      @JsonValue('first_name') this.firstName,
      @JsonValue('last_name') this.lastName});

  factory _$_UserEntry.fromJson(Map<String, dynamic> json) =>
      _$$_UserEntryFromJson(json);

  @override
  final String id;
  @override
  @JsonValue('updated_at')
  final int? updatedAt;
  @override
  final String username;
  @override
  final String name;
  @override
  @JsonValue('first_name')
  final String? firstName;
  @override
  @JsonValue('last_name')
  final String? lastName;

  @override
  String toString() {
    return 'UserEntry(id: $id, updatedAt: $updatedAt, username: $username, name: $name, firstName: $firstName, lastName: $lastName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserEntry &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, updatedAt, username, name, firstName, lastName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserEntryCopyWith<_$_UserEntry> get copyWith =>
      __$$_UserEntryCopyWithImpl<_$_UserEntry>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserEntryToJson(
      this,
    );
  }
}

abstract class _UserEntry implements UserEntry {
  factory _UserEntry(
      {required final String id,
      @JsonValue('updated_at') final int? updatedAt,
      required final String username,
      required final String name,
      @JsonValue('first_name') final String? firstName,
      @JsonValue('last_name') final String? lastName}) = _$_UserEntry;

  factory _UserEntry.fromJson(Map<String, dynamic> json) =
      _$_UserEntry.fromJson;

  @override
  String get id;
  @override
  @JsonValue('updated_at')
  int? get updatedAt;
  @override
  String get username;
  @override
  String get name;
  @override
  @JsonValue('first_name')
  String? get firstName;
  @override
  @JsonValue('last_name')
  String? get lastName;
  @override
  @JsonKey(ignore: true)
  _$$_UserEntryCopyWith<_$_UserEntry> get copyWith =>
      throw _privateConstructorUsedError;
}
