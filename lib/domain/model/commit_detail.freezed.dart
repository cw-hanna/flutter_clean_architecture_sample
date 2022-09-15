// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'commit_detail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CommitDetail _$CommitDetailFromJson(Map<String, dynamic> json) {
  return _CommitDetail.fromJson(json);
}

/// @nodoc
class _$CommitDetailTearOff {
  const _$CommitDetailTearOff();

  _CommitDetail call(
      {required Commit? commit,
      required String? url,
      required String? html_url}) {
    return _CommitDetail(
      commit: commit,
      url: url,
      html_url: html_url,
    );
  }

  CommitDetail fromJson(Map<String, Object?> json) {
    return CommitDetail.fromJson(json);
  }
}

/// @nodoc
const $CommitDetail = _$CommitDetailTearOff();

/// @nodoc
mixin _$CommitDetail {
  Commit? get commit => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;
  String? get html_url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommitDetailCopyWith<CommitDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommitDetailCopyWith<$Res> {
  factory $CommitDetailCopyWith(
          CommitDetail value, $Res Function(CommitDetail) then) =
      _$CommitDetailCopyWithImpl<$Res>;
  $Res call({Commit? commit, String? url, String? html_url});

  $CommitCopyWith<$Res>? get commit;
}

/// @nodoc
class _$CommitDetailCopyWithImpl<$Res> implements $CommitDetailCopyWith<$Res> {
  _$CommitDetailCopyWithImpl(this._value, this._then);

  final CommitDetail _value;
  // ignore: unused_field
  final $Res Function(CommitDetail) _then;

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
abstract class _$CommitDetailCopyWith<$Res>
    implements $CommitDetailCopyWith<$Res> {
  factory _$CommitDetailCopyWith(
          _CommitDetail value, $Res Function(_CommitDetail) then) =
      __$CommitDetailCopyWithImpl<$Res>;
  @override
  $Res call({Commit? commit, String? url, String? html_url});

  @override
  $CommitCopyWith<$Res>? get commit;
}

/// @nodoc
class __$CommitDetailCopyWithImpl<$Res> extends _$CommitDetailCopyWithImpl<$Res>
    implements _$CommitDetailCopyWith<$Res> {
  __$CommitDetailCopyWithImpl(
      _CommitDetail _value, $Res Function(_CommitDetail) _then)
      : super(_value, (v) => _then(v as _CommitDetail));

  @override
  _CommitDetail get _value => super._value as _CommitDetail;

  @override
  $Res call({
    Object? commit = freezed,
    Object? url = freezed,
    Object? html_url = freezed,
  }) {
    return _then(_CommitDetail(
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
class _$_CommitDetail implements _CommitDetail {
  _$_CommitDetail(
      {required this.commit, required this.url, required this.html_url});

  factory _$_CommitDetail.fromJson(Map<String, dynamic> json) =>
      _$$_CommitDetailFromJson(json);

  @override
  final Commit? commit;
  @override
  final String? url;
  @override
  final String? html_url;

  @override
  String toString() {
    return 'CommitDetail(commit: $commit, url: $url, html_url: $html_url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CommitDetail &&
            const DeepCollectionEquality().equals(other.commit, commit) &&
            const DeepCollectionEquality().equals(other.url, url) &&
            const DeepCollectionEquality().equals(other.html_url, html_url));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(commit),
      const DeepCollectionEquality().hash(url),
      const DeepCollectionEquality().hash(html_url));

  @JsonKey(ignore: true)
  @override
  _$CommitDetailCopyWith<_CommitDetail> get copyWith =>
      __$CommitDetailCopyWithImpl<_CommitDetail>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CommitDetailToJson(this);
  }
}

abstract class _CommitDetail implements CommitDetail {
  factory _CommitDetail(
      {required Commit? commit,
      required String? url,
      required String? html_url}) = _$_CommitDetail;

  factory _CommitDetail.fromJson(Map<String, dynamic> json) =
      _$_CommitDetail.fromJson;

  @override
  Commit? get commit;
  @override
  String? get url;
  @override
  String? get html_url;
  @override
  @JsonKey(ignore: true)
  _$CommitDetailCopyWith<_CommitDetail> get copyWith =>
      throw _privateConstructorUsedError;
}
