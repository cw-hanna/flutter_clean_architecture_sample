// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'search_user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SearchUserModel _$SearchUserModelFromJson(Map<String, dynamic> json) {
  return _SearchUserModel.fromJson(json);
}

/// @nodoc
class _$SearchUserModelTearOff {
  const _$SearchUserModelTearOff();

  _SearchUserModel call(
      {required String? login,
      required String? name,
      required String? avatar_url,
      required String? html_url,
      required int? public_repos}) {
    return _SearchUserModel(
      login: login,
      name: name,
      avatar_url: avatar_url,
      html_url: html_url,
      public_repos: public_repos,
    );
  }

  SearchUserModel fromJson(Map<String, Object?> json) {
    return SearchUserModel.fromJson(json);
  }
}

/// @nodoc
const $SearchUserModel = _$SearchUserModelTearOff();

/// @nodoc
mixin _$SearchUserModel {
  String? get login => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get avatar_url => throw _privateConstructorUsedError;
  String? get html_url => throw _privateConstructorUsedError;
  int? get public_repos => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchUserModelCopyWith<SearchUserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchUserModelCopyWith<$Res> {
  factory $SearchUserModelCopyWith(
          SearchUserModel value, $Res Function(SearchUserModel) then) =
      _$SearchUserModelCopyWithImpl<$Res>;
  $Res call(
      {String? login,
      String? name,
      String? avatar_url,
      String? html_url,
      int? public_repos});
}

/// @nodoc
class _$SearchUserModelCopyWithImpl<$Res>
    implements $SearchUserModelCopyWith<$Res> {
  _$SearchUserModelCopyWithImpl(this._value, this._then);

  final SearchUserModel _value;
  // ignore: unused_field
  final $Res Function(SearchUserModel) _then;

  @override
  $Res call({
    Object? login = freezed,
    Object? name = freezed,
    Object? avatar_url = freezed,
    Object? html_url = freezed,
    Object? public_repos = freezed,
  }) {
    return _then(_value.copyWith(
      login: login == freezed
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar_url: avatar_url == freezed
          ? _value.avatar_url
          : avatar_url // ignore: cast_nullable_to_non_nullable
              as String?,
      html_url: html_url == freezed
          ? _value.html_url
          : html_url // ignore: cast_nullable_to_non_nullable
              as String?,
      public_repos: public_repos == freezed
          ? _value.public_repos
          : public_repos // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$SearchUserModelCopyWith<$Res>
    implements $SearchUserModelCopyWith<$Res> {
  factory _$SearchUserModelCopyWith(
          _SearchUserModel value, $Res Function(_SearchUserModel) then) =
      __$SearchUserModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? login,
      String? name,
      String? avatar_url,
      String? html_url,
      int? public_repos});
}

/// @nodoc
class __$SearchUserModelCopyWithImpl<$Res>
    extends _$SearchUserModelCopyWithImpl<$Res>
    implements _$SearchUserModelCopyWith<$Res> {
  __$SearchUserModelCopyWithImpl(
      _SearchUserModel _value, $Res Function(_SearchUserModel) _then)
      : super(_value, (v) => _then(v as _SearchUserModel));

  @override
  _SearchUserModel get _value => super._value as _SearchUserModel;

  @override
  $Res call({
    Object? login = freezed,
    Object? name = freezed,
    Object? avatar_url = freezed,
    Object? html_url = freezed,
    Object? public_repos = freezed,
  }) {
    return _then(_SearchUserModel(
      login: login == freezed
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar_url: avatar_url == freezed
          ? _value.avatar_url
          : avatar_url // ignore: cast_nullable_to_non_nullable
              as String?,
      html_url: html_url == freezed
          ? _value.html_url
          : html_url // ignore: cast_nullable_to_non_nullable
              as String?,
      public_repos: public_repos == freezed
          ? _value.public_repos
          : public_repos // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SearchUserModel implements _SearchUserModel {
  _$_SearchUserModel(
      {required this.login,
      required this.name,
      required this.avatar_url,
      required this.html_url,
      required this.public_repos});

  factory _$_SearchUserModel.fromJson(Map<String, dynamic> json) =>
      _$$_SearchUserModelFromJson(json);

  @override
  final String? login;
  @override
  final String? name;
  @override
  final String? avatar_url;
  @override
  final String? html_url;
  @override
  final int? public_repos;

  @JsonKey(ignore: true)
  @override
  _$SearchUserModelCopyWith<_SearchUserModel> get copyWith =>
      __$SearchUserModelCopyWithImpl<_SearchUserModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SearchUserModelToJson(this);
  }
  
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
  
  @override
  // TODO: implement stringify
  bool? get stringify => throw UnimplementedError();
}

abstract class _SearchUserModel implements SearchUserModel {
  factory _SearchUserModel(
      {required String? login,
      required String? name,
      required String? avatar_url,
      required String? html_url,
      required int? public_repos}) = _$_SearchUserModel;

  factory _SearchUserModel.fromJson(Map<String, dynamic> json) =
      _$_SearchUserModel.fromJson;

  @override
  String? get login;
  @override
  String? get name;
  @override
  String? get avatar_url;
  @override
  String? get html_url;
  @override
  int? get public_repos;
  @override
  @JsonKey(ignore: true)
  _$SearchUserModelCopyWith<_SearchUserModel> get copyWith =>
      throw _privateConstructorUsedError;
}
