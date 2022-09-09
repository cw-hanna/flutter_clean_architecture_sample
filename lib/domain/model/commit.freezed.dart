// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'commit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Commit _$CommitFromJson(Map<String, dynamic> json) {
  return _Commit.fromJson(json);
}

/// @nodoc
class _$CommitTearOff {
  const _$CommitTearOff();

  _Commit call(
      {required User? author,
      required User? committer,
      required String? message,
      required String? url}) {
    return _Commit(
      author: author,
      committer: committer,
      message: message,
      url: url,
    );
  }

  Commit fromJson(Map<String, Object?> json) {
    return Commit.fromJson(json);
  }
}

/// @nodoc
const $Commit = _$CommitTearOff();

/// @nodoc
mixin _$Commit {
  User? get author => throw _privateConstructorUsedError;
  User? get committer => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommitCopyWith<Commit> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommitCopyWith<$Res> {
  factory $CommitCopyWith(Commit value, $Res Function(Commit) then) =
      _$CommitCopyWithImpl<$Res>;
  $Res call({User? author, User? committer, String? message, String? url});

  $UserCopyWith<$Res>? get author;
  $UserCopyWith<$Res>? get committer;
}

/// @nodoc
class _$CommitCopyWithImpl<$Res> implements $CommitCopyWith<$Res> {
  _$CommitCopyWithImpl(this._value, this._then);

  final Commit _value;
  // ignore: unused_field
  final $Res Function(Commit) _then;

  @override
  $Res call({
    Object? author = freezed,
    Object? committer = freezed,
    Object? message = freezed,
    Object? url = freezed,
  }) {
    return _then(_value.copyWith(
      author: author == freezed
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as User?,
      committer: committer == freezed
          ? _value.committer
          : committer // ignore: cast_nullable_to_non_nullable
              as User?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  @override
  $UserCopyWith<$Res>? get author {
    if (_value.author == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.author!, (value) {
      return _then(_value.copyWith(author: value));
    });
  }

  @override
  $UserCopyWith<$Res>? get committer {
    if (_value.committer == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.committer!, (value) {
      return _then(_value.copyWith(committer: value));
    });
  }
}

/// @nodoc
abstract class _$CommitCopyWith<$Res> implements $CommitCopyWith<$Res> {
  factory _$CommitCopyWith(_Commit value, $Res Function(_Commit) then) =
      __$CommitCopyWithImpl<$Res>;
  @override
  $Res call({User? author, User? committer, String? message, String? url});

  @override
  $UserCopyWith<$Res>? get author;
  @override
  $UserCopyWith<$Res>? get committer;
}

/// @nodoc
class __$CommitCopyWithImpl<$Res> extends _$CommitCopyWithImpl<$Res>
    implements _$CommitCopyWith<$Res> {
  __$CommitCopyWithImpl(_Commit _value, $Res Function(_Commit) _then)
      : super(_value, (v) => _then(v as _Commit));

  @override
  _Commit get _value => super._value as _Commit;

  @override
  $Res call({
    Object? author = freezed,
    Object? committer = freezed,
    Object? message = freezed,
    Object? url = freezed,
  }) {
    return _then(_Commit(
      author: author == freezed
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as User?,
      committer: committer == freezed
          ? _value.committer
          : committer // ignore: cast_nullable_to_non_nullable
              as User?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Commit implements _Commit {
  _$_Commit(
      {required this.author,
      required this.committer,
      required this.message,
      required this.url});

  factory _$_Commit.fromJson(Map<String, dynamic> json) =>
      _$$_CommitFromJson(json);

  @override
  final User? author;
  @override
  final User? committer;
  @override
  final String? message;
  @override
  final String? url;

  @override
  String toString() {
    return 'Commit(author: $author, committer: $committer, message: $message, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Commit &&
            const DeepCollectionEquality().equals(other.author, author) &&
            const DeepCollectionEquality().equals(other.committer, committer) &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality().equals(other.url, url));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(author),
      const DeepCollectionEquality().hash(committer),
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(url));

  @JsonKey(ignore: true)
  @override
  _$CommitCopyWith<_Commit> get copyWith =>
      __$CommitCopyWithImpl<_Commit>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CommitToJson(this);
  }
}

abstract class _Commit implements Commit {
  factory _Commit(
      {required User? author,
      required User? committer,
      required String? message,
      required String? url}) = _$_Commit;

  factory _Commit.fromJson(Map<String, dynamic> json) = _$_Commit.fromJson;

  @override
  User? get author;
  @override
  User? get committer;
  @override
  String? get message;
  @override
  String? get url;
  @override
  @JsonKey(ignore: true)
  _$CommitCopyWith<_Commit> get copyWith => throw _privateConstructorUsedError;
}
