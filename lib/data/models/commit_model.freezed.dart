// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'commit_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CommitModel _$CommitModelFromJson(Map<String, dynamic> json) {
  return _CommitModel.fromJson(json);
}

/// @nodoc
class _$CommitModelTearOff {
  const _$CommitModelTearOff();

  _CommitModel call(
      {required UserModel? author,
      required UserModel? committer,
      required String? message,
      required String? url}) {
    return _CommitModel(
      author: author,
      committer: committer,
      message: message,
      url: url,
    );
  }

  CommitModel fromJson(Map<String, Object?> json) {
    return CommitModel.fromJson(json);
  }
}

/// @nodoc
const $CommitModel = _$CommitModelTearOff();

/// @nodoc
mixin _$CommitModel {
  UserModel? get author => throw _privateConstructorUsedError;
  UserModel? get committer => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommitModelCopyWith<CommitModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommitModelCopyWith<$Res> {
  factory $CommitModelCopyWith(
          CommitModel value, $Res Function(CommitModel) then) =
      _$CommitModelCopyWithImpl<$Res>;
  $Res call(
      {UserModel? author, UserModel? committer, String? message, String? url});

  $UserModelCopyWith<$Res>? get author;
  $UserModelCopyWith<$Res>? get committer;
}

/// @nodoc
class _$CommitModelCopyWithImpl<$Res> implements $CommitModelCopyWith<$Res> {
  _$CommitModelCopyWithImpl(this._value, this._then);

  final CommitModel _value;
  // ignore: unused_field
  final $Res Function(CommitModel) _then;

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
              as UserModel?,
      committer: committer == freezed
          ? _value.committer
          : committer // ignore: cast_nullable_to_non_nullable
              as UserModel?,
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
  $UserModelCopyWith<$Res>? get author {
    if (_value.author == null) {
      return null;
    }

    return $UserModelCopyWith<$Res>(_value.author!, (value) {
      return _then(_value.copyWith(author: value));
    });
  }

  @override
  $UserModelCopyWith<$Res>? get committer {
    if (_value.committer == null) {
      return null;
    }

    return $UserModelCopyWith<$Res>(_value.committer!, (value) {
      return _then(_value.copyWith(committer: value));
    });
  }
}

/// @nodoc
abstract class _$CommitModelCopyWith<$Res>
    implements $CommitModelCopyWith<$Res> {
  factory _$CommitModelCopyWith(
          _CommitModel value, $Res Function(_CommitModel) then) =
      __$CommitModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {UserModel? author, UserModel? committer, String? message, String? url});

  @override
  $UserModelCopyWith<$Res>? get author;
  @override
  $UserModelCopyWith<$Res>? get committer;
}

/// @nodoc
class __$CommitModelCopyWithImpl<$Res> extends _$CommitModelCopyWithImpl<$Res>
    implements _$CommitModelCopyWith<$Res> {
  __$CommitModelCopyWithImpl(
      _CommitModel _value, $Res Function(_CommitModel) _then)
      : super(_value, (v) => _then(v as _CommitModel));

  @override
  _CommitModel get _value => super._value as _CommitModel;

  @override
  $Res call({
    Object? author = freezed,
    Object? committer = freezed,
    Object? message = freezed,
    Object? url = freezed,
  }) {
    return _then(_CommitModel(
      author: author == freezed
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as UserModel?,
      committer: committer == freezed
          ? _value.committer
          : committer // ignore: cast_nullable_to_non_nullable
              as UserModel?,
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
class _$_CommitModel implements _CommitModel {
  _$_CommitModel(
      {required this.author,
      required this.committer,
      required this.message,
      required this.url});

  factory _$_CommitModel.fromJson(Map<String, dynamic> json) =>
      _$$_CommitModelFromJson(json);

  @override
  final UserModel? author;
  @override
  final UserModel? committer;
  @override
  final String? message;
  @override
  final String? url;

  @JsonKey(ignore: true)
  @override
  _$CommitModelCopyWith<_CommitModel> get copyWith =>
      __$CommitModelCopyWithImpl<_CommitModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CommitModelToJson(this);
  }
  
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
  
  @override
  // TODO: implement stringify
  bool? get stringify => throw UnimplementedError();
}

abstract class _CommitModel implements CommitModel {
  factory _CommitModel(
      {required UserModel? author,
      required UserModel? committer,
      required String? message,
      required String? url}) = _$_CommitModel;

  factory _CommitModel.fromJson(Map<String, dynamic> json) =
      _$_CommitModel.fromJson;

  @override
  UserModel? get author;
  @override
  UserModel? get committer;
  @override
  String? get message;
  @override
  String? get url;
  @override
  @JsonKey(ignore: true)
  _$CommitModelCopyWith<_CommitModel> get copyWith =>
      throw _privateConstructorUsedError;
}
