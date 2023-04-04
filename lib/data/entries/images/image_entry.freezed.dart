// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'image_entry.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ImageEntry _$ImageEntryFromJson(Map<String, dynamic> json) {
  return _ImageEntry.fromJson(json);
}

/// @nodoc
mixin _$ImageEntry {
  String get id => throw _privateConstructorUsedError;
  @JsonValue('created_at')
  int? get createdAt => throw _privateConstructorUsedError;
  @JsonValue('updated_at')
  int? get updatedAt => throw _privateConstructorUsedError;
  int? get width => throw _privateConstructorUsedError;
  int? get height => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  @JsonValue('alt_description')
  String? get altDescription => throw _privateConstructorUsedError;
  int get likes => throw _privateConstructorUsedError;
  UserEntry get user => throw _privateConstructorUsedError;
  UrlsEntry get urls => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ImageEntryCopyWith<ImageEntry> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageEntryCopyWith<$Res> {
  factory $ImageEntryCopyWith(
          ImageEntry value, $Res Function(ImageEntry) then) =
      _$ImageEntryCopyWithImpl<$Res, ImageEntry>;
  @useResult
  $Res call(
      {String id,
      @JsonValue('created_at') int? createdAt,
      @JsonValue('updated_at') int? updatedAt,
      int? width,
      int? height,
      String? description,
      @JsonValue('alt_description') String? altDescription,
      int likes,
      UserEntry user,
      UrlsEntry urls});

  $UserEntryCopyWith<$Res> get user;
  $UrlsEntryCopyWith<$Res> get urls;
}

/// @nodoc
class _$ImageEntryCopyWithImpl<$Res, $Val extends ImageEntry>
    implements $ImageEntryCopyWith<$Res> {
  _$ImageEntryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? width = freezed,
    Object? height = freezed,
    Object? description = freezed,
    Object? altDescription = freezed,
    Object? likes = null,
    Object? user = null,
    Object? urls = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as int?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as int?,
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      altDescription: freezed == altDescription
          ? _value.altDescription
          : altDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      likes: null == likes
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as int,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserEntry,
      urls: null == urls
          ? _value.urls
          : urls // ignore: cast_nullable_to_non_nullable
              as UrlsEntry,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserEntryCopyWith<$Res> get user {
    return $UserEntryCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $UrlsEntryCopyWith<$Res> get urls {
    return $UrlsEntryCopyWith<$Res>(_value.urls, (value) {
      return _then(_value.copyWith(urls: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ImageEntryCopyWith<$Res>
    implements $ImageEntryCopyWith<$Res> {
  factory _$$_ImageEntryCopyWith(
          _$_ImageEntry value, $Res Function(_$_ImageEntry) then) =
      __$$_ImageEntryCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonValue('created_at') int? createdAt,
      @JsonValue('updated_at') int? updatedAt,
      int? width,
      int? height,
      String? description,
      @JsonValue('alt_description') String? altDescription,
      int likes,
      UserEntry user,
      UrlsEntry urls});

  @override
  $UserEntryCopyWith<$Res> get user;
  @override
  $UrlsEntryCopyWith<$Res> get urls;
}

/// @nodoc
class __$$_ImageEntryCopyWithImpl<$Res>
    extends _$ImageEntryCopyWithImpl<$Res, _$_ImageEntry>
    implements _$$_ImageEntryCopyWith<$Res> {
  __$$_ImageEntryCopyWithImpl(
      _$_ImageEntry _value, $Res Function(_$_ImageEntry) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? width = freezed,
    Object? height = freezed,
    Object? description = freezed,
    Object? altDescription = freezed,
    Object? likes = null,
    Object? user = null,
    Object? urls = null,
  }) {
    return _then(_$_ImageEntry(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as int?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as int?,
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      altDescription: freezed == altDescription
          ? _value.altDescription
          : altDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      likes: null == likes
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as int,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserEntry,
      urls: null == urls
          ? _value.urls
          : urls // ignore: cast_nullable_to_non_nullable
              as UrlsEntry,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ImageEntry implements _ImageEntry {
  _$_ImageEntry(
      {required this.id,
      @JsonValue('created_at') this.createdAt,
      @JsonValue('updated_at') this.updatedAt,
      this.width,
      this.height,
      this.description,
      @JsonValue('alt_description') this.altDescription,
      this.likes = 0,
      required this.user,
      required this.urls});

  factory _$_ImageEntry.fromJson(Map<String, dynamic> json) =>
      _$$_ImageEntryFromJson(json);

  @override
  final String id;
  @override
  @JsonValue('created_at')
  final int? createdAt;
  @override
  @JsonValue('updated_at')
  final int? updatedAt;
  @override
  final int? width;
  @override
  final int? height;
  @override
  final String? description;
  @override
  @JsonValue('alt_description')
  final String? altDescription;
  @override
  @JsonKey()
  final int likes;
  @override
  final UserEntry user;
  @override
  final UrlsEntry urls;

  @override
  String toString() {
    return 'ImageEntry(id: $id, createdAt: $createdAt, updatedAt: $updatedAt, width: $width, height: $height, description: $description, altDescription: $altDescription, likes: $likes, user: $user, urls: $urls)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ImageEntry &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.altDescription, altDescription) ||
                other.altDescription == altDescription) &&
            (identical(other.likes, likes) || other.likes == likes) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.urls, urls) || other.urls == urls));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, createdAt, updatedAt, width,
      height, description, altDescription, likes, user, urls);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ImageEntryCopyWith<_$_ImageEntry> get copyWith =>
      __$$_ImageEntryCopyWithImpl<_$_ImageEntry>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ImageEntryToJson(
      this,
    );
  }
}

abstract class _ImageEntry implements ImageEntry {
  factory _ImageEntry(
      {required final String id,
      @JsonValue('created_at') final int? createdAt,
      @JsonValue('updated_at') final int? updatedAt,
      final int? width,
      final int? height,
      final String? description,
      @JsonValue('alt_description') final String? altDescription,
      final int likes,
      required final UserEntry user,
      required final UrlsEntry urls}) = _$_ImageEntry;

  factory _ImageEntry.fromJson(Map<String, dynamic> json) =
      _$_ImageEntry.fromJson;

  @override
  String get id;
  @override
  @JsonValue('created_at')
  int? get createdAt;
  @override
  @JsonValue('updated_at')
  int? get updatedAt;
  @override
  int? get width;
  @override
  int? get height;
  @override
  String? get description;
  @override
  @JsonValue('alt_description')
  String? get altDescription;
  @override
  int get likes;
  @override
  UserEntry get user;
  @override
  UrlsEntry get urls;
  @override
  @JsonKey(ignore: true)
  _$$_ImageEntryCopyWith<_$_ImageEntry> get copyWith =>
      throw _privateConstructorUsedError;
}
