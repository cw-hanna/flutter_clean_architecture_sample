// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'org_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OrgModel _$OrgModelFromJson(Map<String, dynamic> json) {
  return _OrgModel.fromJson(json);
}

/// @nodoc
class _$OrgModelTearOff {
  const _$OrgModelTearOff();

  _OrgModel call(
      {required String? login,
      required String? url,
      required String? repos_url,
      required String? avatar_url}) {
    return _OrgModel(
      login: login,
      url: url,
      repos_url: repos_url,
      avatar_url: avatar_url,
    );
  }

  OrgModel fromJson(Map<String, Object?> json) {
    return OrgModel.fromJson(json);
  }
}

/// @nodoc
const $OrgModel = _$OrgModelTearOff();

/// @nodoc
mixin _$OrgModel {
  String? get login => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;
  String? get repos_url => throw _privateConstructorUsedError;
  String? get avatar_url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrgModelCopyWith<OrgModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrgModelCopyWith<$Res> {
  factory $OrgModelCopyWith(OrgModel value, $Res Function(OrgModel) then) =
      _$OrgModelCopyWithImpl<$Res>;
  $Res call(
      {String? login, String? url, String? repos_url, String? avatar_url});
}

/// @nodoc
class _$OrgModelCopyWithImpl<$Res> implements $OrgModelCopyWith<$Res> {
  _$OrgModelCopyWithImpl(this._value, this._then);

  final OrgModel _value;
  // ignore: unused_field
  final $Res Function(OrgModel) _then;

  @override
  $Res call({
    Object? login = freezed,
    Object? url = freezed,
    Object? repos_url = freezed,
    Object? avatar_url = freezed,
  }) {
    return _then(_value.copyWith(
      login: login == freezed
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String?,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      repos_url: repos_url == freezed
          ? _value.repos_url
          : repos_url // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar_url: avatar_url == freezed
          ? _value.avatar_url
          : avatar_url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$OrgModelCopyWith<$Res> implements $OrgModelCopyWith<$Res> {
  factory _$OrgModelCopyWith(_OrgModel value, $Res Function(_OrgModel) then) =
      __$OrgModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? login, String? url, String? repos_url, String? avatar_url});
}

/// @nodoc
class __$OrgModelCopyWithImpl<$Res> extends _$OrgModelCopyWithImpl<$Res>
    implements _$OrgModelCopyWith<$Res> {
  __$OrgModelCopyWithImpl(_OrgModel _value, $Res Function(_OrgModel) _then)
      : super(_value, (v) => _then(v as _OrgModel));

  @override
  _OrgModel get _value => super._value as _OrgModel;

  @override
  $Res call({
    Object? login = freezed,
    Object? url = freezed,
    Object? repos_url = freezed,
    Object? avatar_url = freezed,
  }) {
    return _then(_OrgModel(
      login: login == freezed
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String?,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      repos_url: repos_url == freezed
          ? _value.repos_url
          : repos_url // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar_url: avatar_url == freezed
          ? _value.avatar_url
          : avatar_url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OrgModel implements _OrgModel {
  _$_OrgModel(
      {required this.login,
      required this.url,
      required this.repos_url,
      required this.avatar_url});

  factory _$_OrgModel.fromJson(Map<String, dynamic> json) =>
      _$$_OrgModelFromJson(json);

  @override
  final String? login;
  @override
  final String? url;
  @override
  final String? repos_url;
  @override
  final String? avatar_url;

  @JsonKey(ignore: true)
  @override
  _$OrgModelCopyWith<_OrgModel> get copyWith =>
      __$OrgModelCopyWithImpl<_OrgModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OrgModelToJson(this);
  }
  
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
  
  @override
  // TODO: implement stringify
  bool? get stringify => throw UnimplementedError();
}

abstract class _OrgModel implements OrgModel {
  factory _OrgModel(
      {required String? login,
      required String? url,
      required String? repos_url,
      required String? avatar_url}) = _$_OrgModel;

  factory _OrgModel.fromJson(Map<String, dynamic> json) = _$_OrgModel.fromJson;

  @override
  String? get login;
  @override
  String? get url;
  @override
  String? get repos_url;
  @override
  String? get avatar_url;
  @override
  @JsonKey(ignore: true)
  _$OrgModelCopyWith<_OrgModel> get copyWith =>
      throw _privateConstructorUsedError;
}
