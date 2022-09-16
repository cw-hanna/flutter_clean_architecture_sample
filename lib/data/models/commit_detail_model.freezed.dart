// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'commit_detail_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CommitDetailModel _$CommitDetailModelFromJson(Map<String, dynamic> json) {
  return _CommitDetailModel.fromJson(json);
}

/// @nodoc
class _$CommitDetailModelTearOff {
  const _$CommitDetailModelTearOff();

  _CommitDetailModel call(
      {required Commit? commit,
      required String? url,
      required String? html_url}) {
    return _CommitDetailModel(
      commit: commit,
      url: url,
      html_url: html_url,
    );
  }

  CommitDetailModel fromJson(Map<String, Object?> json) {
    return CommitDetailModel.fromJson(json);
  }
}

/// @nodoc
const $CommitDetailModel = _$CommitDetailModelTearOff();

/// @nodoc
mixin _$CommitDetailModel {
  Commit? get commit => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;
  String? get html_url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommitDetailModelCopyWith<CommitDetailModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommitDetailModelCopyWith<$Res> {
  factory $CommitDetailModelCopyWith(
          CommitDetailModel value, $Res Function(CommitDetailModel) then) =
      _$CommitDetailModelCopyWithImpl<$Res>;
  $Res call({Commit? commit, String? url, String? html_url});

  $CommitCopyWith<$Res>? get commit;
}

/// @nodoc
class _$CommitDetailModelCopyWithImpl<$Res>
    implements $CommitDetailModelCopyWith<$Res> {
  _$CommitDetailModelCopyWithImpl(this._value, this._then);

  final CommitDetailModel _value;
  // ignore: unused_field
  final $Res Function(CommitDetailModel) _then;

  @override
  $Res call({
    Object? commit = freezed,
    Object? url = freezed,
    Object? html_url = freezed,
  }) {
    return _then(_value.copyWith(
      commit: commit == freezed
          ? _value.commit
          : commit // ignore: cast_nullable_to_non_nullable
              as Commit?,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      html_url: html_url == freezed
          ? _value.html_url
          : html_url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  @override
  $CommitCopyWith<$Res>? get commit {
    if (_value.commit == null) {
      return null;
    }

    return $CommitCopyWith<$Res>(_value.commit!, (value) {
      return _then(_value.copyWith(commit: value));
    });
  }
}

/// @nodoc
abstract class _$CommitDetailModelCopyWith<$Res>
    implements $CommitDetailModelCopyWith<$Res> {
  factory _$CommitDetailModelCopyWith(
          _CommitDetailModel value, $Res Function(_CommitDetailModel) then) =
      __$CommitDetailModelCopyWithImpl<$Res>;
  @override
  $Res call({Commit? commit, String? url, String? html_url});

  @override
  $CommitCopyWith<$Res>? get commit;
}

/// @nodoc
class __$CommitDetailModelCopyWithImpl<$Res>
    extends _$CommitDetailModelCopyWithImpl<$Res>
    implements _$CommitDetailModelCopyWith<$Res> {
  __$CommitDetailModelCopyWithImpl(
      _CommitDetailModel _value, $Res Function(_CommitDetailModel) _then)
      : super(_value, (v) => _then(v as _CommitDetailModel));

  @override
  _CommitDetailModel get _value => super._value as _CommitDetailModel;

  @override
  $Res call({
    Object? commit = freezed,
    Object? url = freezed,
    Object? html_url = freezed,
  }) {
    return _then(_CommitDetailModel(
      commit: commit == freezed
          ? _value.commit
          : commit // ignore: cast_nullable_to_non_nullable
              as Commit?,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      html_url: html_url == freezed
          ? _value.html_url
          : html_url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CommitDetailModel implements _CommitDetailModel {
  _$_CommitDetailModel(
      {required this.commit, required this.url, required this.html_url});

  factory _$_CommitDetailModel.fromJson(Map<String, dynamic> json) =>
      _$$_CommitDetailModelFromJson(json);

  @override
  final Commit? commit;
  @override
  final String? url;
  @override
  final String? html_url;

  @JsonKey(ignore: true)
  @override
  _$CommitDetailModelCopyWith<_CommitDetailModel> get copyWith =>
      __$CommitDetailModelCopyWithImpl<_CommitDetailModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CommitDetailModelToJson(this);
  }
  
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
  
  @override
  // TODO: implement stringify
  bool? get stringify => throw UnimplementedError();
}

abstract class _CommitDetailModel implements CommitDetailModel {
  factory _CommitDetailModel(
      {required Commit? commit,
      required String? url,
      required String? html_url}) = _$_CommitDetailModel;

  factory _CommitDetailModel.fromJson(Map<String, dynamic> json) =
      _$_CommitDetailModel.fromJson;

  @override
  Commit? get commit;
  @override
  String? get url;
  @override
  String? get html_url;
  @override
  @JsonKey(ignore: true)
  _$CommitDetailModelCopyWith<_CommitDetailModel> get copyWith =>
      throw _privateConstructorUsedError;
}
