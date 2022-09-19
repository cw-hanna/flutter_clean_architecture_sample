// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'org_detail_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OrgDetailModel _$OrgDetailModelFromJson(Map<String, dynamic> json) {
  return _OrgDetailModel.fromJson(json);
}

/// @nodoc
class _$OrgDetailModelTearOff {
  const _$OrgDetailModelTearOff();

  _OrgDetailModel call(
      {required String? name,
      required String? html_url,
      required String? description,
      required String? created_at}) {
    return _OrgDetailModel(
      name: name,
      html_url: html_url,
      description: description,
      created_at: created_at,
    );
  }

  OrgDetailModel fromJson(Map<String, Object?> json) {
    return OrgDetailModel.fromJson(json);
  }
}

/// @nodoc
const $OrgDetailModel = _$OrgDetailModelTearOff();

/// @nodoc
mixin _$OrgDetailModel {
  String? get name => throw _privateConstructorUsedError;
  String? get html_url => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get created_at => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrgDetailModelCopyWith<OrgDetailModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrgDetailModelCopyWith<$Res> {
  factory $OrgDetailModelCopyWith(
          OrgDetailModel value, $Res Function(OrgDetailModel) then) =
      _$OrgDetailModelCopyWithImpl<$Res>;
  $Res call(
      {String? name,
      String? html_url,
      String? description,
      String? created_at});
}

/// @nodoc
class _$OrgDetailModelCopyWithImpl<$Res>
    implements $OrgDetailModelCopyWith<$Res> {
  _$OrgDetailModelCopyWithImpl(this._value, this._then);

  final OrgDetailModel _value;
  // ignore: unused_field
  final $Res Function(OrgDetailModel) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? html_url = freezed,
    Object? description = freezed,
    Object? created_at = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      html_url: html_url == freezed
          ? _value.html_url
          : html_url // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      created_at: created_at == freezed
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$OrgDetailModelCopyWith<$Res>
    implements $OrgDetailModelCopyWith<$Res> {
  factory _$OrgDetailModelCopyWith(
          _OrgDetailModel value, $Res Function(_OrgDetailModel) then) =
      __$OrgDetailModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? name,
      String? html_url,
      String? description,
      String? created_at});
}

/// @nodoc
class __$OrgDetailModelCopyWithImpl<$Res>
    extends _$OrgDetailModelCopyWithImpl<$Res>
    implements _$OrgDetailModelCopyWith<$Res> {
  __$OrgDetailModelCopyWithImpl(
      _OrgDetailModel _value, $Res Function(_OrgDetailModel) _then)
      : super(_value, (v) => _then(v as _OrgDetailModel));

  @override
  _OrgDetailModel get _value => super._value as _OrgDetailModel;

  @override
  $Res call({
    Object? name = freezed,
    Object? html_url = freezed,
    Object? description = freezed,
    Object? created_at = freezed,
  }) {
    return _then(_OrgDetailModel(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      html_url: html_url == freezed
          ? _value.html_url
          : html_url // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      created_at: created_at == freezed
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OrgDetailModel implements _OrgDetailModel {
  _$_OrgDetailModel(
      {required this.name,
      required this.html_url,
      required this.description,
      required this.created_at});

  factory _$_OrgDetailModel.fromJson(Map<String, dynamic> json) =>
      _$$_OrgDetailModelFromJson(json);

  @override
  final String? name;
  @override
  final String? html_url;
  @override
  final String? description;
  @override
  final String? created_at;

  @JsonKey(ignore: true)
  @override
  _$OrgDetailModelCopyWith<_OrgDetailModel> get copyWith =>
      __$OrgDetailModelCopyWithImpl<_OrgDetailModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OrgDetailModelToJson(this);
  }
  
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
  
  @override
  // TODO: implement stringify
  bool? get stringify => throw UnimplementedError();
}

abstract class _OrgDetailModel implements OrgDetailModel {
  factory _OrgDetailModel(
      {required String? name,
      required String? html_url,
      required String? description,
      required String? created_at}) = _$_OrgDetailModel;

  factory _OrgDetailModel.fromJson(Map<String, dynamic> json) =
      _$_OrgDetailModel.fromJson;

  @override
  String? get name;
  @override
  String? get html_url;
  @override
  String? get description;
  @override
  String? get created_at;
  @override
  @JsonKey(ignore: true)
  _$OrgDetailModelCopyWith<_OrgDetailModel> get copyWith =>
      throw _privateConstructorUsedError;
}
