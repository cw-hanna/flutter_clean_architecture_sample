// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'search_repo_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SearchRepoModel _$SearchRepoModelFromJson(Map<String, dynamic> json) {
  return _SearchRepoModel.fromJson(json);
}

/// @nodoc
class _$SearchRepoModelTearOff {
  const _$SearchRepoModelTearOff();

  _SearchRepoModel call(
      {required String? name,
      required String? html_url,
      required String? description,
      required String? language}) {
    return _SearchRepoModel(
      name: name,
      html_url: html_url,
      description: description,
      language: language,
    );
  }

  SearchRepoModel fromJson(Map<String, Object?> json) {
    return SearchRepoModel.fromJson(json);
  }
}

/// @nodoc
const $SearchRepoModel = _$SearchRepoModelTearOff();

/// @nodoc
mixin _$SearchRepoModel {
  String? get name => throw _privateConstructorUsedError;
  String? get html_url => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get language => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchRepoModelCopyWith<SearchRepoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchRepoModelCopyWith<$Res> {
  factory $SearchRepoModelCopyWith(
          SearchRepoModel value, $Res Function(SearchRepoModel) then) =
      _$SearchRepoModelCopyWithImpl<$Res>;
  $Res call(
      {String? name, String? html_url, String? description, String? language});
}

/// @nodoc
class _$SearchRepoModelCopyWithImpl<$Res>
    implements $SearchRepoModelCopyWith<$Res> {
  _$SearchRepoModelCopyWithImpl(this._value, this._then);

  final SearchRepoModel _value;
  // ignore: unused_field
  final $Res Function(SearchRepoModel) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? html_url = freezed,
    Object? description = freezed,
    Object? language = freezed,
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
      language: language == freezed
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$SearchRepoModelCopyWith<$Res>
    implements $SearchRepoModelCopyWith<$Res> {
  factory _$SearchRepoModelCopyWith(
          _SearchRepoModel value, $Res Function(_SearchRepoModel) then) =
      __$SearchRepoModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? name, String? html_url, String? description, String? language});
}

/// @nodoc
class __$SearchRepoModelCopyWithImpl<$Res>
    extends _$SearchRepoModelCopyWithImpl<$Res>
    implements _$SearchRepoModelCopyWith<$Res> {
  __$SearchRepoModelCopyWithImpl(
      _SearchRepoModel _value, $Res Function(_SearchRepoModel) _then)
      : super(_value, (v) => _then(v as _SearchRepoModel));

  @override
  _SearchRepoModel get _value => super._value as _SearchRepoModel;

  @override
  $Res call({
    Object? name = freezed,
    Object? html_url = freezed,
    Object? description = freezed,
    Object? language = freezed,
  }) {
    return _then(_SearchRepoModel(
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
      language: language == freezed
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SearchRepoModel implements _SearchRepoModel {
  _$_SearchRepoModel(
      {required this.name,
      required this.html_url,
      required this.description,
      required this.language});

  factory _$_SearchRepoModel.fromJson(Map<String, dynamic> json) =>
      _$$_SearchRepoModelFromJson(json);

  @override
  final String? name;
  @override
  final String? html_url;
  @override
  final String? description;
  @override
  final String? language;

  @JsonKey(ignore: true)
  @override
  _$SearchRepoModelCopyWith<_SearchRepoModel> get copyWith =>
      __$SearchRepoModelCopyWithImpl<_SearchRepoModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SearchRepoModelToJson(this);
  }
  
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
  
  @override
  // TODO: implement stringify
  bool? get stringify => throw UnimplementedError();
}

abstract class _SearchRepoModel implements SearchRepoModel {
  factory _SearchRepoModel(
      {required String? name,
      required String? html_url,
      required String? description,
      required String? language}) = _$_SearchRepoModel;

  factory _SearchRepoModel.fromJson(Map<String, dynamic> json) =
      _$_SearchRepoModel.fromJson;

  @override
  String? get name;
  @override
  String? get html_url;
  @override
  String? get description;
  @override
  String? get language;
  @override
  @JsonKey(ignore: true)
  _$SearchRepoModelCopyWith<_SearchRepoModel> get copyWith =>
      throw _privateConstructorUsedError;
}
